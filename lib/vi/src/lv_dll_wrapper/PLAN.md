# lv_dll_wrapper 开发计划

## 目标

`lv_dll_wrapper` 是一个 LabVIEW Class，帮助开发者将任意 VI 快速封装为 `lv_dll_runner` 能够加载的 DLL 导出函数结构，而无需手动配置 Shared Library Build Spec 参数和签名。

---

## 背景：lv_dll_runner 支持的四种函数签名

| Mode | C Signature |
|------|-------------|
| Default | `long __cdecl func(char* msg_buf, long* len)` |
| Input | `long __cdecl func(char* input, char* msg_buf, long* len)` |
| Output | `long __cdecl func(char* msg_buf, char* result_buf, long* len, long* result_len)` |
| Input+Output | `long __cdecl func(char* input, char* msg_buf, char* result_buf, long* len, long* result_len)` |

缓冲区大小固定为 4096 字节，`msg_buf` 用于状态消息，`result_buf` 用于业务输出。

---

## 模块结构

```
lv_dll_wrapper/
├── lv_dll_wrapper.lvclass        # 主 Class（已建立）
├── lv_dll_wrapper.lvproj         # 项目文件（已建立）
│
├── VIs/                          # Class 方法 VIs（待开发）
│   ├── Wrap Default.vi           # 封装 Default 模式
│   ├── Wrap Input.vi             # 封装 Input 模式
│   ├── Wrap Output.vi            # 封装 Output 模式
│   └── Wrap Input Output.vi      # 封装 Input+Output 模式
│
└── template/                     # 导出 VI 模板（待开发）
    ├── Template Default.vi
    ├── Template Input.vi
    ├── Template Output.vi
    └── Template Input Output.vi
```

---

## 开发步骤

### Step 1 — 设计 Class 数据成员（Data.ctl）

在 `lv_dll_wrapper.lvclass` 中添加以下私有数据：

| 字段 | 类型 | 说明 |
|------|------|------|
| `vi_ref` | VI Refnum | 被封装的目标 VI |
| `mode` | Enum (U8) | Default / Input / Output / InputOutput |
| `export_name` | String | 导出函数名称（默认取 VI 名） |
| `msg_buf_size` | I32 | msg_buf 大小（默认 4096） |
| `result_buf_size` | I32 | result_buf 大小（默认 4096） |

### Step 2 — 实现四个 Template VIs

每个 Template VI 对应一种签名，它们是实际被编译进 DLL 的 VI。连接器模式：

- 连接器端口布局严格按照 lv_dll_runner 期望的签名
- 调用内部的用户 VI（通过 VI Server Call By Reference 或静态调用）
- 负责 buf 写入：将返回值写入 `msg_buf`，将业务结果写入 `result_buf`
- 错误处理：将 LabVIEW error cluster 通过 `Parse Error.vi`（来自 stdio_labview）格式化后写入 `msg_buf`，返回非零值

**Template Default VI 连接器：**
```
Inputs:  (none)
Outputs: msg_buf (CStr Array, output, array pointer)
         len (Long, pointer)
Return:  Long (cdecl)
```

**Template Input VI 连接器：**
```
Inputs:  input (CStr Array, input, array pointer)
Outputs: msg_buf (CStr Array, output, array pointer)
         len (Long, pointer)
Return:  Long (cdecl)
```

**Template Output VI 连接器：**
```
Inputs:  (none)
Outputs: msg_buf (CStr Array, output, array pointer)
         result_buf (CStr Array, output, array pointer)
         len (Long, pointer)
         result_len (Long, pointer)
Return:  Long (cdecl)
```

**Template Input+Output VI 连接器：**
```
Inputs:  input (CStr Array, input, array pointer)
Outputs: msg_buf (CStr Array, output, array pointer)
         result_buf (CStr Array, output, array pointer)
         len (Long, pointer)
         result_len (Long, pointer)
Return:  Long (cdecl)
```

> 参考现有 example VIs（`lib/vi/example/stdio_labview/`）的连接器配置。

### Step 3 — 实现 Wrap 方法 VIs

每个 `Wrap *.vi` 做以下事情：
1. 接收用户传入的目标 VI Refnum 和配置参数
2. 将参数写入 Class 数据
3. 返回配置好的 `lv_dll_wrapper` 对象

这是一组 Builder 模式的 API，最终对象交给 Step 4 使用。

### Step 4 — 实现 Build Spec 自动配置 VI（可选，难度高）

通过 VI Server 自动在目标 `.lvproj` 中创建或修改 Shared Library Build Spec：
- 设置导出函数名（`export_name`）
- 指定连接器参数（按 mode 选择对应参数表）
- 设置输出路径

> ⚠️ 此步骤依赖 NI 未完全文档化的 Build Spec 属性节点，可能存在版本兼容问题。如实现困难，可跳过，改为提供《Build Spec 配置指南》文档（见 Step 5）。

### Step 5 — 提供 Build Spec 配置指南

在 `PLAN.md` 同目录下新建 `BUILD_SPEC_GUIDE.md`，说明：
- 如何手动为每种 mode 配置 Shared Library Build Spec
- 连接器参数的完整配置（对照 example.h 的四种签名）
- 推荐的输出路径约定：`builds/<project_name>/export_lv2026/` 和 `export_lv82/`

---

## 与现有模块的依赖关系

| 依赖 | 用途 |
|------|------|
| `stdio_labview/Parse Error.vi` | 在 Template VIs 中将 error cluster 转为 msg_buf 字符串 |
| `stdio_labview/STD write.vi` | （可选）Template VIs 中自由写 stdout/stderr |
| `stdio_labview/stdio_labview.lvlib` | 上述两个 VI 所在的 library |

在 `lv_dll_wrapper.lvproj` 中添加 `stdio_labview.lvlib` 的依赖引用。

---

## 验收标准

- [ ] 用 `Wrap Default.vi` 封装一个最简单的 VI（只返回 "OK"），能成功编译为 DLL
- [ ] 用 `lv_dll_runner_64.exe` 调用该 DLL，退出码为 0，stdout 含预期消息
- [ ] 测试通过：`lib\vi\tests\stdio_labview\test_lv2026.bat` 仍然 4 passed 0 failed

---

## 当前状态

- [x] `lv_dll_wrapper.lvclass` 骨架已建立
- [x] `lv_dll_wrapper.lvproj` 已建立
- [ ] Data.ctl 数据成员（Step 1）
- [ ] Template VIs（Step 2）
- [ ] Wrap 方法 VIs（Step 3）
- [ ] Build Spec 自动配置（Step 4，可选）
- [ ] Build Spec 配置指南（Step 5）

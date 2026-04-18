<?xml version='1.0'?>
<Project Type="Project" LVVersion="8208000">
   <Item Name="My Computer" Type="My Computer">
      <Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
      <Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
      <Property Name="server.tcp.enabled" Type="Bool">false</Property>
      <Property Name="server.tcp.port" Type="Int">0</Property>
      <Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
      <Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
      <Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
      <Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
      <Property Name="specify.custom.address" Type="Bool">false</Property>
      <Item Name="Event.vi" Type="VI" URL="Event.vi"/>
      <Item Name="Dependencies" Type="Dependencies"/>
      <Item Name="Build Specifications" Type="Build">
         <Item Name="export_lv82" Type="DLL">
            <Property Name=".NET" Type="Bool">false</Property>
            <Property Name="Absolute[0]" Type="Bool">false</Property>
            <Property Name="Absolute[1]" Type="Bool">false</Property>
            <Property Name="Absolute[2]" Type="Bool">false</Property>
            <Property Name="AliasID" Type="Str">{DF00BC7F-2CB5-40AB-8127-A9D351FD2D77}</Property>
            <Property Name="AliasName" Type="Str">Project.aliases</Property>
            <Property Name="AutoIncrement" Type="Bool">false</Property>
            <Property Name="BuildName" Type="Str">export_lv82</Property>
            <Property Name="CopyErrors" Type="Bool">false</Property>
            <Property Name="DebuggingDLL" Type="Bool">false</Property>
            <Property Name="DebugServerWaitOnLaunch" Type="Bool">true</Property>
            <Property Name="DefaultLanguage" Type="Str">English</Property>
            <Property Name="DelayOSMsg" Type="Bool">true</Property>
            <Property Name="DependencyApplyDestination" Type="Bool">true</Property>
            <Property Name="DependencyApplyInclusion" Type="Bool">true</Property>
            <Property Name="DependencyApplyProperties" Type="Bool">true</Property>
            <Property Name="DependencyFolderDestination" Type="Int">0</Property>
            <Property Name="DependencyFolderInclusion" Type="Str">As Needed</Property>
            <Property Name="DependencyFolderPropertiesItemCount" Type="Int">0</Property>
            <Property Name="DestinationID[0]" Type="Str">{396029E5-8E80-4608-93C3-B15E93D20591}</Property>
            <Property Name="DestinationID[1]" Type="Str">{396029E5-8E80-4608-93C3-B15E93D20591}</Property>
            <Property Name="DestinationID[2]" Type="Str">{24878DA0-538D-4A90-AE50-752CAB03BE0D}</Property>
            <Property Name="DestinationItemCount" Type="Int">3</Property>
            <Property Name="DestinationName[0]" Type="Str">Event.dll</Property>
            <Property Name="DestinationName[1]" Type="Str">Destination Directory</Property>
            <Property Name="DestinationName[2]" Type="Str">Support Directory</Property>
            <Property Name="Disconnect" Type="Bool">true</Property>
            <Property Name="EmbeddedRTE" Type="Bool">false</Property>
            <Property Name="HID" Type="Str">{8FD20FA7-F6F7-4051-9B7B-AB6964CEACC9}</Property>
            <Property Name="IncludeHeaders" Type="Bool">true</Property>
            <Property Name="IncludeHWConfig" Type="Bool">false</Property>
            <Property Name="IncludeSCC" Type="Bool">true</Property>
            <Property Name="INIID" Type="Str">{1AFDDF5F-1524-47F1-9F93-C530D8E210A7}</Property>
            <Property Name="LIBID" Type="Str">{B574731D-5CAE-4BAD-92E9-F5FB2AC51C25}</Property>
            <Property Name="ManagedClassName" Type="Str"></Property>
            <Property Name="ManagedClassNamespace" Type="Str"></Property>
            <Property Name="MathScript" Type="Bool">false</Property>
            <Property Name="Path[0]" Type="Path">../../builds/Event/export_lv82/internal.llb</Property>
            <Property Name="Path[1]" Type="Path">../../builds/Event/export_lv82</Property>
            <Property Name="Path[2]" Type="Path">../../builds/Event/export_lv82/data</Property>
            <Property Name="SharedLibraryID" Type="Str">{AE5C8FE2-1D20-425E-ACD3-3A137B4F0152}</Property>
            <Property Name="SharedLibraryName" Type="Str">Event.dll</Property>
            <Property Name="ShowHWConfig" Type="Bool">false</Property>
            <Property Name="SourceInfoItemCount" Type="Int">1</Property>
            <Property Name="SourceItem[0].Inclusion" Type="Str">Exported VI</Property>
            <Property Name="SourceItem[0].ItemID" Type="Ref">/My Computer/Event.vi</Property>
            <Property Name="SourceItem[0].VIProtoInfo[0]VIProtoDir" Type="Int">1</Property>
            <Property Name="SourceItem[0].VIProtoInfo[0]VIProtoInputIdx" Type="Int">-1</Property>
            <Property Name="SourceItem[0].VIProtoInfo[0]VIProtoLenInput" Type="Int">-1</Property>
            <Property Name="SourceItem[0].VIProtoInfo[0]VIProtoLenOutput" Type="Int">-1</Property>
            <Property Name="SourceItem[0].VIProtoInfo[0]VIProtoName" Type="Str">return value</Property>
            <Property Name="SourceItem[0].VIProtoInfo[0]VIProtoOutputIdx" Type="Int">3</Property>
            <Property Name="SourceItem[0].VIProtoInfo[0]VIProtoPassBy" Type="Int">1</Property>
            <Property Name="SourceItem[0].VIProtoInfo[1]VIProtoDir" Type="Int">1</Property>
            <Property Name="SourceItem[0].VIProtoInfo[1]VIProtoInputIdx" Type="Int">-1</Property>
            <Property Name="SourceItem[0].VIProtoInfo[1]VIProtoLenInput" Type="Int">2</Property>
            <Property Name="SourceItem[0].VIProtoInfo[1]VIProtoLenOutput" Type="Int">2</Property>
            <Property Name="SourceItem[0].VIProtoInfo[1]VIProtoName" Type="Str">Message</Property>
            <Property Name="SourceItem[0].VIProtoInfo[1]VIProtoOutputIdx" Type="Int">2</Property>
            <Property Name="SourceItem[0].VIProtoInfo[1]VIProtoPassBy" Type="Int">1</Property>
            <Property Name="SourceItem[0].VIProtoInfo[2]CallingConv" Type="Int">1</Property>
            <Property Name="SourceItem[0].VIProtoInfo[2]Name" Type="Str">Event</Property>
            <Property Name="SourceItem[0].VIProtoInfo[2]VIProtoDir" Type="Int">3</Property>
            <Property Name="SourceItem[0].VIProtoInfo[2]VIProtoInputIdx" Type="Int">-1</Property>
            <Property Name="SourceItem[0].VIProtoInfo[2]VIProtoLenInput" Type="Int">-1</Property>
            <Property Name="SourceItem[0].VIProtoInfo[2]VIProtoLenOutput" Type="Int">-1</Property>
            <Property Name="SourceItem[0].VIProtoInfo[2]VIProtoName" Type="Str">len</Property>
            <Property Name="SourceItem[0].VIProtoInfo[2]VIProtoOutputIdx" Type="Int">-1</Property>
            <Property Name="SourceItem[0].VIProtoInfo[2]VIProtoPassBy" Type="Int">0</Property>
            <Property Name="SourceItem[0].VIProtoInfoCPTM" Type="Bin">###!!A!!!!1!"!!!!""!-0````](476T=W&amp;H:1!-1!-'5X2B&gt;(6T!!!]!0!!$!!!!!!!!1!#!!!!!!!!!!!!!!!!!!!!!!-!!(A!!!!!#1!*!!!!!!!!!!!!!!!!!!!!!!!!!!!"!!-</Property>
            <Property Name="SourceItem[0].VIProtoInfoVIProtoItemCount" Type="Int">3</Property>
            <Property Name="StripLib" Type="Bool">true</Property>
            <Property Name="SupportedLanguageCount" Type="Int">0</Property>
            <Property Name="UseFFRTE" Type="Bool">false</Property>
            <Property Name="VersionInfoCompanyName" Type="Str"></Property>
            <Property Name="VersionInfoFileDescription" Type="Str"></Property>
            <Property Name="VersionInfoFileType" Type="Int">2</Property>
            <Property Name="VersionInfoFileVersionBuild" Type="Int">0</Property>
            <Property Name="VersionInfoFileVersionMajor" Type="Int">1</Property>
            <Property Name="VersionInfoFileVersionMinor" Type="Int">0</Property>
            <Property Name="VersionInfoFileVersionPatch" Type="Int">0</Property>
            <Property Name="VersionInfoInternalName" Type="Str">My DLL</Property>
            <Property Name="VersionInfoLegalCopyright" Type="Str">Copyright © 2026 </Property>
            <Property Name="VersionInfoProductName" Type="Str">My DLL</Property>
         </Item>
         <Item Name="export_lv2026" Type="DLL">
            <Property Name=".NET" Type="Bool">false</Property>
            <Property Name="Absolute[0]" Type="Bool">false</Property>
            <Property Name="Absolute[1]" Type="Bool">false</Property>
            <Property Name="Absolute[2]" Type="Bool">false</Property>
            <Property Name="AliasID" Type="Str">{167FE782-D13E-4502-8A11-D2F3F903DC7C}</Property>
            <Property Name="AliasName" Type="Str">Project.aliases</Property>
            <Property Name="AutoIncrement" Type="Bool">false</Property>
            <Property Name="BuildName" Type="Str">export_lv2026</Property>
            <Property Name="CopyErrors" Type="Bool">false</Property>
            <Property Name="DebuggingDLL" Type="Bool">false</Property>
            <Property Name="DebugServerWaitOnLaunch" Type="Bool">true</Property>
            <Property Name="DefaultLanguage" Type="Str">English</Property>
            <Property Name="DelayOSMsg" Type="Bool">true</Property>
            <Property Name="DependencyApplyDestination" Type="Bool">true</Property>
            <Property Name="DependencyApplyInclusion" Type="Bool">true</Property>
            <Property Name="DependencyApplyProperties" Type="Bool">true</Property>
            <Property Name="DependencyFolderDestination" Type="Int">0</Property>
            <Property Name="DependencyFolderInclusion" Type="Str">As Needed</Property>
            <Property Name="DependencyFolderPropertiesItemCount" Type="Int">0</Property>
            <Property Name="DestinationID[0]" Type="Str">{3D908380-ECAF-4BE2-AE48-15643BE58A12}</Property>
            <Property Name="DestinationID[1]" Type="Str">{3D908380-ECAF-4BE2-AE48-15643BE58A12}</Property>
            <Property Name="DestinationID[2]" Type="Str">{13FB3A70-96C6-4499-A6E1-24599D1ECBEB}</Property>
            <Property Name="DestinationItemCount" Type="Int">3</Property>
            <Property Name="DestinationName[0]" Type="Str">Event.dll</Property>
            <Property Name="DestinationName[1]" Type="Str">Destination Directory</Property>
            <Property Name="DestinationName[2]" Type="Str">Support Directory</Property>
            <Property Name="Disconnect" Type="Bool">true</Property>
            <Property Name="EmbeddedRTE" Type="Bool">false</Property>
            <Property Name="HID" Type="Str">{E72FB992-C223-47F8-9F86-52B4F9C38BF7}</Property>
            <Property Name="IncludeHeaders" Type="Bool">true</Property>
            <Property Name="IncludeHWConfig" Type="Bool">false</Property>
            <Property Name="IncludeSCC" Type="Bool">true</Property>
            <Property Name="INIID" Type="Str">{92CDBBB9-085D-470E-AC73-D35B40B67980}</Property>
            <Property Name="LIBID" Type="Str">{B59ACB38-7CFA-4C82-BBC4-714EAE0DF97B}</Property>
            <Property Name="ManagedClassName" Type="Str"></Property>
            <Property Name="ManagedClassNamespace" Type="Str"></Property>
            <Property Name="MathScript" Type="Bool">false</Property>
            <Property Name="Path[0]" Type="Path">../../builds/Event/export_lv2026/internal.llb</Property>
            <Property Name="Path[1]" Type="Path">../../builds/Event/export_lv2026</Property>
            <Property Name="Path[2]" Type="Path">../../builds/Event/export_lv2026/data</Property>
            <Property Name="SharedLibraryID" Type="Str">{FD0F48EA-95A4-4ED7-AC5B-6445898000DA}</Property>
            <Property Name="SharedLibraryName" Type="Str">Event.dll</Property>
            <Property Name="ShowHWConfig" Type="Bool">false</Property>
            <Property Name="SourceInfoItemCount" Type="Int">1</Property>
            <Property Name="SourceItem[0].Inclusion" Type="Str">Exported VI</Property>
            <Property Name="SourceItem[0].ItemID" Type="Ref">/My Computer/Event.vi</Property>
            <Property Name="SourceItem[0].VIProtoInfo[0]VIProtoDir" Type="Int">1</Property>
            <Property Name="SourceItem[0].VIProtoInfo[0]VIProtoInputIdx" Type="Int">-1</Property>
            <Property Name="SourceItem[0].VIProtoInfo[0]VIProtoLenInput" Type="Int">-1</Property>
            <Property Name="SourceItem[0].VIProtoInfo[0]VIProtoLenOutput" Type="Int">-1</Property>
            <Property Name="SourceItem[0].VIProtoInfo[0]VIProtoName" Type="Str">return value</Property>
            <Property Name="SourceItem[0].VIProtoInfo[0]VIProtoOutputIdx" Type="Int">3</Property>
            <Property Name="SourceItem[0].VIProtoInfo[0]VIProtoPassBy" Type="Int">1</Property>
            <Property Name="SourceItem[0].VIProtoInfo[1]VIProtoDir" Type="Int">1</Property>
            <Property Name="SourceItem[0].VIProtoInfo[1]VIProtoInputIdx" Type="Int">-1</Property>
            <Property Name="SourceItem[0].VIProtoInfo[1]VIProtoLenInput" Type="Int">2</Property>
            <Property Name="SourceItem[0].VIProtoInfo[1]VIProtoLenOutput" Type="Int">2</Property>
            <Property Name="SourceItem[0].VIProtoInfo[1]VIProtoName" Type="Str">Message</Property>
            <Property Name="SourceItem[0].VIProtoInfo[1]VIProtoOutputIdx" Type="Int">2</Property>
            <Property Name="SourceItem[0].VIProtoInfo[1]VIProtoPassBy" Type="Int">1</Property>
            <Property Name="SourceItem[0].VIProtoInfo[2]CallingConv" Type="Int">1</Property>
            <Property Name="SourceItem[0].VIProtoInfo[2]Name" Type="Str">Event</Property>
            <Property Name="SourceItem[0].VIProtoInfo[2]VIProtoDir" Type="Int">3</Property>
            <Property Name="SourceItem[0].VIProtoInfo[2]VIProtoInputIdx" Type="Int">-1</Property>
            <Property Name="SourceItem[0].VIProtoInfo[2]VIProtoLenInput" Type="Int">-1</Property>
            <Property Name="SourceItem[0].VIProtoInfo[2]VIProtoLenOutput" Type="Int">-1</Property>
            <Property Name="SourceItem[0].VIProtoInfo[2]VIProtoName" Type="Str">len</Property>
            <Property Name="SourceItem[0].VIProtoInfo[2]VIProtoOutputIdx" Type="Int">-1</Property>
            <Property Name="SourceItem[0].VIProtoInfo[2]VIProtoPassBy" Type="Int">0</Property>
            <Property Name="SourceItem[0].VIProtoInfoCPTM" Type="Bin">###!!A!!!!1!"!!!!""!-0````](476T=W&amp;H:1!-1!-'5X2B&gt;(6T!!!]!0!!$!!!!!!!!1!#!!!!!!!!!!!!!!!!!!!!!!-!!(A!!!!!#1!*!!!!!!!!!!!!!!!!!!!!!!!!!!!"!!-</Property>
            <Property Name="SourceItem[0].VIProtoInfoVIProtoItemCount" Type="Int">3</Property>
            <Property Name="StripLib" Type="Bool">true</Property>
            <Property Name="SupportedLanguageCount" Type="Int">0</Property>
            <Property Name="UseFFRTE" Type="Bool">false</Property>
            <Property Name="VersionInfoCompanyName" Type="Str"></Property>
            <Property Name="VersionInfoFileDescription" Type="Str"></Property>
            <Property Name="VersionInfoFileType" Type="Int">2</Property>
            <Property Name="VersionInfoFileVersionBuild" Type="Int">0</Property>
            <Property Name="VersionInfoFileVersionMajor" Type="Int">1</Property>
            <Property Name="VersionInfoFileVersionMinor" Type="Int">0</Property>
            <Property Name="VersionInfoFileVersionPatch" Type="Int">0</Property>
            <Property Name="VersionInfoInternalName" Type="Str">My DLL</Property>
            <Property Name="VersionInfoLegalCopyright" Type="Str">Copyright © 2026 </Property>
            <Property Name="VersionInfoProductName" Type="Str">My DLL</Property>
         </Item>
      </Item>
   </Item>
</Project>

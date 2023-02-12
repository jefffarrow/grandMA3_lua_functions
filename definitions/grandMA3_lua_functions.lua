---@meta

---@class LuaFileSystem
local lfs = {}

---@alias nothing nothing -- no feedback to MA system monitor
---@alias result result -- MA system monitor restult (Ok, Syntax Error, Illegal Command...)
---@alias handle handle -- MA UID
---@alias double double -- 64-bit floating-point number (C)
---@alias pCertificate pCertificate -- OverallDeviceCertificate
---@alias LuaInteger LuaInteger -- The integer that correlates to an object's handle

--Object-Free API

---@return nothing
function Echo(string) end

---@return nothing
function ErrEcho(string) end

---@return nothing
function Printf(string) end

---@return nothing
function ErrPrintf(string) end

-- command execution result (Ok, Syntax Error, Illegal Command...)
---@return result
---@param cmd_to_execute string
function Cmd(cmd_to_execute) end

--string:cmd_to_execute [,undo [,target]]
---@return nothing
---@param cmd_to_execute string
---@param undo handle
---@param target handle
function CmdIndirect(cmd_to_execute, undo, target) end

--string:cmd_to_execute [,undo [,target]]
---@return nothing
---@param cmd_to_execute string
---@param undo handle
---@param target handle
function CmdIndirectWait(cmd_to_execute, undo, target) end

---@return string:OsType
function HostOS() end

---@return string:HostType
function HostType() end

---@return string:HostSubType
function HostSubType() end

---@return string:SerialNumber
function SerialNumber() end

-- OverallCertificate
---@return pCertificate
function OverallDeviceCertificate() end

---@return boolean: success
---@param ip string
---@param command string
function RemoteCommand(ip, command) end

---@return string:release type
function ReleaseType() end

---@return string:DevMode3d
function DevMode3d() end

---@return string:version
function Version() end

---@return table:build details
function BuildDetails() end

---@return string:showfile status
function GetShowFileStatus() end

---@return table:config details
function ConfigTable() end

---@return handle
function CmdObj() end

---@return handle
function Root() end

---@return handle
function Pult() end

---@return handle
function DefaultDisplayPositions() end

---@return handle
function Patch() end

---@return handle
function FixtureType() end

---@return handle
function ShowData() end

---@return handle
function ShowSettings() end

---@return handle
function DataPool() end

---@return handle
function MasterPool() end

---@return handle
function DeviceConfiguration() end

---@return handle
function Programmer() end

---@return handle
function ProgrammerPart() end

---@return handle
function Selection() end

---@return handle
function CurrentUser() end

---@return handle
function CurrentProfile() end

---@return handle
function CurrentEnvironment() end

---@return handle
function CurrentExecPage() end

---@return handle
function SelectedSequence() end

---@return handle:handle to page
---@param exec_number integer
function GetExecutor(exec_number) end

---@return nothing
---@param exec_handle handle
function LoadExecConfig(exec_handle) end

---@return nothing
---@param exec_handle handle
function SaveExecConfig(exec_handle) end

---@return integer:first subfixture index, integer:x, integer:y, integer:z
function SelectionFirst() end

---@return integer:next subfixture index, integer:x, integer:y, integer:z
---@param current_subfixture_index integer
function SelectionNext(current_subfixture_index) end

---@return integer:amount of selected subfixtures
function SelectionCount() end

---@return integer:integer min, integer:max, integer:index, integer:block, integer:group
function SelectionComponentX() end

---@return integer:integer min, integer:max, integer:index, integer:block, integer:group
function SelectionComponentY() end

---@return integer:integer min, integer:max, integer:index, integer:block, integer:group
function SelectionComponentZ() end

---@return integer:subfixture count
function GetSubfixtureCount() end

---@return handle|nil:reference to Subfixture object or nil
---@param subfixture_index integer
function GetSubfixture(subfixture_index) end

-- ui channel count
---@return integer
function GetUIChannelCount() end

-- rt channel count
---@return integer
function GetRTChannelCount() end

-- attribute count
---@return integer
function GetAttributeCount() end

--{array of UI channel indices or handles} or nil
--subfixture_index or handle: reference to Subfixture object[,boolean: as handles]
---@return table|nil
---@param subfixture_index integer
function GetUIChannels(subfixture_index) end

--{array of RT channel indices or handles} or nil
--fixture_index or handle: reference to Fixture object[,boolean: as handles]
---@return table|nil
---@param fixture_index integer
function GetRTChannels(fixture_index) end

--{ChannelUI descriptor} or nil
---@return table|nil
---@param channel_UI_index integer
function GetUIChannel(channel_UI_index) end

--{ChannelRT descriptor} or nil
---@return table|nil
---@param channel_RT_index integer
function GetRTChannel(channel_RT_index) end

--reference to attribute or nil
---@return handle|nil
---@param UI_channel_index integer
function GetAttributeByUIChannel(UI_channel_index) end

-- attribute index
---@return integer
---@param attribute_name string
function GetAttributeIndex(attribute_name) end

-- ui channel index
---@return integer
---@param subfixture_index integer
---@param attribute_index integer
function GetUIChannelIndex(subfixture_index, attribute_index) end

-- channel
---@return integer
---@param ui_channel_index integer
---@param attribute_index integer
function GetChannelFunctionIndex(ui_channel_index, attribute_index) end

--
---@return handle
---@param ui_channel_index integer
---@param attribute_index integer
function GetChannelFunction(ui_channel_index, attribute_index) end

--attribute handle
---@return handle
function GetSelectedAttribute() end

--fullName
---@return string
---@param shortName string
function GetTokenName(shortName) end

--fullName
---@return string
---@param token_index integer
function GetTokenNameByIndex(token_index) end

--{[fade:<val>][delay:<val>][speed:<Hz>][repeat:<val>][phase:<val>][preset:lud]{[cfindex:<val>][preset:lud][trans:<val>][width:<val>][accel:<val>][decel:<val>][rel:<val>][abs:<val>]}*}
---@return nothing
---@param uichannelindex handle
---@param values_array table
function SetProgPhaser(uichannelindex, values_array) end

--{[cfindex:<val>][preset:lud][trans:<val>][width:<val>][accel:<val>][decel:<val>][rel:<val>][abs:<val>]}
---@return nothing
---@param uichannelindex number
---@param step number
---@param values_array table
function SetProgPhaserValue(uichannelindex, step, values_array) end

--{fade:<val>,delay:<val>,speed:<Hz>,repeat:<val>,phase:<val>,preset:lud,{cfindex:<val>,preset:lud,trans:<val>,width:<val>,accel:<val>,decel:<val>,rel:<val>,abs:<val>}*}
---@return table
---@param uichannelindex number
---@param phaser_only boolean
function GetProgPhaser(uichannelindex, phaser_only) end

--{cfindex:<val>,preset:lud,trans:<val>,width:<val>,accel:<val>,decel:<val>,rel:<val>,abs:<val>}
---@return table
---@param uichannelindex number
---@param step number
function GetProgPhaserValue(uichannelindex, step) end

--colormodel(RGB,xyY,Lab,XYZ,HSB), double:tripel1, double:tripel2, double:tripel3, double: Brightness, double: Quality, boolean: const_Brightness
---@return integer:flag
---@param colormodel string
---@param tripel1 double
---@param tripel2 double
---@param tripel3 double
---@param brightness double
---@param quality double
---@param const_Brightness boolean
function SetColor(colormodel, tripel1, tripel2, tripel3, brightness, quality, const_Brightness) end

--array of phaser data
--handle(Preset)[,phasers only(default: false)[,by fixtures(default: false)]]
---@return table
---@param preset handle
function GetPresetData(preset) end

--flag integer
---@return integer
function ColMeasureDeviceDarkCalibrate() end

--table:values
---@return table
function ColMeasureDeviceDoMeasurement() end

--table of handle
---@return table
---@param address string
function ObjectList(address) end

--string:address [, handle:base handle]
---@return handle
---@param address string
function FromAddr(address) end

--string:address
---@return string
---@param handle handle
function ToAddr(handle) end

--
---@return handle
---@param LuaInteger LuaInteger
function IntToHandle(LuaInteger) end

--
---@return LuaInteger
---@param handle handle
function HandleToInt(handle) end

--string input is handle in H#... format
---@return handle
---@param stringH string
function StrToHandle(stringH) end

--string: handle in H#... format
---@return string
---@param handle handle
function HandleToStr(handle) end

--
---@return true|nil
---@param handle handle
function IsObjectValid(handle) end

--
---@return boolean
---@param filename string
---@param export_data table
function Export(filename, export_data) end

--
---@return table
---@param filename string
function Import(filename) end

--
---@return boolean:success
---@param filename string
---@param export_data table
function ExportJson(filename, export_data) end

--
---@return boolean:success
---@param filename string
---@param export_data table
function ExportCSV(filename, export_data) end

--function:callback, handle, handle:plugin_handle [,handle:target]
---@return nothing
---@param callback function
---@param handle handle
---@param plugin_handle handle
function HookObjectChange(callback, handle, plugin_handle) end

--
---@return nothing
---@param callback function
function Unhook(callback) end

--amount of removed hooks
--function:callback(can be nil), handle to target(can be nil), handle: handle to context (can be nil)
---@return integer
---@param callback function
---@param handle handle
---@param context_handle handle
function UnhookMultiple(callback, handle, context_handle) end

--
---@return nothing
function DumpAllHooks() end

--string:path type | integer as path type from enum 'PathType' [,boolean: create]
---@return string|integer
---@param path_type string
function GetPath(path_type) end

--handle:target object [, integer: content type (Enums.PathContentType)]
---@return string
---@param target_object handle
function GetPathType(target_object) end

-- overriden path
--string:path_type | integer as path type from enum 'PathType', string:path [,boolean: create]
---@return string|integer
---@param path_type string
function GetPathOverrideFor(path_type) end

---
function GetPathSeparator() end

--
---@return boolean
---@param path string
function FileExists(path) end

--
---@return boolean
---@param path string
function CreateDirectoryRecursive(path) end

--
---@return nothing
function SyncFS() end

--table of {name:string, size:integer, time:integer}
---@return table
---@param path string
function DirList(path) end

--
---@return handle
---@param name string
function StartProgress(name) end

--
---@return nothing
---@param handle handle
function StopProgress(handle) end

--
---@return nothing
---@param handle handle
---@param text string
function SetProgressText(handle, text) end

--
---@return nothing
---@param handle handle
---@param range_start integer
---@param range_end integer
function SetProgressRange(handle, range_start, range_end) end

--
---@return nothing
---@param handle handle
---@param value integer
function SetProgress(handle, value) end

--handle [, integer:delta]
---@return nothing
---@param handle handle
function IncProgress(handle) end

--
---@return LuaInteger
---@param handle handle
---@param propertyname string
function GetPropertyColumnId(handle, propertyname) end

--integer: displayIndex, string:type('press','char','release'), (str:char(for type 'char') | str:keycode, boolean:shift, boolean:ctrl, boolean:alt, boolean:numlock)
---@return nothing
---@param displayIndex handle
---@param type string
---@param char string
---@param keycode string
---@param shift boolean
---@param ctrl boolean
---@param alt boolean
---@param numlock boolean
function Keyboard(displayIndex, type, char, keycode, shift, ctrl, alt, numlock) end

--
---@return nothing
---@param displayIndex handle
---@param type string
function Mouse(displayIndex, type) end

--integer: displayIndex, string:type('press','move','release'), integer:touchId, integer:absX, integer:absY
---@return nothing
---@param displayIndex handle
---@param type string
---@param touchId integer
---@param absX integer
---@param absY integer
function Touch(displayIndex, type, touchId, absX, absY) end

-- time
---@return number
function Time() end

-- mouse object handle
---@return handle
function MouseObj() end

-- touch object handle
---@return handle
function TouchObj() end

-- keyboard object handle
---@return handle
function KeyboardObj() end

--function:name, number:delaytime, number:max_count, [function:cleanup], [handle:context object]
---@return nothing
---@param timer_name function
---@param delaytime number
---@param max_count number
function Timer(timer_name, delaytime, max_count) end

--handle:patch, integer:starting address, integer:footprint
-- absolute address
---@return integer
---@param patch handle
---@param starting_address integer
---@param footprint integer
function FindBestDMXPatchAddr(patch, starting_address, footprint) end

--handle:dmx mode, string:dmx address [,integer:count [,integer:breakIndex]]
-- true - no collision, false - collisions
---@return boolean
---@param dmx_mode handle
---@param dmx_address string
function CheckDMXCollision(dmx_mode, dmx_address) end

--integer:FID [,integer:count [,integer:type]]
--  true - no FID collisions, false - collisions
---@return boolean
---@param FID integer
function CheckFIDCollision(FID) end

--integer:address [,integer:universe, boolean: modePercent]
--  dmx value
---@return integer
---@param address integer
function GetDMXValue(address) end

--integer:universe [,boolean: modePercent]
--table of integer: dmx values
---@return table
---@param universe integer
function GetDMXUniverse(universe) end

--
---@return nothing
---@param usb_device_object_handle handle
---@param led_values table
function SetLED(usb_device_object_handle,led_values) end

--
---@return table:of boolean:state
---@param usb_device_object_handle handle
function GetButton(usb_device_object_handle) end

-- handle: handle to undo
---@return handle
---@param undo_text handle
function CreateUndo(undo_text) end

--  true if was closed, false - if it's still in use
---@return boolean
---@param handle_to_undo handle
function CloseUndo(handle_to_undo) end

--  true if desk is locked
---@return boolean
function DeskLocked() end

---@return nothing
---@param handle handle
function RefreshLibrary(handle) end

---@return nothing
---@param associated_context handle
function SelectionNotifyBegin(associated_context) end

---@return nothing
---@param object_to_notify_about handle
function SelectionNotifyObject(object_to_notify_about) end

---@return nothing
---@param associated_context handle
function SelectionNotifyEnd(associated_context) end

--{array_of_fixture_handles}, integer: count[, string: undo text]
---@return integer:amount of multi-patch fixtures created
---@param array_of_fixture_handles table
---@param count integer
function CreateMultiPatch(array_of_fixture_handles, count) end

--  global variables
---@return handle
function GlobalVars() end

--user variables
---@return handle
function UserVars() end

-- [string: plugin name]
--  plugin variables
---@return handle
---@param plugin_name string
function PluginVars(plugin_name) end

--  addon variables
---@return handle
---@param addon_name string
function AddonVars(addon_name) end

-- success
---@return boolean
---@param variables handle
---@param varname string
---@param value string
function SetVar(variables, varname, value) end

--
---@return string|number
---@param variables handle
---@param varname string
function GetVar(variables, varname) end

-- success
---@return boolean
---@param variables handle
---@param varname string
function DelVar(variables, varname) end

--  api content
---@return table
function GetApiDescriptor() end

--  api content
---@return table
function GetObjApiDescriptor() end

---@return number:fps
function GetDebugFPS() end

--string: type ('MEMORY', 'CPU', 'CPUTEMP', 'GPUTEMP', 'SYSTEMP', 'FANRPM')
---@return number:current value in percent
---@param type string
function GetSample(type) end

--{mode:handle to DMX mode, amount:integer [,undo: string][,parent: handle][,insert_index:integer][,idtype:string][,cid:string][,fid:string][,name:string][,layer:string][,class:string][,patch:{array 1..8: string address}]}
--true on success or nil
---@return true|nil
---@param mode handle
---@param amount integer
function AddFixtures(mode, amount) end

--[string:title [, string:value [, integer:x [, integer:y]]]]
---@return string:value
---@param title string
function TextInput(title) end

-- pass arguments as array
---@return string:value
---@param title string
---@param caller handle
---@param items table:{{'str'|'integer'|'lua'|'handle', name, type-dependent}...}
---@param selectedValue string
---@param x integer
---@param y integer
---@param target handle
---@param render_options table:{left_icon,number,right_icon}
---@param useTopLeft boolean
---@param properties table:{prop:value}
---@param add_args table:{FilterSupport='Yes'/'No'}
function PopupInput(title, caller, items, selectedValue, x, y, target, render_options, useTopLeft, properties, add_args) end

--[string:title [,string:message [,integer:displayIndex [,boolean:showCancel]]]]
---@return boolean:result
---@param title string
function Confirm(title) end

-- display_handle
---@return handle
---@param display_index integer
function GetDisplayByIndex(display_index) end

-- wingID, boolean:isExtension
---@return integer
function GetRemoteVideoInfo() end

--handle to UI object or nil
--integer:display_index, {x,y}:position
---@return handle|nil
---@param display_index integer
---@param position table
function GetUIObjectAtPosition(display_index, position) end

-- true on success, nil on timeout
--handle_to_UIObject[, number:seconds to wait]
---@return true|nil
---@param handle_to_UIObject handle
function WaitObjectDelete(handle_to_UIObject) end

-- display_handle
---@return handle
function GetFocus() end

-- display_handle
---@return handle
function GetFocusDisplay() end

--handle to DisplayCollect
---@return handle
function GetDisplayCollect() end

--
---@return nothing
---@param handle handle
function FindBestFocus(handle) end

--[boolean:backwards(false)[,integer(Focus:Reason), returnreason(UserTabKey)]]
---@return nothing
function FindNextFocus() end

--
---@return nothing
function CloseAllOverlays() end

--  handle to top modal overlay
---@return handle
function GetTopModal() end

--  handle to top overlay on the display
---@return handle
---@param display_index integer
function GetTopOverlay(display_index) end

--handle to modal overlay or nil on failure(timeout)
---@return handle 
---@param seconds_to_wait number
function WaitModal(seconds_to_wait) end

--boolean:block
---@return nothing
function SetBlockInput() end

--
---@return handle: handle to texture found
---@param texture_name string
function FindTexture(texture_name) end

--{success:boolean, result:integer, inputs:{array of [name:string] = value:string}, states:{array of [name:string] = state:boolean}, selectors:{array of [name:string] = selected-value:integer}}
--{title:string,[ backColor:string,][,timeout:number (ms)][,timeoutResultCancel:boolean][,timeoutResultID:number][ icon:string,][ titleTextColor:string,][ messageTextColor:string,] message:string[, display:(integer|lightuserdata)], commands:{array of {value:integer, name:string}}, inputs:{array of {name:string, value:string, blackFilter:string, whiteFilter:string, vkPlugin:string, maxTextLength:integer}}, states:{array of {name:string, state:boolean[,group:integer]}, selectors:{array of {name:string, selectedValue:integer, values:table[,type:integer 0-swipe, 1-radio]} }
---@return boolean
---@param title string
---@param message string
---@param commands table
---@param inputs table
---@param states table
---@param selectors table
function MessageBox(title, message, commands, inputs, states, selectors) end


-- Object API


--
---@return string:address
function ToAddr(handle) end

--
---@return string:information
function Dump(handle) end

--handle [,handle:base_handle [,boolean:force parent-based address]]
--text:numeric root address
---@return string
function Addr(handle) end

--handle [,handle:base_handle [,boolean:escape names]]
---@return string:text:numeric root address
function AddrNative(handle) end

--
---@return number:index
function Index(handle) end

--
---@return handle:parent_handle
function Parent(handle) end

--
---@return number:child_count
function Count(handle) end

--
---@return number:child_count
function MaxCount(handle) end

--
---@return boolean:isEqual, String:whatDiffers
function Compare(handle, handle) end

--
---@return nothing
function Resize(handle, number_size) end

--handle, number:index(1-based)
---@return handle:child_handle
function Ptr(handle, index) end

--handle, number:index(1-based)
---@return handle:child_handle
function CmdlinePtr(handle, index) end

--table of handle:child_handles
---@return table
function Children(handle) end

--
---@return handle:current child or nil
function CurrentChild(handle) end

--handle, number:child_index(1-based) [,string:class[,handle:undo]]
---@return handle:child_handle
function Create(handle, child_index) end

--handle [,string:class [,handle:undo[,integer:count]]]
---@return handle:child_handle
function Append(handle) end

--handle [,string:class [,handle:undo]]
---@return handle:child_handle
function Aquire(handle) end

--handle, number:child_index(1-based) [,handle:undo]
---@return nothing
function Delete(handle, child_index) end

--handle, number:child_index(1-based) [,string:class [,handle:undo[,integer:count]]]
---@return handle:child_handle
function Insert(handle, child_index) end

--handle, number:child_index(1-based) [,handle:undo]
---@return nothing
function Remove(handle, child_index) end

--handle:dst_handle, handle:src_handle [,handle:undo]
---@return nothing
function Copy(dst_handle, src_handle) end

--handle:dst_handle, handle:src_handle [,handle:undo]
---@return nothing
function HasParent(dst_handle, src_handle) end

--handle, string:change level enum name
---@return nothing
function Changed(handle, string) end

-- returns true if objects is considered 'empty'
---@return boolean
function IsEmpty(handle) end

--handle, string:property_name, string:property_value[,Enums.ChangeLevel:override change level]
---@return nothing
---@param property_name string
---@param property_value string
function Set(handle, property_name, property_value) end

--handle_of_parent, property_name, property_value [,boolean:recursive (default: false)]
---@return nothing
---@param handle_of_parent handle
---@param property_name string
---@param property_value string
function SetChildren(handle_of_parent, property_name, property_value) end

--handle, string:property_name [,enum{Roles}:role]
-- property_value (if 'role' provided - always string)
---@return string
---@param handle handle
---@param property_name string
function Get(handle, property_name) end

-- property_count
---@return number
function PropertyCount(handle) end

-- property_name
---@return string
---@param handle handle
---@param property_index number
function PropertyName(handle, property_index) end

-- property_type
---@return string
---@param handle handle
---@param property_index number
function PropertyType(handle, property_index) end

--
---@return boolean:result
function IsValid(handle) end

--
---@return string:class_name
function IsClass(handle) end

--
---@return string:class_name
function GetClass(handle) end

--
---@return string:class_name
function GetChildClass(handle) end

--
---@return handle
function GetAssignedObj(handle) end

--
---@return boolean:result
function HasEditSettingUI(handle) end

--
---@return boolean:result
function HasEditUI(handle) end

--
---@return string:ui_editor_name
function GetUIEditor(handle) end

--
---@return string:ui_settings_name
function GetUISettings(handle) end

--handle:search_start_handle,string search_class_name
---@return handle:found_handle
---@param search_start_handle handle
---@param search_class_name string
function FindParent(search_start_handle, search_class_name) end

--handle:search_start_handle,string search_name [,string search_class_name]
---@return handle:found_handle
---@param search_start_handle handle
---@param search_name string
function Find(search_start_handle, search_name) end

--handle:search_start_handle,string search_name [,string search_class_name]
---@return handle:found_handle
---@param search_start_handle handle
---@param search_name string
function FindRecursive(search_start_handle, search_name) end

--handle:search_start_handle,string search_name
---@return handle:found_handle
---@param search_start_handle handle
---@param search_name string
function FindWild(search_start_handle, search_name) end

--handle, string:file_path,string:file_name
---@return boolean:success
---@param handle handle
---@param file_path string
---@param file_name string
function Import(handle, file_path, file_name) end

--
---@return boolean:success
---@param handle handle
---@param file_path string
---@param file_name string
function Export(handle, file_path, file_name) end

--handle [,boolean:camel_case_to_file_name]
---@return string:filename
---@param handle handle
function GetExportFileName(handle) end

--handle, string:file_path, string:file_name
---@return boolean:success
---@param handle handle
---@param file_path string
---@param file_name string
function Load(handle, file_path, file_name) end

--handle, string:file_path, string:file_name
---@return boolean:success
---@param handle handle
---@param file_path string
---@param file_name string
function Save(handle, file_path, file_name) end

--handle, handle:dest_handle, boolean:focusSearchAllowed(default:true)
---@return nothing
---@param handle handle
---@param dest_handle handle
---@param focusSearchAllowed boolean
function CommandCall(handle, dest_handle, focusSearchAllowed) end

--
---@return nothing
function CommandAt(handle) end

--
---@return nothing
function CommandDelete(handle) end

--
---@return nothing
function CommandStore(handle) end

--
---@return nothing
function CommandCreateDefaults(handle) end

--handle, {[double:value[0..100]], [boolean:faderDisabled], [string:token(Fader*)]}
---@return nothing
---@param handle handle
---@param fader table
function SetFader(handle, fader) end

--handle, {[string:token(Fader*)], [integer:index]}
-- value[0..100]
---@return double
---@param handle handle
---@param fader table
function GetFader(handle, fader) end

--{[string:token(Fader*)], [integer:index]}
---@return string:text
---@param handle handle
---@param fader table
function GetFaderText(handle, fader) end

--
---@return boolean:result
function HasActivePlayback(handle) end

--
---@return nothing
---@param handle handle
---@param name_value string
function InputSetTitle(handle, name_value) end

--
---@return nothing
---@param handle handle
---@param value string
function InputSetValue(handle, value) end

--
---@return nothing
---@param handle handle
---@param name_value string
function InputSetEditTitle(handle, name_value) end

--
---@return nothing
---@param handle handle
---@param parameter_name string
---@param parameter_value string
function InputSetAdditionalParameter(handle, parameter_name, parameter_value) end

--
---@return nothing
function InputRun(handle) end

--handle, string:function_name [,...parameters to function...]
---@return result:<depends on function>
---@param handle handle
---@param function_name string
function InputCallFunction(handle, function_name) end

--
---@return true|nil
---@param handle handle
---@param function_name string
function InputHasFunction(handle, function_name) end

--
---@return nothing
---@param handle handle
---@param length integer
function InputSetMaxLength(handle, length) end

--handle,string:name,string:value[,{[left={...}][right={...}]}:appearance]
---@return nothing
---@param handle handle
---@param name string
---@param value string
function AddListStringItem(handle,name,value) end

--handle,string:name,string:value,handle:target_handle[,{[left={...}][right={...}]}:appearance]
---@return nothing
---@param handle handle
---@param name string
---@param value string
---@param target_handle handle
function AddListPropertyItem(handle,name,value,target_handle) end

--handle,string:name,number:value[,handle:base handle[,{[left={...}][right={...}]}:appearance]]
---@return nothing
---@param handle handle
---@param name string
---@param value string
function AddListNumericItem(handle,name,value) end

--handle,string:name,string:value/function name,lua_function:callback reference[,<any lua type>:argument to pass to callback[,{[left={...}][right={...}]}:appearance]]
---@return nothing
---@param handle handle
---@param name string
---@param value string
---@param callback function
function AddListLuaItem(handle,name,value,callback) end

--handle,handle:target object[,(string: explicit name[,{[left={...}][right={...}]}:appearance] | enum{Roles}: role [,:boolean: extended_name[,{[left={...}][right={...}]}:appearance]])]
---@return nothing
---@param handle handle
---@param target_object handle
function AddListObjectItem(handle,target_object) end

--handle, table{item={[1]=name,[2]=value},...}
---@return nothing
---@param handle handle
---@param string_items table
function AddListStringItems(handle, string_items) end

--handle, table{item={[1]=name,[2]=property name,[3]=target handle},...}
---@return nothing
---@param handle handle
---@param property_items table
function AddListPropertyItems(handle, property_items) end

--handle, table{item={[1]=name,[2]=integer:value},...}
---@return nothing
---@param handle handle
---@param numeric_items table
function AddListNumericItems(handle, numeric_items) end

--handle, table{item={[1]=name,[2]=value/function name,[3]=callback reference[,[4]=argument of any lua type to pass to callback]},...}
---@return nothing
---@param handle handle
---@param lua_items table
function AddListLuaItems(handle, lua_items) end

--handle, handle:parent[,enum{Roles}:role]
---@return nothing
---@param handle handle
---@param parent handle
function AddListChildren(handle, parent) end

--handle, handle:parent[,enum{Roles}:role]
---@return nothing
---@param handle handle
---@param parent handle
function AddListChildrenNames(handle, parent) end

--handle, handle:parent[,enum{Roles}:role]
---@return nothing
---@param handle handle
---@param parent handle
function AddListRecursiveNames(handle, parent) end

--
---@return nothing
---@param handle handle
---@param name string
function RemoveListItem(handle,name) end

--
---@return nothing
function ClearList(handle) end

--
---@return nothing
---@param handle handle
---@param name_value string
function SelectListItemByName(handle,name_value) end

--
---@return nothing
---@param handle handle
---@param value string
function SelectListItemByValue(handle,value) end

--handle,integer:index(1-based)
---@return nothing
---@param handle handle
---@param index integer
function SelectListItemByIndex(handle,index) end

--
---@return nothing
---@param handle handle
---@param index integer
function IsListItemEnabled(handle,index) end

--handle,integer:index[,boolean:empty(default:true)]
---@return nothing
---@param handle handle
---@param index integer
function SetEnabledListItem(handle,index) end

--
---@return nothing
---@param handle handle
---@param index integer
function IsListItemEmpty(handle,index) end

--handle,integer:index[,boolean:empty(default:true)]
---@return nothing
---@param handle handle
---@param index integer
function SetEmptyListItem(handle,index) end

-- value
---@return string
---@param handle handle
---@param index integer
function GetListItemValueStr(handle,index) end

--
---@return nothing
---@param handle handle
---@param index integer
---@param value string
function SetListItemValueStr(handle,index,value) end

-- value
---@return integer
---@param handle handle
---@param index integer
function GetListItemValueI64(handle,index) end

-- name
---@return string
---@param handle handle
---@param index integer
function GetListItemName(handle,index) end

--
---@return nothing
---@param handle handle
---@param index integer
---@param name string
function SetListItemName(handle,index,name) end

--{left={AppearanceData}, right={AppearanceData}}
---@return table
---@param handle handle
---@param index integer
function GetListItemAppearance(handle,index) end

--handle,integer:index,{[left={...AppearanceData...}][right={...AppearanceData...}]}
---@return nothing
---@param handle handle
---@param index integer
function SetListItemAppearance(handle,index) end

-- button or nil if not visible
---@return handle
---@param handle handle
---@param index integer
function GetListItemButton(handle,index) end

-- 1-based index
---@return integer
function GetListSelectedItemIndex(handle) end

-- amount of items in the list
---@return integer
function GetListItemsCount(handle) end

-- 1-based index
---@return integer
---@param handle handle
---@param value string
function FindListItemByValueStr(handle,value) end

-- 1-based index
---@return integer
---@param handle handle
---@param value string
function FindListItemByName(handle,value) end

--handle to GridBase
---@return handle
function GridGetBase(handle_to_UIGrid) end

--handle to GridData
---@return handle
function GridGetData(handle_to_UIGrid) end

--handle to GridSelection
---@return handle
function GridGetSelection(handle_to_UIGrid) end

--{r,c, r_UniqueId,r_GroupId,c_UniqueId,c_GroupId} cells in the selection
---@return table 
function GridGetSelectedCells(handle_to_UIGrid) end

--handle to GridSettings
---@return handle
function GridGetSettings(handle_to_UIGrid) end

--{r,c}
---@return table
function GridGetDimensions(handle_to_UIGrid) end

--{v = {index,offset}, h={index,offset}}
---@return table
function GridGetScrollOffset(handle_to_UIGrid) end

--handle_to_UIGrid, integer: columnId, integer:size in pixels
---@return nothing
---@param handle_to_UIGrid handle
---@param columnId integer
---@param size integer
function GridSetColumnSize(handle_to_UIGrid, columnId, size) end

--{r,c}
---@return table
function GridGetScrollCell(handle_to_UIGrid) end

--{text, color={text,back}}
--handle_to_UIGrid, {r,c}:cell
---@return table
---@param handle_to_UIGrid handle
---@param cell table
function GridGetCellData(handle_to_UIGrid, cell) end

--handle_to_UIGrid, {r,c}:cell
---@return boolean
---@param handle_to_UIGrid handle
---@param cell table
function GridIsCellVisible(handle_to_UIGrid, cell) end

--handle_to_UIGrid, {r,c}:cell
---@return boolean
---@param handle_to_UIGrid handle
---@param cell table
function GridCellExists(handle_to_UIGrid, cell) end

--handle_to_UIGrid, {r,c}:cell
---@return boolean
---@param handle_to_UIGrid handle
---@param cell table
function GridIsCellReadOnly(handle_to_UIGrid, cell) end

--handle_to_UIGrid, {r,c}:cell
---@return nothing
---@param handle_to_UIGrid handle
---@param cell table
function GridScrollCellIntoView(handle_to_UIGrid, cell) end

--{x,y,w,h}
--handle_to_UIGrid, {r,c}:cell
---@return table
---@param handle_to_UIGrid handle
---@param cell table
function GridGetCellDimensions(handle_to_UIGrid, cell) end

--parent row id (integer) or nil (if there's no parent)
--handle_to_UIGrid, integer: rowId)
---@return integer
---@param handle_to_UIGrid handle
---@param rowId integer
function GridGetParentRowId(handle_to_UIGrid, rowId) end

--{r,c} or nil
---@return table
function GridsGetExpandHeaderCell(handle_to_UIGrid) end

--width in pixels or nil
---@return table
---@param handle_to_UIGrid handle
---@param cell table
function GridsGetLevelButtonWidth(handle_to_UIGrid, cell) end

-- overlay_handle
---@return handle
function GetOverlay(handle_to_UIObject) end

-- display_handle
---@return handle
function GetDisplay(handle_to_UIObject) end

-- display_index
---@return integer
function GetDisplayIndex(handle_to_UIObject) end

--
---@return handle
function GetScreen(handle_to_UIObject) end

-- count
---@return integer
function GetUIChildrenCount(handle_to_UIObject) end

--
---@return nothing
function ClearUIChildren(handle_to_UIObject) end

--handle_to_UIObject, integer:index(1-based)
---@return handle:handle_to_UIObject
---@param handle_to_UIObject handle
---@param index integer
function GetUIChild(handle_to_UIObject, index) end

--of references to children of passed UIObject
---@return table 
function UIChildren(handle_to_UIObject) end

--handle_to_UIObject[, number:seconds to wait[, boolean: force to re-init, default - false]]
-- true on success, nil on timeout or if object doesn't exist
---@return true|nil
function WaitInit(handle_to_UIObject) end

--handle_to_UIObject, integer:expected_amount_of_children, [, number:seconds to wait]
-- true on success, nil on timeout or if object doesn't exist
---@return true|nil
---@param handle_to_UIObject handle
---@param expected_amount_of_children integer
function WaitChildren(handle_to_UIObject, expected_amount_of_children) end

-- true on success, nil on failure
--handle_to_UIObject, function:callback to invoke on deletion[,any:argument to pass by]
---@return boolean
---@param handle_to_UIObject handle
---@param callback_to_invoke_on_deletion function
function HookDelete(handle_to_UIObject, callback_to_invoke_on_deletion) end

--
---@return boolean: is visible
function IsVisible(handle_to_UIObject) end

--
---@return boolean: is enabled
function IsEnabled(handle_to_UIObject) end

--
---@return nothing
---@param handle handle
---@param callback function
function ShowModal(handle, callback) end

--
---@return nothing
---@param handle handle
---@param x integer
---@param y integer
function SetPositionHint(handle,x,y) end

-- true if scroll of the requested type is needed
--handle,integer:scroll_type (see 'ScrollType' enum)
---@return boolean
---@param handle handle
---@param scroll_type integer
function ScrollIsNeeded(handle,scroll_type) end

--handle,integer:scroll_type (see 'ScrollType' enum), integer:scroll_entity (item or area, see 'ScrollParamEntity' enum), integer: value type (absolute or relative, see 'ScrollParamValueType' enum), number: value to scroll (items - 1-based), boolean: updateOpposite side
-- true scroll
---@return boolean
---@param handle handle
---@param scroll_type integer
---@param scroll_entity integer
---@param value_type integer
---@param value_to_scroll number
---@param updateOpposite_side boolean
function ScrollDo(handle,scroll_type,scroll_entity,value_type,value_to_scroll,updateOpposite_side) end

--handle,integer:scroll type (see 'ScrollType' enum)
---@return table|nil:{index(1-based), offset, visibleArea, totalArea, itemsCount, itemsOnPage} or nil
---@param handle handle
---@param scroll_type integer
function ScrollGetInfo(handle,scroll_type) end

--handle,integer:scroll type (see 'ScrollType' enum), integer: 1-based item_idx
-- size of the item of nil
---@return integer|nil
---@param handle handle
---@param scroll_type integer
---@param item_idx integer
function ScrollGetItemSize(handle,scroll_type,item_idx) end

--handle,integer:scroll type (see 'ScrollType' enum), integer: 1-based item idx
-- offset of the item or nil
---@return integer|nil
---@param handle handle
---@param scroll_type integer
---@param item_idx integer
function ScrollGetItemOffset(handle,scroll_type,item_idx) end

--handle,integer:scroll type (see 'ScrollType' enum), integer: offset): integer:1-based item index
-- 1-based item index
---@return integer
---@param handle handle
---@param scroll_type integer
---@param offset integer
function ScrollGetItemByOffset(handle,scroll_type,offset) end

-- integer
---@return integer:size
---@param handle_to_UILayoutGrid handle
---@param idx integer
function UILGGetColumnWidth(handle_to_UILayoutGrid, idx) end

-- integer
---@return integer:size
---@param handle_to_UILayoutGrid handle
---@param idx integer
function UILGGetRowHeight(handle_to_UILayoutGrid, idx) end

-- integer
---@return integer:x
---@param handle_to_UILayoutGrid handle
---@param idx integer
function UILGGetColumnAbsXLeft(handle_to_UILayoutGrid, idx) end

-- integer
---@return integer:x
---@param handle_to_UILayoutGrid handle
---@param idx integer
function UILGGetColumnAbsXRight(handle_to_UILayoutGrid, idx) end

--
-- integer
---@return integer:y
---@param handle_to_UILayoutGrid handle
---@param idx integer
function UILGGetRowAbsYTop(handle_to_UILayoutGrid, idx) end

-- integer
---@return integer:y
---@param handle_to_UILayoutGrid handle
---@param idx integer
function UILGGetRowAbsYBottom(handle_to_UILayoutGrid, idx) end

--handle_to_Overlay, callbackName:string[, ctx:anything]
---@return nothing
---@param handle_to_Overlay handle
---@param callbackName string
function OverlaySetCloseCallback(handle_to_Overlay,callbackName) end

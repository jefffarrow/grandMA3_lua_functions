--MA3 release v 1.9.7
---@meta

---@class LuaFileSystem
local lfs = {}

---@alias nothing nothing # no feedback to MA system monitor
---@alias result result # MA system monitor restult (Ok, Syntax Error, Illegal Command...)
---@alias handle lightuserdata # MA UID
---@alias double double # 64-bit floating-point number (C)
---@alias pCertificate pCertificate # OverallDeviceCertificate
---@alias LuaInteger LuaInteger # The integer that correlates to an object's handle

--Object-Free API

---@return nothing
function Echo(string,...) end

---@return nothing
function ErrEcho(string,...) end

---@return nothing
function Printf(string,...) end

---@return nothing
function ErrPrintf(string,...) end

---@return result # command execution result (Ok, Syntax Error, Illegal Command...)
---@param cmd_to_execute string
function Cmd(cmd_to_execute,...) end

---@return nothing
---@param cmd_to_execute string # cmd_to_execute [,undo [,target]]
---@param undo? handle
---@param target? handle
function Cmd(cmd_to_execute, undo, target,...) end

---@return nothing
---@param cmd_to_execute string # cmd_to_execute [,undo [,target]]
---@param undo? handle
---@param target? handle
function CmdIndirectWait(cmd_to_execute, undo, target,...) end

---@return string:OsType
function HostOS() end

---@return string:HostType
function HostType() end

---@return string:HostSubType
function HostSubType() end

---@return string:SerialNumber
function SerialNumber() end

---@return pCertificate:OverallCertificate
function OverallDeviceCertificate() end

---@return boolean # success
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

---@return handle # handle to page
---@param exec_number integer
function GetExecutor(exec_number) end

---@return nothing
---@param exec_handle handle
function LoadExecConfig(exec_handle) end

---@return nothing
---@param exec_handle handle
function SaveExecConfig(exec_handle) end

---@return integer # first subfixture index
---@return integer # x
---@return integer # y
---@return integer # z
function SelectionFirst() end

---@return integer # next subfixture index
---@return integer # x
---@return integer # y
---@return integer # z
---@param current_subfixture_index integer
function SelectionNext(current_subfixture_index) end

---@return integer # amount of selected subfixtures
function SelectionCount() end

---@return integer # min
---@return integer # max
---@return integer # index
---@return integer # block
---@return integer # group
function SelectionComponentX() end

---@return integer # min
---@return integer # max
---@return integer # index
---@return integer # block
---@return integer # group
function SelectionComponentY() end

---@return integer # min
---@return integer # max
---@return integer # index
---@return integer # block
---@return integer # group
function SelectionComponentZ() end

---@return integer # subfixture count
function GetSubfixtureCount() end

---@return handle|nil # reference to Subfixture object or nil
---@param subfixture_index integer
function GetSubfixture(subfixture_index) end

---@return integer # ui channel count
function GetUIChannelCount() end

---@return integer # rt channel count
function GetRTChannelCount() end

---@return integer # attribute count
function GetAttributeCount() end

---@return table|nil # {array of UI channel indices or handles} or nil
---@param subfixture_index integer # reference to Subfixture object[,boolean # as handles]
---@param handles? boolean
function GetUIChannels(subfixture_index, handles) end

---@return table|nil # {array of RT channel indices or handles} or nil
---@param fixture_index integer reference to Fixture object[,boolean # as handles]
---@param handles? boolean
function GetRTChannels(fixture_index, handles) end

---@return table|nil # {ChannelUI descriptor} or nil
---@param channel_UI_index handle|integer|string handle: ref to Subfixture or integer: attribute index or string: attribute name
function GetUIChannel(channel_UI_index) end

---@return table|nil # {ChannelRT descriptor} or nil
---@param channel_RT_index integer 
function GetRTChannel(channel_RT_index) end

---@return handle|nil # reference to attribute or nil
---@param UI_channel_index integer
function GetAttributeByUIChannel(UI_channel_index) end

---@return integer # attribute index
---@param attribute_name string
function GetAttributeIndex(attribute_name) end

---@return integer # ui channel index
---@param subfixture_index integer
---@param attribute_index integer
function GetUIChannelIndex(subfixture_index, attribute_index) end

---@return integer # channel
---@param ui_channel_index integer
---@param attribute_index integer
function GetChannelFunctionIndex(ui_channel_index, attribute_index) end

---@return handle
---@param ui_channel_index integer
---@param attribute_index integer
function GetChannelFunction(ui_channel_index, attribute_index) end

---@return handle # attribute handle
function GetSelectedAttribute() end

---@return string # fullName
---@param shortName string
function GetTokenName(shortName) end

---@return string # fullName
---@param token_index integer
function GetTokenNameByIndex(token_index) end

---@return nothing
---@param uichannelindex handle
---@param ProgPhaserArray {}:{[abs_preset][rel_preset][fade][delay][speed][phase][measure][gridpos]  {[function:<val>] [absolute][absolute_value][relative] [accel][accel_type][decel][decel_type] [trans][width] [integrated]}*}
function SetProgPhaser(uichannelindex, ProgPhaserArray) end

---@return nothing
---@param uichannelindex number
---@param step number
---@param PhaserValueArray function {[function] [absolute][absolute_value][relative] [accel][accel_type][decel][decel_type>] [trans][width] [integrated]})
function SetProgPhaserValue(uichannelindex, step, PhaserValueArray) end

---@return table # {[abs_preset][rel_preset][fade][delay][speed][phase][measure][gridpos][mask_active_phaser][mask_active_value][mask_individual] {[function] [absolute][absolute_value][relative] [accel][accel_type][decel][decel_type] [trans][width] [integrated]}*}
---@param uichannelindex number
---@param phaser_only boolean
function GetProgPhaser(uichannelindex, phaser_only) end

---@return table # {[function] [absolute][absolute_value][relative] [accel][accel_type][decel][decel_type] [trans][width] [integrated]}
---@param uichannelindex number
---@param step number
function GetProgPhaserValue(uichannelindex, step) end

---@return integer # flag
---@param colormodel string
---@param tripel1 double
---@param tripel2 double
---@param tripel3 double
---@param brightness double
---@param quality double
---@param const_Brightness boolean
function SetColor(colormodel, tripel1, tripel2, tripel3, brightness, quality, const_Brightness) end

---@return table # array of phaser data
---@param preset handle # [,phasers_only(default: false)[,by_fixtures(default: false)]]
---@param phasers_only? boolean
---@param by_fixtures? boolean
function GetPresetData(preset, phasers_only, by_fixtures) end

---@return integer # flag integer
function ColMeasureDeviceDarkCalibrate() end

---@return table # table of values
function ColMeasureDeviceDoMeasurement() end

---@return table # table of handle
---@param address string
function ObjectList(address) end

---@return handle
---@param address string
---@param base_handle? handle
function FromAddr(address, base_handle) end

---@return string # address
---@param handle handle
function ToAddr(handle) end

---@return handle
---@param LuaInteger LuaInteger
function IntToHandle(LuaInteger) end

---@return LuaInteger
---@param handle handle
function HandleToInt(handle) end

---@return handle
---@param stringH string # in H#... format
function StrToHandle(stringH) end

---@return string
---@param handle handle # in H#... format
function HandleToStr(handle) end

---@return true|nil
---@param handle handle
function IsObjectValid(handle) end

---@return boolean
---@param filename string
---@param export_data table
function Export(filename, export_data) end

---@return table
---@param filename string
function Import(filename) end

---@return boolean # success
---@param filename string
---@param export_data table
function ExportJson(filename, export_data) end

---@return boolean # success
---@param filename string
---@param export_data table
function ExportCSV(filename, export_data) end

---@return nothing
---@param callback function
---@param handle handle
---@param plugin_handle handle
---@param target? handle
function HookObjectChange(callback, handle, plugin_handle, target) end

---@return true|nil
---@param object handle # (light_userdata:object[, int:change level threshold])
function PrepareWaitObjectChange(object) end

---@return nothing
---@param callback function
function Unhook(callback) end

---@return integer # amount of removed hooks
---@param callback function # (can be nil)
---@param handle handle # (can be nil)
---@param context_handle handle # (can be nil)
function UnhookMultiple(callback, handle, context_handle) end

---@return nothing
function DumpAllHooks() end

---@return string|integer
---@param path_type string|integer # path type as string | integer as path type from enum 'PathType' [,boolean # create]
---@param create? boolean
function GetPath(path_type, create) end

---@return string # path type name
---@param target_object handle
---@param content_type? integer # (Enums.PathContentType)
function GetPathType(target_object, content_type) end

---@return string|integer # overriden path
---@param path_type string|integer # path type as string | integer as path type from enum 'PathType' [,boolean # create]
---@param create? boolean
function GetPathOverrideFor(path_type, create) end

function GetPathSeparator() end

---@return boolean
---@param path string
function FileExists(path) end

---@return boolean
---@param path string
function CreateDirectoryRecursive(path) end

---@return nothing
function SyncFS() end

---@return table # {name, size, time}
---@param path string
function DirList(path) end

---@return handle
---@param name string
function StartProgress(name) end

---@return nothing
---@param handle handle
function StopProgress(handle) end

---@return nothing
---@param handle handle
---@param text string
function SetProgressText(handle, text) end

---@return nothing
---@param handle handle
---@param range_start integer
---@param range_end integer
function SetProgressRange(handle, range_start, range_end) end

---@return nothing
---@param handle handle
---@param value integer
function SetProgress(handle, value) end

---@return nothing
---@param handle handle
---@param delta? integer
function IncProgress(handle, delta) end

---@return LuaInteger
---@param handle handle
---@param propertyname string
function GetPropertyColumnId(handle, propertyname) end

---@return nothing
---@param displayIndex handle
---@param type string
---|"'press'"
---|"'char'"
---|"'release'"
---@param char string
---|"'char'" # the caracter
---|"'keycode'" # the keycode
---@param shift boolean
---@param ctrl boolean
---@param alt boolean
---@param numlock boolean
function Keyboard(displayIndex, type, char, shift, ctrl, alt, numlock) end

---@return nothing
---@param displayIndex handle
---@param type string
function Mouse(displayIndex, type) end

---@return nothing
---@param displayIndex handle
---@param type string
---|"'press'"
---|"'move'"
---|"'release'"
---@param touchId integer
---@param absX integer
---@param absY integer
function Touch(displayIndex, type, touchId, absX, absY) end

---@return number # time
function Time() end

---@return handle # mouse object handle
function MouseObj() end

---@return handle # touch object handle
function TouchObj() end

---@return handle # keyboard object handle
function KeyboardObj() end

---@return nothing
---@param timer_name function
---@param delaytime number
---@param max_count number
---@param cleanup? function
---@param context_object? handle
function Timer(timer_name, delaytime, max_count, cleanup, context_object) end

---@return integer # absolute address
---@param patch handle
---@param starting_address integer
---@param footprint integer
function FindBestDMXPatchAddr(patch, starting_address, footprint) end

---@return boolean # true - no collision, false - collisions
---@param dmx_mode handle
---@param dmx_address string # [,count [,breakIndex]]
---@param count? integer
---@param breakIndex? integer
function CheckDMXCollision(dmx_mode, dmx_address, count, breakIndex) end

---@return boolean
---@param FID integer # [,count [,type]]
---@param count? integer
---@param type? integer
function CheckFIDCollision(FID, count, type) end

---@return integer # dmx value
---@param address integer # [,universe,modePercent]
---@param universe? integer
---@param modePercent? boolean
function GetDMXValue(address, universe, modePercent) end

---@return table # table of integer : dmx values
---@param universe integer # [,modePercent]
---@param modePercent? boolean
function GetDMXUniverse(universe, modePercent) end

---@return nothing
---@param usb_device_object_handle handle
---@param led_values table
function SetLED(usb_device_object_handle,led_values) end

---@return table # of boolean:state
---@param usb_device_object_handle handle
function GetButton(usb_device_object_handle) end

---@return handle # handle to undo
---@param undo_text handle
function CreateUndo(undo_text) end

---@return boolean # true if was closed | false if still in use
---@param handle_to_undo handle
function CloseUndo(handle_to_undo) end

---@return boolean # true if desk is locked
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

---@return integer # amount of multi-patch fixtures created
---@param array_of_fixture_handles table
---@param count integer
---@param undo_text? string
function CreateMultiPatch(array_of_fixture_handles, count, undo_text) end

---@return handle # global variables
function GlobalVars() end

---@return handle # user variables
function UserVars() end

---@return handle # plugin variables
---@param plugin_name string
function PluginVars(plugin_name) end

---@return handle # addon variables
---@param addon_name string
function AddonVars(addon_name) end

---@return boolean # success
---@param variables handle
---@param varname string
---@param value string
function SetVar(variables, varname, value) end

---@return string|number
---@param variables handle
---@param varname string
function GetVar(variables, varname) end

---@return boolean # success
---@param variables handle
---@param varname string
function DelVar(variables, varname) end

---@return table # api content
function GetApiDescriptor() end

---@return table # api content
function GetObjApiDescriptor() end

---@return number # fps
function GetDebugFPS() end

---@return number # current value in percent
---@param type string
---|"'MEMORY'"
---|"'CPU'"
---|"'CPUTEMP'"
---|"'GPUTEMP'"
---|"'SYSTEMP'"
---|"'FANRPM'"
function GetSample(type) end

-- {handle to DMX mode, amount [,undo][,parent][,insert_index][,idtype][,cid][,fid][,name][,layer][,class][,patch:{array 1..8: string address}]}
---@return true|nil # true on success or nil
---@param handle_to_DMX_mode handle
---@param amount integer
---@param undo? string
---@param parent? handle
---@param insert_index? integer
---@param idtype? string
---@param cid? string
---@param fid? string
---@param name? string
---@param layer? string
---@param class? string
---@param patch? table # {array 1..8: string address}
function AddFixtures(handle_to_DMX_mode, amount, undo, parent, insert_index, idtype, cid, fid, name, layer, class, patch) end

---@return boolean # result
---@param class_name string
function ClassExists(class_name) end

---@return boolean # result
---@param derived_name string
---@param base_name string
function IsClassDerivedFrom (derived_name, base_name) end

---@return integer|nil # result or nil
---@param class_name string
function GetClassDerivationLevel (class_name) end

-- The TextInput Lua function opens a text input pop-up and returns the typed input as a string. It is part of the user interface functions.
---@return string # The returned user input.
---@param title? string # [title [, value [, # x [, # y]]]]
---@param value? string
---@param x? integer
---@param y? integer
function TextInput(title, value, x, y) end

-- The PopupInput Lua function creates a popup input field in the UI, where the user can select an item out of a list of different variables.
---@return string # value
---@param popupInputArray {}:({title:str, caller:handle, items:table:{{'str'|'int'|'lua'|'handle', name, type-dependent}...}, selectedValue:str, x:int, y:int, target:handle, render_options:{left_icon,number,right_icon}, useTopLeft:bool, properties:{prop:value}})
function PopupInput(popupInputArray) end

---@return boolean # result
---@param title string # [title [,message [,# displayIndex [,showCancel]]]]
---@param message? string
---@param displayIndex? integer
---@param showCancel? boolean
function Confirm(title, message, displayIndex, showCancel) end

---@return handle # display_handle
---@param display_index integer
function GetDisplayByIndex(display_index) end

---@return integer # wingID
---@return boolean # isExtension
function GetRemoteVideoInfo() end

---@return handle|nil # handle to UI object or nil
---@param display_index integer
---@param position table # {x,y}:position
function GetUIObjectAtPosition(display_index, position) end

---@return nothing
---@param display_index integer
---@param position table # {x,y}:position[, number:duration]
function DrawPointer(display_index, position) end

---@return true|nil # true on success, nil on timeout
---@param handle_to_UIObject handle
---@param seconds_to_wait? number
function WaitObjectDelete(handle_to_UIObject, seconds_to_wait) end

---@return handle # display_handle
function GetFocus() end

---@return handle # display_handle
function GetFocusDisplay() end

---@return handle # handle to DisplayCollect
function GetDisplayCollect() end

---@return nothing
---@param handle handle
function FindBestFocus(handle) end

---@return nothing
---@param backwards boolean # [boolean:backwards(false)[,integer(Focus::Reason), returnreason(UserTabKey)]]
---@param reason? integer
---@param returnreason? any
function FindNextFocus(backwards, reason, returnreason) end

---@return nothing
function CloseAllOverlays() end

---@return handle # handle to top modal overlay
function GetTopModal() end

---@return handle # handle to top overlay on the display
---@param display_index integer
function GetTopOverlay(display_index) end

---@return handle|nil # handle to modal overlay or nil on failure(timeout)
---@param seconds_to_wait number
function WaitModal(seconds_to_wait) end

---@return nothing
---@param block boolean
function SetBlockInput(block) end

---@return handle: handle to texture found
---@param texture_name string
function FindTexture(texture_name) end

---@return boolean # {success:boolean, result:integer, inputs:{array of [name:string] = value:string}, states:{array of [name:string] = state:boolean}, selectors:{array of [name:string] = selected-value:integer}}
---@param messageBoxArray {}:({title:string,[ backColor:string,][,timeout:number (ms)][,timeoutResultCancel:boolean][,timeoutResultID:number][ icon:string,][ titleTextColor:string,][ messageTextColor:string,] message:string[, display:(integer|lightuserdata)], commands:{array of {value:integer, name:string}}, inputs:{array of {name:string, value:string, blackFilter:string, whiteFilter:string, vkPlugin:string, maxTextLength:integer}}, states:{array of {name:string, state:boolean[,group:integer]}, selectors:{array of {name:string, selectedValue:integer, values:table[,type:integer 0-swipe, 1-radio]} }}})
function MessageBox(messageBoxArray) end

--- Object API ---

---@return string:address
---@param handle handle
function ToAddr(handle) end

---@return string:information
---@param handle handle
function Dump(handle) end

---@return string # numeric root address
---@param handle handle # [,base_handle [,force parent-based address]]
---@param base_handle? handle
---@param force? boolean
function Addr(handle, base_handle, force) end

---@return string # text:numeric root address
---@param handle handle # [,base_handle [,force parent-based address]]
---@param base_handle? handle
---@param escape_names? boolean
function AddrNative(handle, base_handle, escape_names) end

---@return number:index
---@param handle handle
function Index(handle) end

---@return handle:parent_handle
---@param handle handle
function Parent(handle) end

---@return number:child_count
---@param handle handle
function Count(handle) end

---@return number:child_count
---@param handle handle
function MaxCount(handle) end

-- compare two handles
---@return boolean:isEqual, String:whatDiffers
---@param handle1 handle
---@param handle2 handle
function Compare(handle1, handle2) end

---@return nothing
---@param handle handle
---@param size number
function Resize(handle, size) end

---@return handle # child_handle
---@param handle handle
---@param index number # (1-based)
function Ptr(handle, index) end

---@return handle # child_handle
---@param handle handle
---@param index number # (1-based)
function CmdlinePtr(handle, index) end

---@return table # table of child_handles
---@param handle handle
function Children(handle) end

---@return handle # current child or nil
function CurrentChild(handle) end

---@return handle # child_handle
---@param handle handle
---@param child_index number # (1-based) [,class [,undo[,count]]]
---@param class? string
---@param undo? handle
function Create(handle, child_index, class, undo) end

---@return handle # child_handle
---@param handle handle # (1-based) [,class [,undo[,count]]]
---@param class? string
---@param undo? handle
---@param count? integer
function Append(handle, class, undo, count) end

---@return handle # child_handle
---@param handle handle # [,class [,undo]]
---@param class? string 
---@param undo? handle
function Aquire(handle, class, undo) end

---@return nothing
---@param handle handle
---@param child_index number
---@param undo? handle
function Delete(handle, child_index, undo) end

---@return handle # child_handle
---@param handle handle
---@param child_index number # (1-based) [,class [,undo[,count]]]
---@param class? string 
---@param undo? handle
---@param count? integer
function Insert(handle, child_index, class, undo, count) end

---@return nothing
---@param handle handle
---@param child_index number
---@param undo? handle
function Remove(handle, child_index, undo) end

---@return nothing
---@param dst_handle handle
---@param src_handle handle
---@param undo? handle
function Copy(dst_handle, src_handle, undo) end

---@return nothing
---@param dst_handle handle
---@param src_handle handle
---@param undo? handle
function HasParent(dst_handle, src_handle, undo) end

---@return nothing
---@param handle handle
---@param change string # change level enum name
function Changed(handle, change) end

---@return boolean # returns true if objects is considered 'empty'
function IsEmpty(handle) end

---@return nothing
---@param handle handle
function PrepareAccess(handle) end

---@return nothing
---@param property_name string
---@param property_value string
---@param override? number # [,Enums.ChangeLevel:override change level]
function Set(handle, property_name, property_value, override) end

---@return nothing
---@param handle_of_parent handle
---@param property_name string
---@param property_value string
---@param recursive? boolean # (default: false)
function SetChildren(handle_of_parent, property_name, property_value, recursive) end

---@return string # property_value (if 'role' provided - always string)
---@param handle handle
---@param property_name string
---@param roles? table # [,enum{Roles}:role]
function Get(handle, property_name, roles) end

---@return number # property_count
function PropertyCount(handle) end

---@return string # property_name
---@param handle handle
---@param property_index number
function PropertyName(handle, property_index) end

---@return string # property_type
---@param handle handle
---@param property_index number
function PropertyType(handle, property_index) end

---@return table # {string:ReadOnly, string:ImportIgnore, string:ExportIgnore}
---@param handle handle
---@param property_index number
function PropertyInfo(handle, property_index) end

---@return boolean:result
function IsValid(handle) end

---@return string:class_name
function IsClass(handle) end

---@return string:class_name
function GetClass(handle) end

---@return string:class_name
function GetChildClass(handle) end

---@return handle
function GetAssignedObj(handle) end

---@return boolean:result
function HasEditSettingUI(handle) end

---@return boolean:result
function HasEditUI(handle) end

---@return string:ui_editor_name
function GetUIEditor(handle) end

---@return string:ui_settings_name
function GetUISettings(handle) end

---@return handle:found_handle
---@param search_start_handle handle
---@param search_class_name string
function FindParent(search_start_handle, search_class_name) end

---@return handle:found_handle
---@param search_start_handle handle
---@param search_name string
---@param search_class_name? string
function Find(search_start_handle, search_name, search_class_name) end

---@return handle:found_handle
---@param search_start_handle handle
---@param search_name string
---@param search_class_name? string
function FindRecursive(search_start_handle, search_name, search_class_name) end

---@return handle:found_handle
---@param search_start_handle handle
---@param search_name string
function FindWild(search_start_handle, search_name) end

---@return boolean # success
---@param handle handle
---@param file_path string
---@param file_name string
function Import(handle, file_path, file_name) end

---@return boolean # success
---@param handle handle
---@param file_path string
---@param file_name string
function Export(handle, file_path, file_name) end

---@return string:filename
---@param handle handle
---@param camel_case_to_file_name? boolean
function GetExportFileName(handle, camel_case_to_file_name) end

---@return boolean # success
---@param handle handle
---@param file_path string
---@param file_name string
function Load(handle, file_path, file_name) end

---@return boolean # success
---@param handle handle
---@param file_path string
---@param file_name string
function Save(handle, file_path, file_name) end

---@return nothing
---@param handle handle
---@param dest_handle handle
---@param focusSearchAllowed boolean # (default:true)
function CommandCall(handle, dest_handle, focusSearchAllowed) end

---@return nothing
function CommandAt(handle) end

---@return nothing
function CommandDelete(handle) end

---@return nothing
function CommandStore(handle) end

---@return nothing
function CommandCreateDefaults(handle) end

---@return nothing
---@param handle handle
---@param fader table # {[double:value[0..100]], [boolean:faderDisabled], [string:token(Fader*)]}
function SetFader(handle, fader) end

---@return double # value[0..100]
---@param handle handle
---@param fader table # {[string:token(Fader*)], [integer # index]}
function GetFader(handle, fader) end

---@return string:text
---@param handle handle
---@param fader table # {[string:token(Fader*)], [integer # index]}
function GetFaderText(handle, fader) end

---@return boolean:result
function HasActivePlayback(handle) end

---@return boolean:result
function HasReferences(handle) end

---@return boolean:result
function HasDependencies(handle) end

---@return table:handle
function GetReferences(handle) end

---@return table:handle
function GetDependencies(handle) end

---@return nothing
---@param handle handle
---@param name_value string
function InputSetTitle(handle, name_value) end

---@return nothing
---@param handle handle
---@param value string
function InputSetValue(handle, value) end

---@return nothing
---@param handle handle
---@param name_value string
function InputSetEditTitle(handle, name_value) end

---@return nothing
---@param handle handle
---@param parameter_name string
---@param parameter_value string
function InputSetAdditionalParameter(handle, parameter_name, parameter_value) end

---@return nothing
function InputRun(handle) end

---@return result:<depends on function>
---@param handle handle
---@param function_name string
---@param args? string # [,...parameters to function...]
function InputCallFunction(handle, function_name, args) end

---@return true|nil
---@param handle handle
---@param function_name string
function InputHasFunction(handle, function_name) end

---@return nothing
---@param handle handle
---@param length integer
function InputSetMaxLength(handle, length) end

---@return nothing
---@param handle handle
---@param name string
---@param value string
---@param appearance? table # [,{[left={...}][right={...}]}:appearance]
function AddListStringItem(handle,name,value, appearance) end

---@return nothing
---@param handle handle
---@param name string
---@param value string
---@param target_handle handle
---@param appearance? table # [,{[left={...}][right={...}]}:appearance]
function AddListPropertyItem(handle,name,value,target_handle, appearance) end

---@return nothing
---@param handle handle
---@param name string
---@param value string
---@param appearance? table # [,{[left={...}][right={...}]}:appearance]
function AddListNumericItem(handle,name,value, appearance) end

---@return nothing
---@param handle handle
---@param name string
---@param value string
---@param callback function
---@param appearance? table # [,{[left={...}][right={...}]}:appearance]
function AddListLuaItem(handle,name,value,callback, appearance) end

---(handle,target object[,(string: explicit name[,{[left={...}][right={...}]}:appearance] | enum{Roles}: role [,:boolean: extended_name[,{[left={...}][right={...}]}:appearance]])])
---@class target_object
---@field explicit_name? string
---@field role? number # enums
---@field extended_name? boolean
---@return nothing
---@param handle handle
---@param target_object target_object
function AddListObjectItem(handle,target_object) end

---@return nothing
---@param handle handle
---@param string_items table # {item={[1]=name,[2]=value},...}
function AddListStringItems(handle, string_items) end

---@return nothing
---@param handle handle
---@param property_items table # {item={[1]=name,[2]=property name,[3]=target handle},...}
function AddListPropertyItems(handle, property_items) end

---@return nothing
---@param handle handle
---@param numeric_items table # {item={[1]=name,[2]=integer # value},...}
function AddListNumericItems(handle, numeric_items) end

---@return nothing
---@param handle handle
---@param lua_items table # {item={[1]=name,[2]=value/function name,[3]=callback reference[,[4]=argument of any lua type to pass to callback]},...}
function AddListLuaItems(handle, lua_items) end

---@return nothing
---@param handle handle
---@param parent handle
---@param role? number # [,enum{Roles}:role]
function AddListChildren(handle, parent, role) end

---@return nothing
---@param handle handle
---@param parent handle
---@param role? number # [,enum{Roles}:role]
function AddListChildrenNames(handle, parent, role) end

---@return nothing
---@param handle handle
---@param parent handle
---@param role? number # [,enum{Roles}:role]
function AddListRecursiveNames(handle, parent, role) end

---@return nothing
---@param handle handle
---@param name string
function RemoveListItem(handle,name) end

---@return nothing
function ClearList(handle) end

---@return nothing
---@param handle handle
---@param name_value string
function SelectListItemByName(handle,name_value) end

---@return nothing
---@param handle handle
---@param value string
function SelectListItemByValue(handle,value) end

---@return nothing
---@param handle handle
---@param index integer # (1-based)
function SelectListItemByIndex(handle,index) end

---@return nothing
---@param handle handle
---@param index integer
function IsListItemEnabled(handle,index) end

---@return nothing
---@param handle handle
---@param index integer
---@param empty? boolean # (default:true)
function SetEnabledListItem(handle,index, empty) end

---@return nothing
---@param handle handle
---@param index integer
function IsListItemEmpty(handle,index) end

---@return nothing
---@param handle handle
---@param index integer
---@param empty? boolean # (default:true)
function SetEmptyListItem(handle,index, empty) end

---@return string # value
---@param handle handle
---@param index integer
function GetListItemValueStr(handle,index) end

---@return nothing
---@param handle handle
---@param index integer
---@param value string
function SetListItemValueStr(handle,index,value) end

---@return integer # value
---@param handle handle
---@param index integer
function GetListItemValueI64(handle,index) end

---@return string # name
---@param handle handle
---@param index integer
function GetListItemName(handle,index) end

---@return nothing
---@param handle handle
---@param index integer
---@param name string
function SetListItemName(handle,index,name) end

---@return table # {left={AppearanceData}, right={AppearanceData}}
---@param handle handle
---@param index integer
function GetListItemAppearance(handle,index) end

---@return nothing
---@param handle handle
---@param index integer
function SetListItemAppearance(handle,index) end

---@return handle|nil # button or nil if not visible
---@param handle handle
---@param index integer
function GetListItemButton(handle,index) end

---@return integer # 1-based index
function GetListSelectedItemIndex(handle) end

---@return integer # amount of items in the list
function GetListItemsCount(handle) end

---@return integer # 1-based index
---@param handle handle
---@param value string
function FindListItemByValueStr(handle,value) end

---@return integer # 1-based index
---@param handle handle
---@param value string
function FindListItemByName(handle,value) end

---@return handle # handle to GridBase
function GridGetBase(handle_to_UIGrid) end

---@return handle # handle to GridData
function GridGetData(handle_to_UIGrid) end

---@return handle # handle to GridSelection
function GridGetSelection(handle_to_UIGrid) end

---@return table # {r,c, r_UniqueId,r_GroupId,c_UniqueId,c_GroupId} cells in the selection
function GridGetSelectedCells(handle_to_UIGrid) end

---@return handle # handle to GridSettings
function GridGetSettings(handle_to_UIGrid) end

---@return table # {r,c}
function GridGetDimensions(handle_to_UIGrid) end

---@return table # {v = {index,offset}, h={index,offset}}
function GridGetScrollOffset(handle_to_UIGrid) end

---@return nothing
---@param handle_to_UIGrid handle
---@param columnId integer
---@param size integer # size in pixels
function GridSetColumnSize(handle_to_UIGrid, columnId, size) end

---@return table # {r,c}
function GridGetScrollCell(handle_to_UIGrid) end

---@return table # {text, color={text,back}}
---@param handle_to_UIGrid handle
---@param cell table # {r,c}:cell
function GridGetCellData(handle_to_UIGrid, cell) end

---@return boolean
---@param handle_to_UIGrid handle
---@param cell table # {r,c}:cell
function GridIsCellVisible(handle_to_UIGrid, cell) end

---@return boolean
---@param handle_to_UIGrid handle
---@param cell table # {r,c}:cell
function GridCellExists(handle_to_UIGrid, cell) end

---@return boolean
---@param handle_to_UIGrid handle
---@param cell table # {r,c}:cell
function GridIsCellReadOnly(handle_to_UIGrid, cell) end

---@return nothing
---@param handle_to_UIGrid handle
---@param cell table # {r,c}:cell
function GridScrollCellIntoView(handle_to_UIGrid, cell) end

---@return table
---@param handle_to_UIGrid handle
---@param cell table # {r,c}:cell
function GridGetCellDimensions(handle_to_UIGrid, cell) end

---@return integer|nil # parent row id (integer) or nil (if there's no parent)
---@param handle_to_UIGrid handle
---@param rowId integer
function GridGetParentRowId(handle_to_UIGrid, rowId) end

---@return table|nil # {r,c} or nil
function GridsGetExpandHeaderCell(handle_to_UIGrid) end

---@return table|nil # width in pixels or nil
---@param handle_to_UIGrid handle
---@param cell table
function GridsGetLevelButtonWidth(handle_to_UIGrid, cell) end

---@return handle # overlay_handle
function GetOverlay(handle_to_UIObject) end

---@return handle # display_handle
function GetDisplay(handle_to_UIObject) end


---@return integer # display_index
function GetDisplayIndex(handle_to_UIObject) end

---@return handle
function GetScreen(handle_to_UIObject) end


---@return integer # count
function GetUIChildrenCount(handle_to_UIObject) end

---@return nothing
function ClearUIChildren(handle_to_UIObject) end

---@return handle # handle_to_UIObject
---@param handle_to_UIObject handle
---@param index integer # index(1-based)
function GetUIChild(handle_to_UIObject, index) end

---@return table # of references to children of passed UIObject
function UIChildren(handle_to_UIObject) end

---@return true|nil # true on success, nil on timeout or if object doesn't exist
---@param handle_to_UIObject handle # [, seconds_to_wait[, force_to_re-init (default - false)]]
---@param seconds_to_wait? number
---@param force_to_re? boolean # default - false
function WaitInit(handle_to_UIObject, seconds_to_wait, force_to_re) end

---@return true|nil # true on success, nil on timeout or if object doesn't exist
---@param handle_to_UIObject handle
---@param expected_amount_of_children integer
---@param seconds_to_wait? number
function WaitChildren(handle_to_UIObject, expected_amount_of_children, seconds_to_wait) end

---@return boolean # true on success, nil on failure
---@param handle_to_UIObject handle
---@param callback_to_invoke_on_deletion function
---@param args? any
function HookDelete(handle_to_UIObject, callback_to_invoke_on_deletion, args) end

---@return boolean # is visible
function IsVisible(handle_to_UIObject) end

---@return boolean # is enabled
function IsEnabled(handle_to_UIObject) end

---@return nothing
---@param handle handle
---@param callback function
function ShowModal(handle, callback) end

---@return nothing
---@param handle handle
---@param x integer
---@param y integer
function SetPositionHint(handle,x,y) end

---@return boolean # true if scroll of the requested type is needed
---@param handle handle
---@param scroll_type integer # scroll_type (see 'ScrollType' enum)
function ScrollIsNeeded(handle,scroll_type) end

---@return boolean # true scroll
---@param handle handle
---@param scroll_type integer # scroll_type (see 'ScrollType' enum)
---@param scroll_entity integer # scroll_entity (item or area, see 'ScrollParamEntity' enum)
---@param value_type integer # value type (absolute or relative, see 'ScrollParamValueType' enum)
---@param value_to_scroll number # (items - 1-based)
---@param updateOpposite_side boolean
function ScrollDo(handle,scroll_type,scroll_entity,value_type,value_to_scroll,updateOpposite_side) end

---@return table|nil # {index(1-based), offset, visibleArea, totalArea, itemsCount, itemsOnPage} or nil
---@param handle handle
---@param scroll_type integer
function ScrollGetInfo(handle,scroll_type) end

---@return integer|nil # size of the item of nil
---@param handle handle
---@param scroll_type integer # scroll_type (see 'ScrollType' enum)
---@param item_idx integer # 1-based item_idx
function ScrollGetItemSize(handle,scroll_type,item_idx) end

---@return integer|nil # offset of the item or nil
---@param handle handle
---@param scroll_type integer # scroll_type (see 'ScrollType' enum)
---@param item_idx integer # 1-based item_idx
function ScrollGetItemOffset(handle,scroll_type,item_idx) end

---@return integer # 1-based item_idx
---@param handle handle
---@param scroll_type integer # scroll_type (see 'ScrollType' enum)
---@param offset integer # 1-based item_idx
function ScrollGetItemByOffset(handle,scroll_type,offset) end

---@return nothing
---@param handle handle #handle to UIObject
---@param topicName string
function SetContextSensHelpLink(handle, topicName) end

---@return integer # size
---@param handle_to_UILayoutGrid handle
---@param idx integer
function UILGGetColumnWidth(handle_to_UILayoutGrid, idx) end

---@return integer # size
---@param handle_to_UILayoutGrid handle
---@param idx integer
function UILGGetRowHeight(handle_to_UILayoutGrid, idx) end

---@return integer # x
---@param handle_to_UILayoutGrid handle
---@param idx integer
function UILGGetColumnAbsXLeft(handle_to_UILayoutGrid, idx) end

---@return integer # x
---@param handle_to_UILayoutGrid handle
---@param idx integer
function UILGGetColumnAbsXRight(handle_to_UILayoutGrid, idx) end

---@return integer # y
---@param handle_to_UILayoutGrid handle
---@param idx integer
function UILGGetRowAbsYTop(handle_to_UILayoutGrid, idx) end

---@return integer # y
---@param handle_to_UILayoutGrid handle
---@param idx integer
function UILGGetRowAbsYBottom(handle_to_UILayoutGrid, idx) end

---@return nothing
---@param handle_to_Overlay handle
---@param callbackName string
---@param ctx? any
function OverlaySetCloseCallback(handle_to_Overlay,callbackName, ctx) end

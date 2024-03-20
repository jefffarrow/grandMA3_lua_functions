--MA3 Software version: 2.0.0.4

---@meta MA3API

---@class LuaFileSystem
local lfs = {}

---@alias nothing nothing # no feedback to MA system monitor
---@alias result result # MA system monitor restult (Ok, Syntax Error, Illegal Command...)
---@alias light_userdata lightuserdata # MA UID
---@alias handle lightuserdata # MA UID
---@alias double double # 64-bit floating-point number (C)
---@alias float float # 64-bit floating-point number (C)
---@alias pCertificate pCertificate # OverallDeviceCertificate
---@alias LuaInteger LuaInteger # The integer that correlates to an objects handle

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

---@return handle # handle
function CurrentScreenConfig() end

---@return handle
function CurrentExecPage() end

---@return handle
function SelectedSequence() end

---@return handle # handle
function GetCurrentCue() end

---@return handle # handle
function SelectedTimecode() end

---@return handle # handle
function SelectedLayout() end

---@return handle # handle
function SelectedTimer() end

---@return handle # handle
function GetSelectedAttribute() end

---@return handle # handle
function SelectedFeature() end

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

---@param dmxmode handle # light_userdata:dmxmode
---@return handle # fixture
function FirstDmxModeFixture(dmxmode) end

---@param fixture handle # light_userdata:fixture
---@return handle # fixture
function NextDmxModeFixture(fixture) end

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
---|"'RGB'" # the caracter
---|"'xyY'" # the caracter
---|"'Lab'" # the caracter
---|"'XYZ'" # the caracter
---|"'HSB'" # the caracter
---@param tripel1 float
---@param tripel2 float
---@param tripel3 float
---@param brightness float
---@param quality float
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

---@param handle handle # light_userdata:handle, boolean:with_name
---@param with_name boolean
---@return string # address
function ToAddr(handle, with_name) end

---@param handle integer # integer:handle
---@return handle # handle
function IntToHandle(handle) end

---@param handle handle # light_userdata:handle
---@return integer # handle
function HandleToInt(handle) end

---@param handle string # string:handle(in H#... format)
---@return handle # handle
function StrToHandle(handle) end

---@param handle handle # light_userdata:handle
---@return string # handle(in H#... format)
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

---@return string # seperator
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

---@param name string # string:name
---@return integer # progressbar_index
function StartProgress(name) end

---@param progressbar_index integer # integer:progressbar_index
---@return nothing
function StopProgress(progressbar_index) end

---@param progressbar_index integer # integer:progressbar_index, string:text
---@param text string
---@return nothing
function SetProgressText(progressbar_index, text) end

---@param progressbar_index integer # integer:progressbar_index, integer:start, integer:end
---@param start integer
---@param last integer
---@return nothing
function SetProgressRange(progressbar_index, start, last) end

---@param progressbar_index integer # integer:progressbar_index, integer:value
---@param value integer
---@return nothing
function SetProgress(progressbar_index, value) end

---@param progressbar_index? integer # integer:progressbar_index[, integer:delta]
---@param delta? integer
---@return nothing
function IncProgress(progressbar_index, delta) end

---@param handle handle # light_userdata:handle, string:property_name
---@param property_name string
---@return integer # column_id
function GetPropertyColumnId(handle, property_name) end

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

---@return boolean # need_show_save
function NeedShowSave() end

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

---@param expectations table # table:expectations
---@return boolean # success, string # result text
function TestPlaybackOutput(expectations) end

---@param expectations table # table:expectations
---@return boolean # success, string # result text
function TestPlaybackOutputSteps(expectations) end

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

---@param handle_to_ScreenConfig handle # light_userdata:handle to ScreenConfig
---@return handle # handle
function GetScreenContent(handle_to_ScreenConfig) end

---@param mbTable table # The input to the function must be formatted as a table using key-value pairs. The needed elements have default values that will be used if not overwritten. The values can be defined in any order if the key is defined.
---@param title? string # This is the title of the pop-up message box.
---@param backColor? string # This is the color of the frame or border of the pop-up. The value is a number or string that refers to the UI Colors in the color theme
---@param timeout? integer # The timeout value is an integer that indicates how long the message box is displayed in milliseconds. It will show a countdown timer at the top of the message area
---@param timeoutResultCancel? boolean # This element can change the return to mimic a cancel of the pop-up, which returns a false instead of a true for the success element
---@param timeoutResultID? integer # When the timeout closes the pop-up with the success value = true, a special return result can be defined
---@param icon? string # This is an icon that can be shown in the upper left corner of the pop-up. The value can be an integer or a string that refers to the number or name of a texture image
---@param titleTextColor? string # This is the text color for the title text. The value is a number or string that refers to the UI Colors in the color theme.
---@param messageTextColor? string # This is the text color for the message text. The value is a number or string that refers to the UI Colors in the color theme
---@param message? string # This message text string is displayed in the main part of the pop-up. A new line can be created by adding a "\n" in the text
---@param message_align_h? integer # (Enums.AlignmentH)
---@param message_align_v? integer# (Enums.AlignmentV)
---@param display? integer|lightuserdata # where to locate the MessageBox
---@param commands_value? integer # This integer value will be returned as the result value
---@param commands_name? string # This is a string which will be shown on the button
---@param commands_order? integer # To define the order, the parameter order needs to be added with an integer value
---@param inputs_name? string # the text will be shown as a label for the input field
---@param inputs_value? string # default input value for the input field
---@param inputs_blackFilter? string # defines input characters that are not allowed
---@param inputs_whiteFilter? string # defines which input characters are allowed
---@param inputs_vkPlugin? string # name of the input pop-up, which is opened if the on-screen keyboard icon is tapped
---@param inputs_maxTextLength? integer # defines the maximum number of characters for the input
---@param inputs_order? integer # To define the order, the parameter order needs to be added with an integer value
---@param states_name? string # the text will be shown on the button
---@param states_state? boolean # the initial state of the button checkbox
---@param states_order? integer # To define the order, the parameter order needs to be added with an integer value
---@param selectors_name? string # the text will be shown on the button (swipe button) or as a label above the buttons (radio buttons)
---@param selectors_selectedValue? integer # defines the default selected value
---@param selectors_values? table # a table containing the different values available for the selector button. Each value element in the table has the following structure: ["string"]=integer The string is the name displayed for the value. The integer is the value returned and the one used for selectedValue
---@param selectors_type? integer # 0-swipe, 1-radio
---@param selectors_order? integer # To define the order, the parameter order needs to be added with an integer value
---@return boolean # {success:boolean, result:integer, inputs:{array of [name:string] = value:string}, states:{array of [name:string] = state:boolean}, selectors:{array of [name:string] = selected-value:integer}}
function MessageBox(mbTable, title, backColor, timeout, timeoutResultCancel, timeoutResultID, icon, titleTextColor, messageTextColor, message, message_align_h, message_align_v, display, commands_value, commands_name, commands_order, inputs_name, inputs_value, inputs_blackFilter, inputs_whiteFilter, inputs_vkPlugin, inputs_maxTextLength, inputs_order, states_name, states_state, states_order, selectors_name, selectors_selectedValue, selectors_values, selectors_type, selectors_ordertitle, backColor, timeout, timeoutResultCancel, timeoutResultID, icon, titleTextColor, messageTextColor, message, message_align_h, message_align_v, display, commands_value, commands_name, commands_order, inputs_name, inputs_value, inputs_blackFilter, inputs_whiteFilter, inputs_vkPlugin, inputs_maxTextLength, inputs_order, states_name, states_state, states_order, selectors_name, selectors_selectedValue, selectors_values, selectors_type, selectors_order) end

--Object API

---@param handle handle # light_userdata:handle,boolean:with_name
---@param with_name boolean
---@return string # address
function ToAddr(handle, with_name) end

---@param handle handle # light_userdata:handle
---@return string # information
function Dump(handle) end

---@param handle handle # light_userdata:handle[, light_userdata:base_handle[, boolean:force_parent-based_address[, boolean:force_commandline_index-based_address]]]
---@param base_handle? handle
---@param force_parent_based_address? boolean
---@param force_commandline_index_based_address? boolean
---@return string # numeric_root_address
function Addr(handle, base_handle, force_parent_based_address, force_commandline_index_based_address) end

---@param handle handle # light_userdata:handle, light_userdata:base_handle[, boolean:escape_names]]
---@param base_handle? handle
---@param escape_names? boolean
---@return string # numeric_root_address
function AddrNative(handle, base_handle, escape_names) end

---@param handle handle # light_userdata:handle
---@return integer # index
function Index(handle) end

---@param handle handle # light_userdata:handle
---@return handle # parent_handle
function Parent(handle) end

---@param handle handle # light_userdata:handle
---@return integer # child_count
function Count(handle) end

---@param handle handle # light_userdata:handle
---@return integer # child_count
function MaxCount(handle) end

---@param handle1 handle # light_userdata:handle, light_userdata:handle
---@param handle2 handle
---@return boolean # is_equal, string # what_differs
function Compare(handle1, handle2) end

---@param handle handle # light_userdata:handle, integer:size
---@param size integer
---@return nothing
function Resize(handle, size) end

---@param handle handle # light_userdata:handle, integer:index(1-based)
---@param index integer
---@return handle # child_handle
function Ptr(handle, index) end

---@param handle handle # light_userdata:handle, integer:index(1-based)
---@param index integer
---@return handle # child_handle
function CmdlinePtr(handle, index) end

---@param handle handle # light_userdata:handle
---@return table # {handle:child_handles}
function Children(handle) end

---@param handle handle # light_userdata:handle
---@return table # {handle:child_handles}
function CmdlineChildren(handle) end

---@param handle handle # light_userdata:handle
---@return handle # current_child or nothing
function CurrentChild(handle) end

---@param handle handle # light_userdata:handle, integer:child_index(1-based)[, string:class[, light_userdata:undo]]
---@param child_index? integer
---@param class? string
---@param undo? handle
---@return handle # child_handle
function Create(handle, child_index, class, undo) end

---@param handle? handle # light_userdata:handle[, string:class[, light_userdata:undo[, integer:count]]]
---@param class? string
---@param undo? handle
---@param count? integer
---@return handle # child_handle
function Append(handle, class, undo, count) end

---@param handle? handle # light_userdata:handle[, string:class[, light_userdata:undo]]
---@param class? string
---@param undo? handle
---@return handle # child_handle
function Aquire(handle, class, undo) end

---@param handle handle # light_userdata:handle, integer:child_index(1-based)[, light_userdata:undo]
---@param child_index? integer
---@param undo? handle
---@return nothing
function Delete(handle, child_index, undo) end

---@param handle handle # light_userdata:handle, integer:child_index(1-based)[, string:class[, light_userdata:undo[, integer:count]]]
---@param child_index? integer
---@param class? string
---@param undo? handle
---@param count? integer
---@return handle # child_handle
function Insert(handle, child_index, class, undo, count) end

---@param handle handle # light_userdata:handle, integer:child_index(1-based)[, light_userdata:undo]
---@param child_index? integer
---@param undo? handle
---@return nothing
function Remove(handle, child_index, undo) end

---@param dst_handle handle # light_userdata:dst_handle, light_userdata:src_handle[, light_userdata:undo]
---@param src_handle? handle
---@param undo? handle
---@return nothing
function Copy(dst_handle, src_handle, undo) end

---@param handle handle # light_userdata:handle, handle:object_to_check
---@param object_to_check handle
---@return nothing
function HasParent(handle, object_to_check) end

---@param handle handle # light_userdata:handle, string:change_level_enum_name
---@param change_level_enum_name string
---@return nothing
function Changed(handle, change_level_enum_name) end

---@param handle handle # light_userdata:handle
---@return boolean # object_is_empty
function IsEmpty(handle) end

---@param handle handle # light_userdata:handle
---@return boolean # object_is_locked
function IsLocked(handle) end

---@param handle handle # light_userdata:handle
---@return nothing
function PrepareAccess(handle) end

---@param handle handle # light_userdata:handle, string:property_name, string:property_value[, integer:override_change_level(Enums.ChangeLevel)]
---@param property_name string
---@param property_value? string
---@param override_change_level? integer
---@return nothing
function Set(handle, property_name, property_value, override_change_level) end

---@param handle_of_parent handle # light_userdata:handle_of_parent, string:property_name, string:property_value[, boolean:recursive (default: false)]
---@param property_name string
---@param property_value? string
---@param recursive_? boolean
---@return nothing
function SetChildren(handle_of_parent, property_name, property_value, recursive_) end

---@param handle_of_parent handle # light_userdata:handle_of_parent, string:property_name, string:property_value[, boolean:recursive (default: false)]
---@param property_name string
---@param property_value? string
---@param recursive_? boolean
---@return nothing
function SetChildrenRecursive(handle_of_parent, property_name, property_value, recursive_) end

---@param handle handle # light_userdata:handle, string:property_name[, integer:role(Enums.Roles)]
---@param property_name? string
---@param role? integer
---@return handle # child or string # property (if 'role' provided - always string)
function Get(handle, property_name, role) end

---@param handle handle # light_userdata:handle
---@return integer # property_count
function PropertyCount(handle) end

---@param handle handle # light_userdata:handle, integer:property_index
---@param property_index integer
---@return string # property_name
function PropertyName(handle, property_index) end

---@param handle handle # light_userdata:handle, integer:property_index
---@param property_index integer
---@return string # property_type
function PropertyType(handle, property_index) end

---@param handle handle # light_userdata:handle, integer:property_index
---@param property_index integer
---@return table # {string:read_only, string:import_ignore, string:export_ignore}
function PropertyInfo(handle, property_index) end

---@param handle handle # light_userdata:handle
---@return boolean # result
function IsValid(handle) end

---@param handle handle # light_userdata:handle
---@return boolean # result
function IsClass(handle) end

---@param handle handle # light_userdata:handle
---@return string # class_name
function GetClass(handle) end

---@param handle handle # light_userdata:handle
---@return string # class_name
function GetChildClass(handle) end

---@param handle handle # light_userdata:handle
---@return handle # handle
function GetAssignedObj(handle) end

---@param handle handle # light_userdata:handle
---@return boolean # result
function HasEditSettingUI(handle) end

---@param handle handle # light_userdata:handle
---@return boolean # result
function HasEditUI(handle) end

---@param handle handle # light_userdata:handle
---@return string # ui_editor_name
function GetUIEditor(handle) end

---@param handle handle # light_userdata:handle
---@return string # ui_settings_name
function GetUISettings(handle) end

---@param search_start_handle handle # light_userdata:search_start_handle, string:search_class_name
---@param search_class_name string
---@return handle # found_handle
function FindParent(search_start_handle, search_class_name) end

---@param search_start_handle handle # light_userdata:search_start_handle, string:search_name[, string:search_class_name]
---@param search_name? string
---@param search_class_name? string
---@return handle # found_handle
function Find(search_start_handle, search_name, search_class_name) end

---@param search_start_handle handle # light_userdata:search_start_handle, string:search_name[, string:search_class_name]
---@param search_name? string
---@param search_class_name? string
---@return handle # found_handle
function FindRecursive(search_start_handle, search_name, search_class_name) end

---@param search_start_handle handle # light_userdata:search_start_handle, string:search_name
---@param search_name string
---@return handle # found_handle
function FindWild(search_start_handle, search_name) end

---@param handle handle # light_userdata:handle, string:file_path, string:file_name
---@param file_path string
---@param file_name string
---@return boolean # success
function Import(handle, file_path, file_name) end

---@param handle handle # light_userdata:handle, string:file_path, string:file_name
---@param file_path string
---@param file_name string
---@return boolean # success
function Export(handle, file_path, file_name) end

---@param handle? handle # light_userdata:handle[, boolean:camel_case_to_file_name]
---@param camel_case_to_file_name? boolean
---@return string # file_name
function GetExportFileName(handle, camel_case_to_file_name) end

---@param handle handle # light_userdata:handle, string:file_path, string:file_name
---@param file_path string
---@param file_name string
---@return boolean # success
function Load(handle, file_path, file_name) end

---@param handle handle # light_userdata:handle, string:file_path, string:file_name
---@param file_path string
---@param file_name string
---@return boolean # success
function Save(handle, file_path, file_name) end

---@param handle handle # light_userdata:handle, light_userdata:dest_handle, boolean:focus_search_allowed(default:true)
---@param dest_handle handle
---@param focus_search_allowed boolean
---@return nothing
function CommandCall(handle, dest_handle, focus_search_allowed) end

---@param handle handle # light_userdata:handle
---@return nothing
function CommandAt(handle) end

---@param handle handle # light_userdata:handle
---@return nothing
function CommandDelete(handle) end

---@param handle handle # light_userdata:handle
---@return nothing
function CommandStore(handle) end

---@param handle handle # light_userdata:handle
---@return nothing
function CommandCreateDefaults(handle) end

---@param handle handle # light_userdata:handle, {[float:value[0..100]], [boolean:faderDisabled], [string:token(Fader*)]}
---@param table table # light_userdata:handle, {[float:value[0..100]], [boolean:faderDisabled], [string:token(Fader*)]}
---@return nothing
function SetFader(handle, table) end

---@param handle handle # light_userdata:handle, {[string:token(Fader*)], [integer:index]}
---@param table table # light_userdata:handle, {[string:token(Fader*)], [integer:index]}
---@return float # value[0..100]
function GetFader(handle, table) end

---@param handle handle # light_userdata:handle, {[string:token(Fader*)], [integer:index]}
---@param table table # light_userdata:handle, {[string:token(Fader*)], [integer:index]}
---@return string # text
function GetFaderText(handle, table) end

---@param handle handle # light_userdata:handle
---@return integer # count
function GetLineCount(handle) end

---@param handle handle # light_userdata:handle, integer:line_number
---@param line_number integer
---@return string # line_content
function GetLineAt(handle, line_number) end

---@param handle handle # light_userdata:handle
---@return boolean # result
function HasActivePlayback(handle) end

---@param handle handle # light_userdata:handle
---@return boolean # result
function HasReferences(handle) end

---@param handle handle # light_userdata:handle
---@return boolean # result
function HasDependencies(handle) end

---@param handle handle # light_userdata:handle
---@return table # {handle:handle}
function GetReferences(handle) end

---@param handle handle # light_userdata:handle
---@return table # {handle:handle}
function GetDependencies(handle) end

---@param handle handle # light_userdata:handle, string:name_value
---@param name_value string
---@return nothing
function InputSetTitle(handle, name_value) end

---@param handle handle # light_userdata:handle, string:value
---@param value string
---@return nothing
function InputSetValue(handle, value) end

---@param handle handle # light_userdata:handle, string:name_value
---@param name_value string
---@return nothing
function InputSetEditTitle(handle, name_value) end

---@param handle handle # light_userdata:handle, string:parameter name, string:parameter value
---@param parameter_name string
---@param parameter_value string
---@return nothing
function InputSetAdditionalParameter(handle, parameter_name, parameter_value) end

---@param handle handle # light_userdata:handle
---@return nothing
function InputRun(handle) end

---@param handle handle # light_userdata:handle, string:function name[, ...parameters to function]
---@param function_name? string
---@return string|handle|boolean|integer|table|nothing # <depends on function>
function InputCallFunction(handle, function_name) end

---@param handle handle # light_userdata:handle, string:function name
---@param function_name string
---@return true or nil
function InputHasFunction(handle, function_name) end

---@param handle handle # light_userdata:handle, integer:length
---@param length integer
---@return nothing
function InputSetMaxLength(handle, length) end

---@param handle handle # light_userdata:handle, string:name, string:value[, {[left={...}][right={...}]}:appearance]
---@param name string
---@param value? string
---@param table table
---@return nothing
function AddListStringItem(handle, name, value, table) end

---@param handle handle # light_userdata:handle, string:name, string:value, light_userdata:target handle[,{[left={...}][right={...}]}:appearance]
---@param name string
---@param value string
---@param target_handle? handle
---@param table table
---@return nothing
function AddListPropertyItem(handle, name, value, target_handle, table) end

---@param handle handle # light_userdata:handle, string:name, number:value[,light_userdata:base handle[, {[left={...}][right={...}]}:appearance]]
---@param name string
---@param value? number
---@param base_handle? handle
---@param table table
---@return nothing
function AddListNumericItem(handle, name, value, base_handle, table) end

---@generic luafunction
---@generic anyluatype
---@param handle handle # light_userdata:handle, string:name, string:value/function name, lua_function:callback reference[, <any lua type>:argument to pass to callback[, {[left={...}][right={...}]}:appearance]]
---@param name string
---@param value_or_function_name string
---@param callback_reference? `luafunction`
---@param argument_to_pass_to_callback? `anyluatype`
---@param table table
---@return nothing
function AddListLuaItem(handle, name, value_or_function_name, callback_reference, argument_to_pass_to_callback, table) end

---@param handle handle # light_userdata:handle, light_userdata:target object[, (string: explicit name[, {[left={...}][right={...}]}:appearance] | enum{Roles}: role [, :boolean: extended_name[, {[left={...}][right={...}]}:appearance]])]
---@param target_object? handle
---@param explicit_name? string
---@param table table
---@return nothing
function AddListObjectItem(handle, target_object, explicit_name, table) end

---@param handle handle # light_userdata:handle, table{item={[1]=name, [2]=value}, ...}
---@param table table # light_userdata:handle, table{item={[1]=name, [2]=value}, ...}
---@return nothing
function AddListStringItems(handle, table) end

---@param handle handle # light_userdata:handle, table{item={[1]=name, [2]=property name, [3]=target handle}, ...}
---@param table table # light_userdata:handle, table{item={[1]=name, [2]=property name, [3]=target handle}, ...}
---@return nothing
function AddListPropertyItems(handle, table) end

---@param handle handle # light_userdata:handle, table{item={[1]=name, [2]=integer:value}, ...}
---@param table table # light_userdata:handle, table{item={[1]=name, [2]=integer:value}, ...}
---@return nothing
function AddListNumericItems(handle, table) end

---@param handle handle ---@param table table # table{item={[1]=name, [2]=value/function name, [3]=callback reference[, [4]=argument of any lua type to pass to callback]}, ...}
---@return nothing
function AddListLuaItems(handle, table) end

---@param handle handle # light_userdata:handle, light_userdata:parent[, enum{Roles}:role]
---@param parent? handle
---@param table table
---@return nothing
function AddListChildren(handle, parent, table) end

---@param handle handle # light_userdata:handle, light_userdata:parent[, enum{Roles}:role]
---@param parent? handle
---@param table table
---@return nothing
function AddListChildrenNames(handle, parent, table) end

---@param handle handle # light_userdata:handle, light_userdata:parent[, enum{Roles}:role]
---@param parent? handle
---@param table table
---@return nothing
function AddListRecursiveNames(handle, parent, table) end

---@param handle handle # light_userdata:handle, string:name
---@param name string
---@return nothing
function RemoveListItem(handle, name) end

---@param handle handle # light_userdata:handle
---@return nothing
function ClearList(handle) end

---@param handle handle # light_userdata:handle, string:name_value
---@param name_value string
---@return nothing
function SelectListItemByName(handle, name_value) end

---@param handle handle # light_userdata:handle, string:value
---@param value string
---@return nothing
function SelectListItemByValue(handle, value) end

---@param handle handle # light_userdata:handle, integer:index(1-based)
---@param index integer
---@return nothing
function SelectListItemByIndex(handle, index) end

---@param handle handle # light_userdata:handle, integer:index
---@param index integer
---@return nothing
function IsListItemEnabled(handle, index) end

---@param handle handle # light_userdata:handle, integer:index[, bool:enable(default:true)]
---@param index? integer
---@param enable? boolean
---@return nothing
function SetEnabledListItem(handle, index, enable) end

---@param handle handle # light_userdata:handle, integer:index
---@param index integer
---@return nothing
function IsListItemEmpty(handle, index) end

---@param handle handle # light_userdata:handle, integer:index[, bool:empty(default:true)]
---@param index? integer
---@param empty? boolean
---@return nothing
function SetEmptyListItem(handle, index, empty) end

---@param handle handle # light_userdata:handle, integer:index
---@param index integer
---@return string # value
function GetListItemValueStr(handle, index) end

---@param handle handle # light_userdata:handle, integer:index, string:value
---@param index integer
---@param value string
---@return nothing
function SetListItemValueStr(handle, index, value) end

---@param handle handle # light_userdata:handle, integer:index
---@param index integer
---@return integer # value
function GetListItemValueI64(handle, index) end

---@param handle handle # light_userdata:handle, integer:index
---@param index integer
---@return string # name
function GetListItemName(handle, index) end

---@param handle handle # light_userdata:handle, integer:index, string:name
---@param index integer
---@param name string
---@return nothing
function SetListItemName(handle, index, name) end

---@param handle handle # light_userdata:handle, integer:index
---@param index integer
---@return table # {left={AppearanceData}, right={AppearanceData}}
function GetListItemAppearance(handle, index) end

---@param handle handle # light_userdata:handle, integer:index, {[left={...AppearanceData...}][right={...AppearanceData...}]}
---@param index integer
---@param table table
---@return nothing
function SetListItemAppearance(handle, index, table) end

---@param handle handle # light_userdata:handle, integer:index
---@param index integer
---@return handle # button or nil if not visible
function GetListItemButton(handle, index) end

---@param handle handle # light_userdata:handle
---@return integer # 1-based index
function GetListSelectedItemIndex(handle) end

---@param handle handle # light_userdata:handle
---@return integer # amount of items in the list
function GetListItemsCount(handle) end

---@param handle handle # light_userdata:handle, string:value
---@param value string
---@return integer # 1-based index
function FindListItemByValueStr(handle, value) end

---@param handle handle # light_userdata:handle, string:value
---@param value string
---@return integer # 1-based index
function FindListItemByName(handle, value) end

---@param handle_to_UIGrid handle # light_userdata:handle to UIGrid (or derived)
---@return handle # handle to GridBase
function GridGetBase(handle_to_UIGrid) end

---@param handle_to_UIGrid handle # light_userdata:handle to UIGrid (or derived)
---@return handle # handle to GridData
function GridGetData(handle_to_UIGrid) end

---@param handle_to_UIGrid handle # light_userdata:handle to UIGrid (or derived)
---@return handle # handle to GridSelection
function GridGetSelection(handle_to_UIGrid) end

---@generic x
---@generic y
---@param handle_to_UIGrid handle # light_userdata:handle to UIGrid (or derived), x, y
---@param x `x`
---@param y `y`
---@return nothing
function GridMoveSelection(handle_to_UIGrid, x, y) end

---@param handle_to_UIGrid handle # light_userdata:handle to UIGrid (or derived)
---@return table # array of {r, c, r_UniqueId, r_GroupId, c_UniqueId, c_GroupId} cells in the selection
function GridGetSelectedCells(handle_to_UIGrid) end

---@param handle_to_UIGrid handle # light_userdata:handle to UIGrid (or derived)
---@return handle # handle to GridSettings
function GridGetSettings(handle_to_UIGrid) end

---@param handle_to_UIGrid handle # light_userdata:handle to UIGrid (or derived)
---@return table # {r, c}
function GridGetDimensions(handle_to_UIGrid) end

---@param handle_to_UIGrid handle # light_userdata:handle to UIGrid (or derived)
---@return table # {v = {index, offset}, h={index, offset}}
function GridGetScrollOffset(handle_to_UIGrid) end

---@param handle_to_UIGrid handle # light_userdata:handle to UIGrid (or derived), integer: columnId, integer:size in pixels
---@param columnId integer
---@param size_in_pixels integer
---@return nothing
function GridSetColumnSize(handle_to_UIGrid, columnId, size_in_pixels) end

---@param handle_to_UIGrid handle # light_userdata:handle to UIGrid (or derived)
---@return table # {r, c}
function GridGetScrollCell(handle_to_UIGrid) end

---@param handle_to_UIGrid handle # light_userdata:handle to UIGrid (or derived), {r, c}:cell
---@param table table # light_userdata:handle to UIGrid (or derived), {r, c}:cell
---@return table # {text, color={text, back}}
function GridGetCellData(handle_to_UIGrid, table) end

---@param handle_to_UIGrid handle # light_userdata:handle to UIGrid (or derived), {r, c}:cell
---@param table table # light_userdata:handle to UIGrid (or derived), {r, c}:cell
---@return boolean
function GridIsCellVisible(handle_to_UIGrid, table) end

---@param handle_to_UIGrid handle # light_userdata:handle to UIGrid (or derived), {r, c}:cell
---@param table table # light_userdata:handle to UIGrid (or derived), {r, c}:cell
---@return boolean
function GridCellExists(handle_to_UIGrid, table) end

---@param handle_to_UIGrid handle # light_userdata:handle to UIGrid (or derived), {r, c}:cell
---@param table table # light_userdata:handle to UIGrid (or derived), {r, c}:cell
---@return boolean
function GridIsCellReadOnly(handle_to_UIGrid, table) end

---@param handle_to_UIGrid handle # light_userdata:handle to UIGrid (or derived), {r, c}:cell
---@param table table # light_userdata:handle to UIGrid (or derived), {r, c}:cell
---@return nothing
function GridScrollCellIntoView(handle_to_UIGrid, table) end

---@param handle_to_UIGrid handle # light_userdata:handle to UIGrid (or derived), {r, c}:cell
---@param table table # light_userdata:handle to UIGrid (or derived), {r, c}:cell
---@return table # {x, y, w, h}
function GridGetCellDimensions(handle_to_UIGrid, table) end

---@param handle_to_UIGrid handle # light_userdata:handle to UIGrid (or derived), integer: rowId
---@param rowId integer
---@return integer|nil # <parent row id> # (integer) or nil (if there's no parent)
function GridGetParentRowId(handle_to_UIGrid, rowId) end

---@param handle_to_UIGrid handle # light_userdata:handle to UIGrid (or derived)
---@return table # {r, c} or nil
function GridsGetExpandHeaderCell(handle_to_UIGrid) end

---@param handle_to_UIGrid handle # light_userdata:handle to UIGrid (or derived)
---@return boolean|nil
function GridsGetExpandHeaderCellState(handle_to_UIGrid) end

---@param handle_to_UIGrid handle # light_userdata:handle to UIGrid (or derived), {r, c}:cell
---@param table table # light_userdata:handle to UIGrid (or derived), {r, c}:cell
---@return integer|nil # <width in pixels or nil>
function GridsGetLevelButtonWidth(handle_to_UIGrid, table) end

---@param handle_to_UIGrid handle # light_userdata:handle to UIGrid (or derived), integer: columnId
---@param columnId integer
---@return integer|nil # <column index or nil> # (if there's no such visible column)
function GridsGetColumnById(handle_to_UIGrid, columnId) end

---@param handle_to_UIGrid handle # light_userdata:handle to UIGrid (or derived), integer: rowId
---@param rowId integer
---@return integer|nil # <row index or nil> # (if there's no such visible row)
function GridsGetRowById(handle_to_UIGrid, rowId) end

---@param handle_to_UIObject handle # light_userdata:handle to UIObject
---@return handle # overlay_handle
function GetOverlay(handle_to_UIObject) end

---@param handle_to_UIObject handle # light_userdata:handle to UIObject
---@return handle # display_handle
function GetDisplay(handle_to_UIObject) end

---@param handle_to_UIObject handle # light_userdata:handle to UIObject
---@return integer # display_index
function GetDisplayIndex(handle_to_UIObject) end

---@param handle_to_UIObject handle # light_userdata:handle to UIObject
---@return handle # handle
function GetScreen(handle_to_UIObject) end

---@param handle_to_UIObject handle # light_userdata:handle to UIObject
---@return integer # count
function GetUIChildrenCount(handle_to_UIObject) end

---@param handle_to_UIObject handle # light_userdata:handle to UIObject
---@return nothing
function ClearUIChildren(handle_to_UIObject) end

---@param handle_to_UIObject handle # light_userdata:handle to UIObject, integer:index(1-based)
---@param index integer
---@return handle # handle to UIObject
function GetUIChild(handle_to_UIObject, index) end

---@param handle_to_UIObject handle # light_userdata:handle to UIObject
---@return table # <array of references to children of passed UIObject>
function UIChildren(handle_to_UIObject) end

---@param handle_to_UIObject? handle # light_userdata:handle to UIObject[, number:seconds to wait[, bool:force to re-init, default - false]]
---@param seconds_to_wait? number
---@param force_to_re_init boolean
---@return boolean # true on success, nil on timeout or if object doesn't exist
function WaitInit(handle_to_UIObject, seconds_to_wait, force_to_re_init) end

---@param handle_to_UIObject handle # light_userdata:handle to UIObject, integer:expected amount of children[, number:seconds to wait]
---@param expected_amount_of_children? integer
---@param seconds_to_wait? number
---@return boolean # true on success, nil on timeout or if object doesn't exist
function WaitChildren(handle_to_UIObject, expected_amount_of_children, seconds_to_wait) end

---@param handle_to_UIObject handle # light_userdata:handle to UIObject, function:callback to invoke on deletion[, any:argument to pass by]
---@param callback_to_invoke_on_deletion? function
---@param argument_to_pass_by? any
---@return boolean # true on success, nil on failure
function HookDelete(handle_to_UIObject, callback_to_invoke_on_deletion, argument_to_pass_by) end

---@param handle_to_UIObject handle # light_userdata:handle to UIObject
---@return boolean # is visible
function IsVisible(handle_to_UIObject) end

---@param handle_to_UIObject handle # light_userdata:handle to UIObject
---@return boolean # is enabled
function IsEnabled(handle_to_UIObject) end

---@param handle handle # light_userdata:handle, callback:function
---@param callback function
---@return nothing
function ShowModal(handle, callback) end

---@param handle handle # light_userdata:handle, integer:x, integer:y
---@param x integer
---@param y integer
---@return nothing
function SetPositionHint(handle, x, y) end

---@param handle handle # light_userdata:handle, integer:scroll type (see 'ScrollType' enum)
---@param scroll_type integer
---@return boolean # true if scroll of the requested type is needed
function ScrollIsNeeded(handle, scroll_type) end

---@param handle handle # light_userdata:handle, integer:scroll type (see 'ScrollType' enum), integer:scroll entity (item or area, see 'ScrollParamEntity' enum), integer:value type (absolute or relative, see 'ScrollParamValueType' enum), number: value to scroll (items - 1-based), boolean: updateOpposite side
---@param scroll_type integer
---@param scroll_entity integer
---@param value_type integer
---@param value_to_scroll number
---@param updateOpposite_side boolean
---@return boolean # true scroll
function ScrollDo(handle, scroll_type, scroll_entity, value_type, value_to_scroll, updateOpposite_side) end

---@param handle handle # light_userdata:handle, integer:scroll type (see 'ScrollType' enum)
---@param scroll_type integer
---@return table # {index(1-based), offset, visibleArea, totalArea, itemsCount, itemsOnPage} or nil
function ScrollGetInfo(handle, scroll_type) end

---@param handle handle # light_userdata:handle, integer:scroll type (see 'ScrollType' enum), integer:1-based item idx
---@param scroll_type integer
---@param one_based_item_idx integer
---@return integer # size of the item of nil
function ScrollGetItemSize(handle, scroll_type, one_based_item_idx) end

---@param handle handle # light_userdata:handle, integer:scroll type (see 'ScrollType' enum), integer:1-based item idx
---@param scroll_type integer
---@param one_based_item_idx integer
---@return integer # offset of the item or nil
function ScrollGetItemOffset(handle, scroll_type, one_based_item_idx) end

---@param handle handle # light_userdata:handle, integer:scroll type (see 'ScrollType' enum), integer:offset
---@param scroll_type integer
---@param offset integer
---@return integer # 1-based item index
function ScrollGetItemByOffset(handle, scroll_type, offset) end

---@param handle_to_UIObject handle # light_userdata:handle to UIObject, string:topic name
---@param topic_name string
---@return nothing
function SetContextSensHelpLink(handle_to_UIObject, topic_name) end

---@param handle_to_UILayoutGrid handle # light_userdata:handle to UILayoutGrid, integer:index
---@param index integer
---@return integer # size
function UILGGetColumnWidth(handle_to_UILayoutGrid, index) end

---@param handle_to_UILayoutGrid handle # light_userdata:handle to UILayoutGrid, integer:index
---@param index integer
---@return integer # size
function UILGGetRowHeight(handle_to_UILayoutGrid, index) end

---@param handle_to_UILayoutGrid handle # light_userdata:handle to UILayoutGrid, integer:index
---@param index integer
---@return integer # x
function UILGGetColumnAbsXLeft(handle_to_UILayoutGrid, index) end

---@param handle_to_UILayoutGrid handle # light_userdata:handle to UILayoutGrid, integer:index
---@param index integer
---@return integer # x
function UILGGetColumnAbsXRight(handle_to_UILayoutGrid, index) end

---@param handle_to_UILayoutGrid handle # light_userdata:handle to UILayoutGrid, integer:index
---@param index integer
---@return integer # y
function UILGGetRowAbsYTop(handle_to_UILayoutGrid, index) end

---@param handle_to_UILayoutGrid handle # light_userdata:handle to UILayoutGrid, integer:index
---@param index integer
---@return integer # y
function UILGGetRowAbsYBottom(handle_to_UILayoutGrid, index) end

---@generic ctx
---@param handle_to_Overlay handle # light_userdata:handle to Overlay, callbackName:string[, ctx:anything]
---@param callbackName? string
---@param anything? ctx
---@return nothing
function OverlaySetCloseCallback(handle_to_Overlay, callbackName, anything) end


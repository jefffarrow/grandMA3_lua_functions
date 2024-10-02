--MA3 Software version: 2.1.1.2

---@meta

---@class LuaFileSystem
local lfs = {}

---@alias enum enum #
---@alias value value #
---@alias nothing nothing # no feedback to MA system monitor
---@alias formatted_command string # formatted MA3 command string
---@alias result result # MA system monitor restult (Ok, Syntax Error, Illegal Command...)
---@alias light_userdata lightuserdata # MA UID
---@alias handle lightuserdata # MA UID
---@alias double double # 64-bit floating-point number (C)
---@alias float float # 64-bit floating-point number (C)
---@alias pCertificate pCertificate # OverallDeviceCertificate
---@alias LuaInteger LuaInteger # The integer that correlates to an objects handle

--Object-Free API

---@return nothing
---@param formatted_command string # string:formatted_command ...
function Echo(formatted_command) end

---@return nothing
---@param formatted_command string # string:formatted_command ...
function ErrEcho(formatted_command) end

---@return nothing
---@param formatted_command string # string:formatted_command ...
function Printf(formatted_command) end

---@return nothing
---@param formatted_command string # string:formatted_command ...
function ErrPrintf(formatted_command) end

---@return string # command_execution_result ('Ok', 'Syntax Error', 'Illegal Command', ...)
---@param formatted_command? string # string:formatted_command[ ,light_userdata:undo], ...
---@param undo? handle
function Cmd(formatted_command, undo) end

---@return nothing
---@param command? string # string:command[, light_userdata:undo[, light_userdata:target]]
---@param undo? handle
---@param target? handle
function CmdIndirect(command, undo, target) end

---@return nothing
---@param command? string # string:command[, light_userdata:undo[, light_userdata:target]]
---@param undo? handle
---@param target? handle
function CmdIndirectWait(command, undo, target) end

---@return string # ostype
function HostOS() end

---@return string # hosttype
function HostType() end

---@return string # hostsubtype
function HostSubType() end

---@return string # serialnumber
function SerialNumber() end

---@return handle
function OverallDeviceCertificate() end

---@return boolean # success
---@param ip string # string:ip, string:command
---@param command string
function RemoteCommand(ip, command) end

---@return string # releasetype
function ReleaseType() end

---@return string # devmode3d
function DevMode3d() end

---@return string # version
function Version() end

---@return table # build_details
function BuildDetails() end

---@return string # showfile_status
function GetShowFileStatus() end

---@return table # config_details
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
function CurrentScreenConfig() end

---@return handle
function CurrentExecPage() end

---@return handle
function SelectedSequence() end

---@return handle
function GetCurrentCue() end

---@return handle
function SelectedTimecode() end

---@return handle
function SelectedLayout() end

---@return handle
function SelectedTimer() end

---@return handle
function GetSelectedAttribute() end

---@return handle
function SelectedFeature() end

---@return handle
function SelectedDrive() end

---@return handle # executor, handle # page
---@param executor integer # integer:executor
function GetExecutor(executor) end

---@return nothing
---@param executor handle # light_userdata:executor
function LoadExecConfig(executor) end

---@return nothing
---@param executor handle # light_userdata:executor
function SaveExecConfig(executor) end

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

---@return integer # amount_of_selected_subfixtures
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

---@return integer # subfixture_count
function GetSubfixtureCount() end

---@return handle # subfixture
---@param subfixture_index integer # integer:subfixture_index
function GetSubfixture(subfixture_index) end

---@return integer # ui_channel_count
function GetUIChannelCount() end

---@return integer # rt_channel_count
function GetRTChannelCount() end

---@return integer # attribute_count
function GetAttributeCount() end

---@return table|nil # {integer:ui_channels} or {handle:ui_channels}
---@param subfixture? integer|light_userdata
---@param return_as_handles? boolean
function GetUIChannels(subfixture, return_as_handles) end

---@return table|nil # {integer:rt_channels} or {handle:rt_channels}
---@param reference_to_fixture_object integer|light_userdata
---@param return_as_handles? boolean
function GetRTChannels(reference_to_fixture_object, return_as_handles) end

---@return table # ui_channel_descriptor
---@param subfixture_reference integer|light_userdata
---@param attribute integer|string
function GetUIChannel(subfixture_reference, attribute) end

---@return table # rt_channel_descriptor
---@param rt_channel_index integer # integer:rt_channel_index
function GetRTChannel(rt_channel_index) end

---@return handle # reference_to_attribute
---@param ui_channel_index integer # integer:ui channel index
function GetAttributeByUIChannel(ui_channel_index) end

---@return handle # fixture
---@param dmxmode handle # light_userdata:dmxmode
function FirstDmxModeFixture(dmxmode) end

---@return handle # fixture
---@param fixture handle # light_userdata:fixture
function NextDmxModeFixture(fixture) end

---@return integer # attribute_index
---@param attribute_name string # string:attribute_name
function GetAttributeIndex(attribute_name) end

---@return integer # ui_channel_index
---@param subfixture_index integer # integer:subfixture_index, integer:attribute_index
---@param attribute_index integer
function GetUIChannelIndex(subfixture_index, attribute_index) end

---@return integer # channel_function_index
---@param ui_channel_index integer # integer:ui_channel_index, integer:attribute_index
---@param attribute_index integer
function GetChannelFunctionIndex(ui_channel_index, attribute_index) end

---@return handle
---@param ui_channel_index integer # integer:ui_channel_index, integer:attribute_index
---@param attribute_index integer
function GetChannelFunction(ui_channel_index, attribute_index) end

---@return string # full_name
---@param shortName string # string:shortName
function GetTokenName(shortName) end

---@return string # full_name
---@param token_index integer # integer:token_index
function GetTokenNameByIndex(token_index) end

---@return nothing
---@param uichannelindex handle
---@param ProgPhaserArray Table # {[abs_preset][rel_preset][fade][delay][speed][phase][measure][gridpos]  {[function:<val>] [absolute][absolute_value][relative] [accel][accel_type][decel][decel_type] [trans][width] [integrated]}*}
function SetProgPhaser(uichannelindex, ProgPhaserArray) end

---@return nothing
---@param uichannelindex number
---@param step number
---@param PhaserValueArray table # {[function] [absolute][absolute_value][relative] [accel][accel_type][decel][decel_type>] [trans][width] [integrated]})
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
---@param color_model string
---@param tripel1 float
---@param tripel2 float
---@param tripel3 float
---@param brightness float
---@param quality float
---@param const_brightness boolean
function SetColor(color_model, tripel1, tripel2, tripel3, brightness, quality, const_brightness) end

---@return table # phaser_data
---@param preset_handle handle # light_userdata:preset_handle[, boolean:phasers_only(default=false)[, boolean:by_fixtures(default=true)]]
---@param phasers_only? boolean
---@param by_fixtures? boolean
function GetPresetData(preset_handle, phasers_only, by_fixtures) end

---@return integer # flag
function ColMeasureDeviceDarkCalibrate() end

---@return table # values
function ColMeasureDeviceDoMeasurement() end

---@return handle
---@param address string # string:address
function GetObject(address) end

---@return table # {handle:handles}
---@param address string # string:address[, {['selected_as_default'=boolean:enabled], ['reverse_order'=boolean:enabled]}
function ObjectList(address) end

---@return handle
---@param address? string # string:address[, light_userdata:base_handle]
---@param base_handle? handle
function FromAddr(address, base_handle) end

---@return string # address
---@param handle handle # light_userdata:handle, boolean:with_name
---@param with_name boolean
function ToAddr(handle, with_name) end

---@return handle
---@param handle integer # integer:handle
function IntToHandle(handle) end

---@return integer # handle
---@param handle handle # light_userdata:handle
function HandleToInt(handle) end

---@return handle
---@param handle string # string:handle(in H#... format)
function StrToHandle(handle) end

---@return string # handle(in H#... format)
---@param handle handle # light_userdata:handle
function HandleToStr(handle) end

---@return boolean # valid
---@param handle handle # light_userdata:handle
function IsObjectValid(handle) end

---@return boolean # success
---@param file_name string # string:file_name, table:export_data
---@param export_data table
function Export(file_name, export_data) end

---@return table # content
---@param file_name string # string:file_name
function Import(file_name) end

---@return boolean # success
---@param file_name string # string:file_name, table:export_data
---@param export_data table
function ExportJson(file_name, export_data) end

---@return boolean # success
---@param file_name string # string:file_name, table:export_data
---@param export_data table
function ExportCSV(file_name, export_data) end

---@return integer # hook_id
---@param callback function # function:callback, light_userdata:handle, light_userdata:plugin_handle[, light_userdata:target]
---@param handle handle
---@param plugin_handle? handle
---@param target? handle
function HookObjectChange(callback, handle, plugin_handle, target) end

---@return boolean # true or nothing
---@param handle handle # light_userdata:handle[ ,integer:change_level_threshold]
---@param change_level_threshold? integer
function PrepareWaitObjectChange(handle, change_level_threshold) end

---@return nothing
---@param hook_id integer # integer:hook_id
function Unhook(hook_id) end

---@return integer # amount of removed hooks
---@param callback function # function:callback(can be nil), light_userdata:handle to target(can be nil), light_userdata:handle to context (can be nil)
---@param handle_to_target handle
---@param handle_to_context handle
function UnhookMultiple(callback, handle_to_target, handle_to_context) end

---@return nothing
function DumpAllHooks() end

---@return string # path
---@param path_type string
---@param create? boolean
function GetPath(path_type_or_integer, path_type, create) end

---@return string # path_type_name
---@param target_object handle # light_userdata:target_object[ ,integer:content_type (Enums.PathContentType)]
---@param content_type_? integer
function GetPathType(target_object, content_type_) end

---@return string # overwritten_path
---@param path_type string
---@param path? string
---@param create? boolean
function GetPathOverrideFor(path_type_or_integer, path_type, path, create) end

---@return string # seperator
function GetPathSeparator() end

---@return boolean # result
---@param path string # string:path
function FileExists(path) end

---@return boolean # result
---@param path string # string:path
function CreateDirectoryRecursive(path) end

---@return nothing
function SyncFS() end

---@return table # table of {name:string, size:int, time:int}
---@param path string # string:path[ ,string:filter]
---@param filter? string
function DirList(path, filter) end

---@return integer # progressbar_index
---@param name string # string:name
function StartProgress(name) end

---@return nothing
---@param progressbar_index integer # integer:progressbar_index
function StopProgress(progressbar_index) end

---@return nothing
---@param progressbar_index integer # integer:progressbar_index, string:text
---@param text string
function SetProgressText(progressbar_index, text) end

---@return nothing
---@param progressbar_index integer # integer:progressbar_index, integer:start, integer:end
---@param start integer
---@param eNd integer
function SetProgressRange(progressbar_index, start, eNd) end

---@return nothing
---@param progressbar_index integer # integer:progressbar_index, integer:value
---@param value integer
function SetProgress(progressbar_index, value) end

---@return nothing
---@param progressbar_index? integer # integer:progressbar_index[, integer:delta]
---@param delta? integer
function IncProgress(progressbar_index, delta) end

---@return integer # column_id
---@param handle handle # light_userdata:handle, string:property_name
---@param property_name string
function GetPropertyColumnId(handle, property_name) end

---@return integer # column_id
---@param handle handle # light_userdata:handle, light_userdata:attribute
---@param attribute handle
function GetAttributeColumnId(handle, attribute) end

---@return nothing
---@param display_index integer # integer:display_index, string:type('press', 'char', 'release')[ ,string:char(for type 'char') or string:keycode, boolean:shift, boolean:ctrl, boolean:alt, boolean:numlock]
---@param type string
---|"'press'"
---|"'char'"
---|"'release'"
---@param keycode string
---|"'char'" # the caracter
---|"'keycode'" # the keycode
---@param shift boolean
---@param ctrl boolean
---@param alt boolean
---@param numlock boolean
function Keyboard(display_index, type, char_or_string, keycode, shift, ctrl, alt, numlock) end

---@return nothing
---@param display_index integer # integer:display_index, string:type('press', 'move', 'release')[ ,string:button('Left', 'Middle', 'Right' for 'press', 'release') or integer:abs_x, integer:abs_y)]
---@param type string
---@param button? string
---@param abs_x? integer
---@param abs_y? integer
function Mouse(display_index, type, button, abs_x, abs_y) end

---@return nothing
---@param display_index integer # integer:display_index, string:type('press', 'move', 'release'), integer:touch_id, integer:abs_x, integer:abs_y
---@param type string
---|"'press'"
---|"'move'"
---|"'release'"
---@param touch_id integer
---@param abs_x integer
---@param abs_y integer
function Touch(display_index, type, touch_id, abs_x, abs_y) end

---@return integer # time
function Time() end

---@return handle
function MouseObj() end

---@return handle
function TouchObj() end

---@return handle
function KeyboardObj() end

---@return nothing
---@param timer_function function # function:timer_function, integer:delay_time, integer:max_count[, function:cleanup][, light_userdata:context object]
---@param delay_time integer
---@param max_count integer
---@param cleanup? function
---@param context_object? handle
function Timer(timer_function, delay_time, max_count, cleanup, context_object) end

---@return integer # absolute_address
---@param patch handle # light_userdata:patch, integer:starting_address, integer:footprint
---@param starting_address integer
---@param footprint integer
function FindBestDMXPatchAddr(patch, starting_address, footprint) end

---@return boolean # no_collision_found
---@param dmx_mode handle # light_userdata:dmx_mode, string:dmx_address[ ,integer:count[ ,integer:break_index]]
---@param dmx_address? string
---@param count? integer
---@param break_index? integer
function CheckDMXCollision(dmx_mode, dmx_address, count, break_index) end

---@return boolean # no_collision_found
---@param fid integer # integer:fid[, integer:count[, integer:type]]
---@param count? integer
---@param type? integer
function CheckFIDCollision(fid, count, type) end

---@return integer # dmx_value
---@param address integer # integer:address[ ,integer:universe, boolean:mode_percent]
---@param universe? integer
---@param mode_percent? boolean
function GetDMXValue(address, universe, mode_percent) end

---@return table # {integer:dmx_values}
---@param universe integer # integer:universe[ ,boolean:modePercent]
---@param modePercent? boolean
function GetDMXUniverse(universe, modePercent) end

---@return nothing
---@param usb_device_object_handle handle # light_userdata:usb_device_object_handle, table:led_values
---@param led_values table
function SetLED(usb_device_object_handle, led_values) end

---@return table of boolean # state
---@param usb_device_object_handle handle # light_userdata:usb_device_object_handle
function GetButton(usb_device_object_handle) end

---@return handle # undo_handle
---@param undo_text string # string:undo_text
function CreateUndo(undo_text) end

---@return boolean # closed (true if was closed, false - if it's still in use)
---@param undo_handle handle # light_userdata:undo_handle
function CloseUndo(undo_handle) end

---@return boolean # desk_is_locked
function DeskLocked() end

---@return boolean # need_show_save
function NeedShowSave() end

---@return nothing
---@param handle handle # light_userdata:handle
function RefreshLibrary(handle) end

---@return nothing
---@param associated_context handle # light_userdata:associated_context
function SelectionNotifyBegin(associated_context) end

---@return nothing
---@param object_to_notify_about handle # light_userdata:object_to_notify_about
function SelectionNotifyObject(object_to_notify_about) end

---@return nothing
---@param associated_context handle # light_userdata:associated_context
function SelectionNotifyEnd(associated_context) end

---@return integer # amount of multi-patch fixtures created
---@param array_of_fixture_handles table
---@param count integer
---@param undo_text? string
function CreateMultiPatch(array_of_fixture_handles, count, undo_text) end


---@return handle # global_variables
function GlobalVars() end

---@return handle # user_variables
function UserVars() end

---@return handle # plugin_preferences
---@param plugin_name? string # [string:plugin_name]
function PluginVars(plugin_name) end

---@return handle # addon_variables
---@param addon_name string # string:addon_name
function AddonVars(addon_name) end

---@return boolean # success
---@param variables handle # light_userdata:variables, string:varname, value
---@param varname string
---@param value string
function SetVar(variables, varname, value) end

---@return value
---@param variables handle # light_userdata:variables, string:varname
---@param varname string
function GetVar(variables, varname) end

---@return boolean # success
---@param variables handle # light_userdata:variables, string:varname
---@param varname string
function DelVar(variables, varname) end

---@return boolean # success, string # result text
---@param expectations table # table:expectations
function TestPlaybackOutput(expectations) end

---@return boolean # success, string # result text
---@param expectations table # table:expectations
function TestPlaybackOutputSteps(expectations) end

---@return table # table of {string:function_name, string:arguments, string:return_values}
function GetApiDescriptor() end

---@return table # table of {string:function_name, string:arguments, string:return_values}
function GetObjApiDescriptor() end

---@return float # fps
function GetDebugFPS() end

---@return integer # current_value_in_percent
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
---@param class_name string # string:class_name
function ClassExists(class_name) end

---@return boolean # result
---@param derived_name string # string:derived_name, string:base_name
---@param base_name string
function IsClassDerivedFrom(derived_name, base_name) end

---@return integer|nil # result or nothing
---@param class_name string # string:class_name
function GetClassDerivationLevel(class_name) end

---@return string # value
---@param title? string # [string:title[, string:value[, integer:x[, integer:y]]]]
---@param value? string
---@param x? integer
---@param y? integer
function TextInput(title, value, x, y) end

---@return integer # selected_index
---@return string # selected_value
---@param popUpTable table # {title:str, caller:handle, items:table:{{'str'|'int'|'lua'|'handle', name, type-dependent}...}, selectedValue:str, x:int, y:int, target:handle, render_options:{left_icon, number, right_icon}, useTopLeft:bool, properties:{prop:value}, add_args:{FilterSupport='Yes'/'No'}}
function PopupInput(popUpTable) end

---@return boolean # result
---@param title string # [string:title [,string:message [,integer:display_index [,boolean:showCancel]]]]
---@param message? string
---@param display_index? integer
---@param showCancel? boolean
function Confirm(title,message, display_index, showCancel) end

---@return handle # display_handle
---@param display_index integer # integer:display_index
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

---@return boolean # true on success, nil on timeout
---@param handle_to_UIObject handle # light_userdata:handle to UIObject[, number:seconds to wait]
---@param seconds_to_wait? number
function WaitObjectDelete(handle_to_UIObject, seconds_to_wait) end

---@return handle # display_handle
function GetFocus() end

---@return handle # display_handle
function GetFocusDisplay() end

---@return handle to DisplayCollect
function GetDisplayCollect() end

---@return nothing
---@param handle? handle # [light_userdata:handle]
function FindBestFocus(handle) end

---@return nothing
---@param backwards? boolean # [bool:backwards(false)[, int(Focus::Reason):reason(UserTabKey)]]
function FindNextFocus(backwards) end

---@return nothing
function CloseAllOverlays() end

---@return handle # to top modal overlay
function GetTopModal() end

---@return handle # to top overlay on the display
---@param display_index integer # integer:display_index
function GetTopOverlay(display_index) end

---@return handle|nil # to modal overlay or nil on failure(timeout)
---@param seconds_to_wait? number # [number:seconds to wait]
function WaitModal(seconds_to_wait) end

---@return nothing
---@param block boolean # boolean:block
function SetBlockInput(block) end

---@return handle to texture found
---@param texture_name string # string:texture name
function FindTexture(texture_name) end

---@return handle
---@param handle_to_ScreenConfig handle # light_userdata:handle to ScreenConfig
function GetScreenContent(handle_to_ScreenConfig) end

---@class MBTable table # The input to the function must be formatted as a table using key-value pairs. The needed elements have default values that will be used if not overwritten. The values can be defined in any order if the key is defined.
---@field title? string # This is the title of the pop-up message box.
---@field backColor? string # This is the color of the frame or border of the pop-up. The value is a number or string that refers to the UI Colors in the color theme
---@field timeout? integer # The timeout value is an integer that indicates how long the message box is displayed in milliseconds. It will show a countdown timer at the top of the message area
---@field timeoutResultCancel? boolean # This element can change the return to mimic a cancel of the pop-up, which returns a false instead of a true for the success element
---@field timeoutResultID? integer # When the timeout closes the pop-up with the success value = true, a special return result can be defined
---@field icon? string # This is an icon that can be shown in the upper left corner of the pop-up. The value can be an integer or a string that refers to the number or name of a texture image
---@field titleTextColor? string # This is the text color for the title text. The value is a number or string that refers to the UI Colors in the color theme.
---@field messageTextColor? string # This is the text color for the message text. The value is a number or string that refers to the UI Colors in the color theme
---@field autoCloseOnInput? boolean # When set to true (default) the message box will close when pressing Please. If set to false, pressing Please will set the focus to the next text input when the focus is already in a text input
---@field message? string # This message text string is displayed in the main part of the pop-up. A new line can be created by adding a "\n" in the text
---@field message_align_h? integer # (Enums.AlignmentH)
---@field message_align_v? integer# (Enums.AlignmentV)
---@field display? integer|lightuserdata # where to locate the MessageBox
---@field commands_value? integer # This integer value will be returned as the result value
---@field commands_name? string # This is a string which will be shown on the button
---@field commands_order? integer # To define the order, the parameter order needs to be added with an integer value
---@field inputs_name? string # the text will be shown as a label for the input field
---@field inputs_value? string # default input value for the input field
---@field inputs_blackFilter? string # defines input characters that are not allowed
---@field inputs_whiteFilter? string # defines which input characters are allowed
---@field inputs_vkPlugin? string # name of the input pop-up, which is opened if the on-screen keyboard icon is tapped
---@field inputs_maxTextLength? integer # defines the maximum number of characters for the input
---@field inputs_order? integer # To define the order, the parameter order needs to be added with an integer value
---@field states_name? string # the text will be shown on the button
---@field states_state? boolean # the initial state of the button checkbox
---@field states_order? integer # To define the order, the parameter order needs to be added with an integer value
---@field selectors_name? string # the text will be shown on the button (swipe button) or as a label above the buttons (radio buttons)
---@field selectors_selectedValue? integer # defines the default selected value
---@field selectors_values? table # a table containing the different values available for the selector button. Each value element in the table has the following structure: ["string"]=integer The string is the name displayed for the value. The integer is the value returned and the one used for selectedValue
---@field selectors_type? integer # 0-swipe, 1-radio
---@field selectors_order? integer # To define the order, the parameter order needs to be added with an integer value

---@param mbTable MBTable
---@return table # {boolean:success, integer:result, inputs:{array of [string:name] = string:value}, states:{array of [string:name] = boolean:state}, selectors:{array of [string:name] = integer:selected-value}}
function MessageBox(mbTable) end

---@return boolean
---@param handle_to_UIGrid handle # light_userdata:handle to UIGrid (or derived), {r, c}:cell
function FSExtendedModeHasDots(handle_to_UIGrid) end



--Object-Free API

---@return string # address
---@param handle handle # light_userdata:handle,boolean:with_name
---@param with_name boolean
function ToAddr(handle, with_name) end

---@return string # information
---@param handle handle # light_userdata:handle
function Dump(handle) end

---@return string # numeric_root_address
---@param handle handle # light_userdata:handle[, light_userdata:base_handle[, boolean:force_parent-based_address[, boolean:force_commandline_index-based_address]]]
---@param base_handle? handle
---@param force_parent_based_address? boolean
---@param force_commandline_index_based_address? boolean
function Addr(handle, base_handle, force_parent_based_address, force_commandline_index_based_address) end

---@return string # numeric_root_address
---@param handle handle # light_userdata:handle, light_userdata:base_handle[, boolean:escape_names]]
---@param base_handle? handle
---@param escape_names? boolean
function AddrNative(handle, base_handle, escape_names) end

---@return integer # index
---@param handle handle # light_userdata:handle
function Index(handle) end

---@return handle # parent_handle
---@param handle handle # light_userdata:handle
function Parent(handle) end

---@return integer # child_count
---@param handle handle # light_userdata:handle
function Count(handle) end

---@return integer # child_count
---@param handle handle # light_userdata:handle
function MaxCount(handle) end

---@return boolean # is_equal, string # what_differs
---@param handle_x handle # light_userdata:handle, light_userdata:handle
---@param handle_y handle
function Compare(handle_x, handle_y) end

---@return nothing
---@param handle handle # light_userdata:handle, integer:size
---@param size integer
function Resize(handle, size) end

---@return handle # child_handle
---@param handle handle # light_userdata:handle, integer:index(1-based)
---@param index integer
function Ptr(handle, index) end

---@return handle # child_handle
---@param handle handle # light_userdata:handle, integer:index(1-based)
---@param index integer
function CmdlinePtr(handle, index) end

---@return table # {handle:child_handles}
---@param handle handle # light_userdata:handle
function Children(handle) end

---@return table # {handle:child_handles}
---@param handle handle # light_userdata:handle
function CmdlineChildren(handle) end

---@return handle # current_child or nothing
---@param handle handle # light_userdata:handle
function CurrentChild(handle) end

---@return handle # child_handle
---@param handle handle # light_userdata:handle, integer:child_index(1-based)[, string:class[, light_userdata:undo]]
---@param child_index? integer
---@param class? string
---@param undo? handle
function Create(handle, child_index, class, undo) end

---@return handle # child_handle
---@param handle handle # light_userdata:handle[, string:class[, light_userdata:undo[, integer:count]]]
---@param class? string
---@param undo? handle
---@param count? integer
function Append(handle, class, undo, count) end

---@return handle # child_handle
---@param handle handle # light_userdata:handle[, string:class[, light_userdata:undo]]
---@param class? string
---@param undo? handle
function Aquire(handle, class, undo) end

---@return nothing
---@param handle handle # light_userdata:handle, integer:child_index(1-based)[, light_userdata:undo]
---@param child_index? integer
---@param undo? handle
function Delete(handle, child_index, undo) end

---@return handle # child_handle
---@param handle handle # light_userdata:handle, integer:child_index(1-based)[, string:class[, light_userdata:undo[, integer:count]]]
---@param child_index? integer
---@param class? string
---@param undo? handle
---@param count? integer
function Insert(handle, child_index, class, undo, count) end

---@return nothing
---@param handle handle # light_userdata:handle, integer:child_index(1-based)[, light_userdata:undo]
---@param child_index? integer
---@param undo? handle
function Remove(handle, child_index, undo) end

---@return nothing
---@param dst_handle handle # light_userdata:dst_handle, light_userdata:src_handle[, light_userdata:undo]
---@param src_handle? handle
---@param undo? handle
function Copy(dst_handle, src_handle, undo) end

---@return nothing
---@param handle handle # light_userdata:handle, handle:object_to_check
---@param object_to_check handle
function HasParent(handle, object_to_check) end

---@return nothing
---@param handle handle # light_userdata:handle, string:change_level_enum_name
---@param change_level_enum_name string
function Changed(handle, change_level_enum_name) end

---@return boolean # object_is_empty
---@param handle handle # light_userdata:handle
function IsEmpty(handle) end

---@return boolean # object_is_locked
---@param handle handle # light_userdata:handle
function IsLocked(handle) end

---@return nothing
---@param handle handle # light_userdata:handle
function PrepareAccess(handle) end

---@return nothing
---@param handle handle # light_userdata:handle, string:property_name, string:property_value[, integer:override_change_level(Enums.ChangeLevel)]
---@param property_name string
---@param property_value? string
---@param override_change_level? integer
function Set(handle, property_name, property_value, override_change_level) end

---@return nothing
---@param handle_of_parent handle # light_userdata:handle_of_parent, string:property_name, string:property_value[, boolean:recursive (default: false)]
---@param property_name string
---@param property_value? string
---@param recursive_? boolean
function SetChildren(handle_of_parent, property_name, property_value, recursive_) end

---@return nothing
---@param handle_of_parent handle # light_userdata:handle_of_parent, string:property_name, string:property_value[, boolean:recursive (default: false)]
---@param property_name string
---@param property_value? string
---@param recursive_? boolean
function SetChildrenRecursive(handle_of_parent, property_name, property_value, recursive_) end

---@return handle # child or string # property (if 'role' provided - always string)
---@param handle handle # light_userdata:handle, string:property_name[, integer:role(Enums.Roles)]
---@param property_name? string
---@param role? integer
function Get(handle, property_name, role) end

---@return integer # property_count
---@param handle handle # light_userdata:handle
function PropertyCount(handle) end

---@return string # property_name
---@param handle handle # light_userdata:handle, integer:property_index
---@param property_index integer
function PropertyName(handle, property_index) end

---@return string # property_type
---@param handle handle # light_userdata:handle, integer:property_index
---@param property_index integer
function PropertyType(handle, property_index) end

---@return table # {string:read_only, string:import_ignore, string:export_ignore}
---@param handle handle # light_userdata:handle, integer:property_index
---@param property_index integer
function PropertyInfo(handle, property_index) end

---@return boolean # result
---@param handle handle # light_userdata:handle
function IsValid(handle) end

---@return boolean # result
---@param handle handle # light_userdata:handle
function IsClass(handle) end

---@return string # class_name
---@param handle handle # light_userdata:handle
function GetClass(handle) end

---@return string # class_name
---@param handle handle # light_userdata:handle
function GetChildClass(handle) end

---@return handle
---@param handle handle # light_userdata:handle
function GetAssignedObj(handle) end

---@return boolean # result
---@param handle handle # light_userdata:handle
function HasEditSettingUI(handle) end

---@return boolean # result
---@param handle handle # light_userdata:handle
function HasEditUI(handle) end

---@return string # ui_editor_name
---@param handle handle # light_userdata:handle
function GetUIEditor(handle) end

---@return string # ui_settings_name
---@param handle handle # light_userdata:handle
function GetUISettings(handle) end

---@return handle # found_handle
---@param search_start_handle handle # light_userdata:search_start_handle, string:search_class_name
---@param search_class_name string
function FindParent(search_start_handle, search_class_name) end

---@return handle # found_handle
---@param search_start_handle handle # light_userdata:search_start_handle, string:search_name[, string:search_class_name]
---@param search_name? string
---@param search_class_name? string
function Find(search_start_handle, search_name, search_class_name) end

---@return handle # found_handle
---@param search_start_handle handle # light_userdata:search_start_handle, string:search_name[, string:search_class_name]
---@param search_name? string
---@param search_class_name? string
function FindRecursive(search_start_handle, search_name, search_class_name) end

---@return handle # found_handle
---@param search_start_handle handle # light_userdata:search_start_handle, string:search_name
---@param search_name string
function FindWild(search_start_handle, search_name) end

---@return boolean # success
---@param handle handle # light_userdata:handle, string:file_path, string:file_name
---@param file_path string
---@param file_name string
function Import(handle, file_path, file_name) end

---@return boolean # success
---@param handle handle # light_userdata:handle, string:file_path, string:file_name
---@param file_path string
---@param file_name string
function Export(handle, file_path, file_name) end

---@return string # file_name
---@param handle handle # light_userdata:handle[, boolean:camel_case_to_file_name]
---@param camel_case_to_file_name? boolean
function GetExportFileName(handle, camel_case_to_file_name) end

---@return boolean # success
---@param handle handle # light_userdata:handle, string:file_path, string:file_name
---@param file_path string
---@param file_name string
function Load(handle, file_path, file_name) end

---@return boolean # success
---@param handle handle # light_userdata:handle, string:file_path, string:file_name
---@param file_path string
---@param file_name string
function Save(handle, file_path, file_name) end

---@return nothing
---@param handle handle # light_userdata:handle, light_userdata:dest_handle, boolean:focus_search_allowed(default:true)
---@param dest_handle handle
---@param focus_search_allowed boolean
function CommandCall(handle, dest_handle, focus_search_allowed) end

---@return nothing
---@param handle handle # light_userdata:handle
function CommandAt(handle) end

---@return nothing
---@param handle handle # light_userdata:handle
function CommandDelete(handle) end

---@return nothing
---@param handle handle # light_userdata:handle
function CommandStore(handle) end

---@return nothing
---@param handle handle # light_userdata:handle
function CommandCreateDefaults(handle) end

---@return nothing
---@param handle handle # light_userdata:handle, {[float:value[0..100]], [boolean:faderEnabled], [string:token(Fader*)]}
---@param value? table
function SetFader(handle, value) end

---@return float # value[0..100]
---@param handle handle # light_userdata:handle, {[string:token(Fader*)], [integer:index]}
---@param token? table
function GetFader(handle, token) end

---@return string # text
---@param handle handle # light_userdata:handle, {[string:token(Fader*)], [integer:index]}
---@param token? table
function GetFaderText(handle, token) end

---@return integer # count
---@param handle handle # light_userdata:handle
function GetLineCount(handle) end

---@return string # line_content
---@param handle handle # light_userdata:handle, integer:line_number
---@param line_number integer
function GetLineAt(handle, line_number) end

---@return boolean # result
---@param handle handle # light_userdata:handle
function HasActivePlayback(handle) end

---@return boolean # result
---@param handle handle # light_userdata:handle
function HasReferences(handle) end

---@return boolean # result
---@param handle handle # light_userdata:handle
function HasDependencies(handle) end

---@return table # {handle:handle}
---@param handle handle # light_userdata:handle
function GetReferences(handle) end

---@return table # {handle:handle}
---@param handle handle # light_userdata:handle
function GetDependencies(handle) end

---@return nothing
---@param handle handle # light_userdata:handle, string:name_value
---@param name_value string
function InputSetTitle(handle, name_value) end

---@return nothing
---@param handle handle # light_userdata:handle, string:value
---@param value string
function InputSetValue(handle, value) end

---@return nothing
---@param handle handle # light_userdata:handle, string:name_value
---@param name_value string
function InputSetEditTitle(handle, name_value) end

---@return nothing
---@param handle handle # light_userdata:handle, string:parameter name, string:parameter value
---@param parameter_name string
---@param parameter_value string
function InputSetAdditionalParameter(handle, parameter_name, parameter_value) end

---@return nothing
---@param handle handle # light_userdata:handle
function InputRun(handle) end

---@return any
---@param handle handle # light_userdata:handle, string:function name[, ...parameters to function]
---@param function_name? string
function InputCallFunction(handle, function_name) end

---@return true or nil
---@param handle handle # light_userdata:handle, string:function name
---@param function_name string
function InputHasFunction(handle, function_name) end

---@return nothing
---@param handle handle # light_userdata:handle, integer:length
---@param length integer
function InputSetMaxLength(handle, length) end

---@return nothing
---@param handle handle # light_userdata:handle, string:name, string:value[, {[left={...}][right={...}]}:appearance]
---@param name string
---@param value? string
---@param appearance? table
function AddListStringItem(handle, name, value, appearance) end

---@return nothing
---@param handle handle # light_userdata:handle, string:name, string:value, light_userdata:target handle[,{[left={...}][right={...}]}:appearance]
---@param name string
---@param value string
---@param target_handle? handle
---@param appearance? table
function AddListPropertyItem(handle, name, value, target_handle, appearance) end

---@return nothing
---@param handle handle # light_userdata:handle, string:name, number:value[,light_userdata:base handle[, {[left={...}][right={...}]}:appearance]]
---@param name string
---@param value? number
---@param base_handle? handle
---@param appearance? table
function AddListNumericItem(handle, name, value, base_handle, appearance) end

---@return nothing
---@param handle handle # light_userdata:handle, string:name, string:value/function name, lua_function:callback reference[, <any lua type>:argument to pass to callback[, {[left={...}][right={...}]}:appearance]]
---@param name string
---@param value_or_function_name string
---@param callback_reference? string
---@param argument_to_pass_to_callback? string
function AddListLuaItem(handle, name, value_or_function_name, callback_reference, argument_to_pass_to_callback) end

---@return nothing
---@param handle handle # light_userdata:handle, light_userdata:target object[, (string: explicit name[, {[left={...}][right={...}]}:appearance] | enum{Roles}: role [, :boolean: extended_name[, {[left={...}][right={...}]}:appearance]])]
---@param target_object handle
---@param explicit_name? string|enum
function AddListObjectItem(handle, target_object, explicit_name) end

---@return nothing
---@param handle handle # light_userdata:handle, table{item={[1]=name, [2]=value}, ...}
function AddListStringItems(handle) end

---@return nothing
---@param handle handle # light_userdata:handle, table{item={[1]=name, [2]=property name, [3]=target handle}, ...}
function AddListPropertyItems(handle) end

---@return nothing
---@param handle handle # light_userdata:handle, table{item={[1]=name, [2]=integer:value}, ...}
function AddListNumericItems(handle) end

---@return nothing
---@param handle handle # light_userdata:handle, table{item={[1]=name, [2]=value/function name, [3]=callback reference[, [4]=argument of any lua type to pass to callback]}, ...}
function AddListLuaItems(handle) end

---@return nothing
---@param handle handle # light_userdata:handle, light_userdata:parent[, enum{Roles}:role]
---@param parent? handle
---@param role? table
function AddListChildren(handle, parent, role) end

---@return nothing
---@param handle handle # light_userdata:handle, light_userdata:parent[, enum{Roles}:role]
---@param parent? handle
---@param role? table
function AddListChildrenNames(handle, parent, role) end

---@return nothing
---@param handle handle # light_userdata:handle, light_userdata:parent[, enum{Roles}:role]
---@param parent? handle
---@param role? table
function AddListRecursiveNames(handle, parent, role) end

---@return nothing
---@param handle handle # light_userdata:handle, string:name
---@param name string
function RemoveListItem(handle, name) end

---@return nothing
---@param handle handle # light_userdata:handle
function ClearList(handle) end

---@return nothing
---@param handle handle # light_userdata:handle, string:name_value
---@param name_value string
function SelectListItemByName(handle, name_value) end

---@return nothing
---@param handle handle # light_userdata:handle, string:value
---@param value string
function SelectListItemByValue(handle, value) end

---@return nothing
---@param handle handle # light_userdata:handle, integer:index(1-based)
---@param index integer
function SelectListItemByIndex(handle, index) end

---@return nothing
---@param handle handle # light_userdata:handle, integer:index
---@param index integer
function IsListItemEnabled(handle, index) end

---@return nothing
---@param handle handle # light_userdata:handle, integer:index[, bool:enable(default:true)]
---@param index? integer
---@param enable? boolean
function SetEnabledListItem(handle, index, enable) end

---@return nothing
---@param handle handle # light_userdata:handle, integer:index
---@param index integer
function IsListItemEmpty(handle, index) end

---@return nothing
---@param handle handle # light_userdata:handle, integer:index[, bool:empty(default:true)]
---@param index? integer
---@param empty? boolean
function SetEmptyListItem(handle, index, empty) end

---@return string # value
---@param handle handle # light_userdata:handle, integer:index
---@param index integer
function GetListItemValueStr(handle, index) end

---@return nothing
---@param handle handle # light_userdata:handle, integer:index, string:value
---@param index integer
---@param value string
function SetListItemValueStr(handle, index, value) end

---@return integer # value
---@param handle handle # light_userdata:handle, integer:index
---@param index integer
function GetListItemValueI64(handle, index) end

---@return string # name
---@param handle handle # light_userdata:handle, integer:index
---@param index integer
function GetListItemName(handle, index) end

---@return nothing
---@param handle handle # light_userdata:handle, integer:index, string:name
---@param index integer
---@param name string
function SetListItemName(handle, index, name) end

---@return table # {left={AppearanceData}, right={AppearanceData}}
---@param handle handle # light_userdata:handle, integer:index
---@param index integer
function GetListItemAppearance(handle, index) end

---@return nothing
---@param handle handle # light_userdata:handle, integer:index, {[left={...AppearanceData...}][right={...AppearanceData...}]}
---@param index integer
---@param AppearanceData table
function SetListItemAppearance(handle, index, AppearanceData) end

---@return handle # button or nil if not visible
---@param handle handle # light_userdata:handle, integer:index
---@param index integer
function GetListItemButton(handle, index) end

---@return integer # 1-based index
---@param handle handle # light_userdata:handle
function GetListSelectedItemIndex(handle) end

---@return integer # amount of items in the list
---@param handle handle # light_userdata:handle
function GetListItemsCount(handle) end

---@return integer # 1-based index
---@param handle handle # light_userdata:handle, string:value
---@param value string
function FindListItemByValueStr(handle, value) end

---@return integer # 1-based index
---@param handle handle # light_userdata:handle, string:value
---@param value string
function FindListItemByName(handle, value) end

---@return handle # to GridBase
---@param handle_to_UIGrid handle # light_userdata:handle to UIGrid (or derived)
function GridGetBase(handle_to_UIGrid) end

---@return handle # to GridData
---@param handle_to_UIGrid handle # light_userdata:handle to UIGrid (or derived)
function GridGetData(handle_to_UIGrid) end

---@return handle # to GridSelection
---@param handle_to_UIGrid handle # light_userdata:handle to UIGrid (or derived)
function GridGetSelection(handle_to_UIGrid) end

---@return nothing
---@generic x
---@generic y
---@param x `x`
---@param y `y`
---@param handle_to_UIGrid handle # light_userdata:handle to UIGrid (or derived), x, y
function GridMoveSelection(handle_to_UIGrid, x, y) end

---@return table # array of {r, c, r_UniqueId, r_GroupId, c_UniqueId, c_GroupId} cells in the selection
---@param handle_to_UIGrid handle # light_userdata:handle to UIGrid (or derived)
function GridGetSelectedCells(handle_to_UIGrid) end

---@return handle to GridSettings
---@param handle_to_UIGrid handle # light_userdata:handle to UIGrid (or derived)
function GridGetSettings(handle_to_UIGrid) end

---@return table # {r, c}
---@param handle_to_UIGrid handle # light_userdata:handle to UIGrid (or derived)
function GridGetDimensions(handle_to_UIGrid) end

---@return table # {v = {index, offset}, h={index, offset}}
---@param handle_to_UIGrid handle # light_userdata:handle to UIGrid (or derived)
function GridGetScrollOffset(handle_to_UIGrid) end

---@return nothing
---@param handle_to_UIGrid handle # light_userdata:handle to UIGrid (or derived), integer: columnId, integer:size in pixels
---@param columnId integer
---@param size_in_pixels integer
function GridSetColumnSize(handle_to_UIGrid, columnId, size_in_pixels) end

---@return table # {r, c}
---@param handle_to_UIGrid handle # light_userdata:handle to UIGrid (or derived)
function GridGetScrollCell(handle_to_UIGrid) end

---@return table # {text, color={text, back}}
---@param handle_to_UIGrid handle # light_userdata:handle to UIGrid (or derived), {r, c}:cell
---@param cell table
function GridGetCellData(handle_to_UIGrid, cell) end

---@return boolean
---@param handle_to_UIGrid handle # light_userdata:handle to UIGrid (or derived), {r, c}:cell
---@param cell table
function GridIsCellVisible(handle_to_UIGrid, cell) end

---@return boolean
---@param handle_to_UIGrid handle # light_userdata:handle to UIGrid (or derived), {r, c}:cell
---@param cell table
function GridCellExists(handle_to_UIGrid, cell) end

---@return boolean
---@param handle_to_UIGrid handle # light_userdata:handle to UIGrid (or derived), {r, c}:cell
---@param cell table
function GridIsCellReadOnly(handle_to_UIGrid, cell) end

---@return nothing
---@param handle_to_UIGrid handle # light_userdata:handle to UIGrid (or derived), {r, c}:cell
---@param cell table
function GridScrollCellIntoView(handle_to_UIGrid, cell) end

---@return table # {x, y, w, h}
---@param handle_to_UIGrid handle # light_userdata:handle to UIGrid (or derived), {r, c}:cell
---@param cell table
function GridGetCellDimensions(handle_to_UIGrid, cell) end

---@return integer|nil # parent row id (integer) or nil (if there's no parent)
---@param handle_to_UIGrid handle # light_userdata:handle to UIGrid (or derived), integer: rowId
---@param rowId integer
function GridGetParentRowId(handle_to_UIGrid, rowId) end

---@return table # {r, c} or nil
---@param handle_to_UIGrid handle # light_userdata:handle to UIGrid (or derived)
function GridsGetExpandHeaderCell(handle_to_UIGrid) end

---@return boolean or nil
---@param handle_to_UIGrid handle # light_userdata:handle to UIGrid (or derived)
function GridsGetExpandHeaderCellState(handle_to_UIGrid) end

---@return integer|nil # width in pixels or nil
---@param handle_to_UIGrid handle # light_userdata:handle to UIGrid (or derived), {r, c}:cell
---@param cell table
function GridsGetLevelButtonWidth(handle_to_UIGrid, cell) end

---@return integer|nil # column index or nil (if there's no such visible column)
---@param handle_to_UIGrid handle # light_userdata:handle to UIGrid (or derived), integer: columnId
---@param columnId integer
function GridsGetColumnById(handle_to_UIGrid, columnId) end

---@return integer|nil # row index or nil (if there's no such visible row)
---@param handle_to_UIGrid handle # light_userdata:handle to UIGrid (or derived), integer: rowId
---@param rowId integer
function GridsGetRowById(handle_to_UIGrid, rowId) end

---@return handle # overlay_handle
---@param handle_to_UIObject handle # light_userdata:handle to UIObject
function GetOverlay(handle_to_UIObject) end

---@return handle # display_handle
---@param handle_to_UIObject handle # light_userdata:handle to UIObject
function GetDisplay(handle_to_UIObject) end

---@return integer # display_index
---@param handle_to_UIObject handle # light_userdata:handle to UIObject
function GetDisplayIndex(handle_to_UIObject) end

---@return handle
---@param handle_to_UIObject handle # light_userdata:handle to UIObject
function GetScreen(handle_to_UIObject) end

---@return integer # count
---@param handle_to_UIObject handle # light_userdata:handle to UIObject
function GetUIChildrenCount(handle_to_UIObject) end

---@return nothing
---@param handle_to_UIObject handle # light_userdata:handle to UIObject
function ClearUIChildren(handle_to_UIObject) end

---@return handle to UIObject
---@param handle_to_UIObject handle # light_userdata:handle to UIObject, integer:index(1-based)
---@param index integer
function GetUIChild(handle_to_UIObject, index) end

---@return table # array of references to children of passed UIObject
---@param handle_to_UIObject handle # light_userdata:handle to UIObject
function UIChildren(handle_to_UIObject) end

---@return boolean # true on success, nil on timeout or if object doesn't exist
---@param handle_to_UIObject handle # light_userdata:handle to UIObject[, number:seconds to wait[, bool:force to re-init, default - false]]
---@param seconds_to_wait? number
---@param force_to_re_init boolean
function WaitInit(handle_to_UIObject, seconds_to_wait, force_to_re_init) end

---@return boolean # true on success, nil on timeout or if object doesn't exist
---@param handle_to_UIObject handle # light_userdata:handle to UIObject, integer:expected amount of children[, number:seconds to wait]
---@param expected_amount_of_children? integer
---@param seconds_to_wait? number
function WaitChildren(handle_to_UIObject, expected_amount_of_children, seconds_to_wait) end

---@return boolean # true on success, nil on failure
---@param handle_to_UIObject handle # light_userdata:handle to UIObject, function:callback to invoke on deletion[, any:argument to pass by]
---@param callback_to_invoke_on_deletion? function
---@param argument_to_pass_by? any
function HookDelete(handle_to_UIObject, callback_to_invoke_on_deletion, argument_to_pass_by) end

---@return boolean # is visible
---@param handle_to_UIObject handle # light_userdata:handle to UIObject
function IsVisible(handle_to_UIObject) end

---@return boolean # is enabled
---@param handle_to_UIObject handle # light_userdata:handle to UIObject
function IsEnabled(handle_to_UIObject) end

---@return nothing
---@param handle handle # light_userdata:handle, callback:function
---@param callback function
function ShowModal(handle, callback) end

---@return nothing
---@param x integer
---@param y integer
---@param handle handle # light_userdata:handle, integer:x, integer:y
function SetPositionHint(handle, x, y) end

---@return boolean # true if scroll of the requested type is needed
---@param handle handle # light_userdata:handle, integer:scroll type (see 'ScrollType' enum)
---@param scroll_type integer
function ScrollIsNeeded(handle, scroll_type) end

---@return boolean # true scroll
---@param handle handle # light_userdata:handle, integer:scroll type (see 'ScrollType' enum), integer:scroll entity (item or area, see 'ScrollParamEntity' enum), integer:value type (absolute or relative, see 'ScrollParamValueType' enum), number: value to scroll (items - 1-based), boolean: updateOpposite side
---@param scroll_type integer
---@param scroll_entity_ integer
---@param value_type_ integer
---@param value_to_scroll number
---@param updateOpposite_side boolean
function ScrollDo(handle, scroll_type, scroll_entity_, value_type_, value_to_scroll, updateOpposite_side) end

---@return table|nil # {index(1-based), offset, visibleArea, totalArea, itemsCount, itemsOnPage} or nil
---@param handle handle # light_userdata:handle, integer:scroll type (see 'ScrollType' enum)
---@param scroll_type integer
function ScrollGetInfo(handle, scroll_type) end

---@return integer|nil # size of the item of nil
---@param handle handle # light_userdata:handle, integer:scroll type (see 'ScrollType' enum), integer:1-based item idx
---@param scroll_type integer
---@param one_based_item_idx integer
function ScrollGetItemSize(handle, scroll_type, one_based_item_idx) end

---@return integer|nil # offset of the item or nil
---@param handle handle # light_userdata:handle, integer:scroll type (see 'ScrollType' enum), integer:1-based item idx
---@param scroll_type integer
---@param one_based_item_idx integer
function ScrollGetItemOffset(handle, scroll_type, one_based_item_idx) end

---@return integer # 1-based item index
---@param handle handle # light_userdata:handle, integer:scroll type (see 'ScrollType' enum), integer:offset
---@param scroll_type integer
---@param offset integer
function ScrollGetItemByOffset(handle, scroll_type, offset) end

---@return nothing
---@param handle_to_UIObject handle # light_userdata:handle to UIObject, string:topic name
---@param topic_name string
function SetContextSensHelpLink(handle_to_UIObject, topic_name) end

---@return integer # size
---@param handle_to_UILayoutGrid handle # light_userdata:handle to UILayoutGrid, integer:index
---@param index integer
function UILGGetColumnWidth(handle_to_UILayoutGrid, index) end

---@return integer # size
---@param handle_to_UILayoutGrid handle # light_userdata:handle to UILayoutGrid, integer:index
---@param index integer
function UILGGetRowHeight(handle_to_UILayoutGrid, index) end

---@return integer # x
---@param handle_to_UILayoutGrid handle # light_userdata:handle to UILayoutGrid, integer:index
---@param index integer
function UILGGetColumnAbsXLeft(handle_to_UILayoutGrid, index) end

---@return integer # x
---@param handle_to_UILayoutGrid handle # light_userdata:handle to UILayoutGrid, integer:index
---@param index integer
function UILGGetColumnAbsXRight(handle_to_UILayoutGrid, index) end

---@return integer # y
---@param handle_to_UILayoutGrid handle # light_userdata:handle to UILayoutGrid, integer:index
---@param index integer
function UILGGetRowAbsYTop(handle_to_UILayoutGrid, index) end

---@return integer # y
---@param handle_to_UILayoutGrid handle # light_userdata:handle to UILayoutGrid, integer:index
---@param index integer
function UILGGetRowAbsYBottom(handle_to_UILayoutGrid, index) end

---@return nothing
---@param handle_to_Overlay handle # light_userdata:handle to Overlay, callbackName:string[, ctx:anything]
---@param callbackName? string
---@param ctx? value
function OverlaySetCloseCallback(handle_to_Overlay, callbackName, ctx) end

---@return boolean
---@param handle_to_UIGrid handle # light_userdata:handle to UIGrid (or derived), {r, c}:cell
---@param cell table
function FSExtendedModeHasDots(handle_to_UIGrid, cell) end

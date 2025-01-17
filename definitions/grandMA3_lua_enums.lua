--MA3 release 2.0.2.0

---@meta

---@class LuaFileSystem
locallfs = {}

---@enum ValueNone
local ValueNone = {
	"None" == 2147483647,
}

---@enum PlaybackPriority
local PlaybackPriority = {
	"Super" == 0,
	"HTP" == 3,
	"Lowest" == 8,
	"Low" == 7,
	"High" == 5,
	"LTP" == 6,
	"Swap" == 2,
	"Highest" == 4,
}

---@enum GestureStatus
local GestureStatus = {
	"Finished" == 3,
	"Canceled" == 4,
	"Updated" == 1,
	"Finishing" == 2,
	"None" == 0,
}

---@enum AlignmentV
local AlignmentV = {
	"Center" == 0,
	"Top" == 1,
	"Bottom" == 2,
}

---@enum RowFilter
local RowFilter = {
	"Unused" == 2,
	"Used" == 1,
	"All" == 0,
	"Selection" == 3,
}

---@enum AgendaTool
local AgendaTool = {
	"Store" == 1,
	"Select" == 0,
	"Paste" == 5,
	"Copy" == 4,
	"Edit" == 7,
	"Delete" == 2,
	"Cut" == 3,
	"Call" == 6,
}

---@enum ResolutionLimit
local ResolutionLimit = {
	"1080p" == 3,
	"720p" == 2,
	"480p" == 1,
	"Unlimited" == 0,
}

---@enum AssignmentPlaybackMasterButtonFunctions
local AssignmentPlaybackMasterButtonFunctions = {
	"Go+" == 3,
	"Toggle" == 14,
	"" == 0,
	"On" == 7,
	"Empty" == 0,
	"Flash" == 1,
	"Kill" == 29,
	"Black" == 2,
	"Temp" == 13,
	"Off" == 8,
}

---@enum ColorWheelMode
local ColorWheelMode = {
	"Color Wheel Only" == 2,
	"Mix Color Only" == 1,
	"Prefer Mix Color" == 0,
}

---@enum DmxSheetSettingsAddressMode
local DmxSheetSettingsAddressMode = {
	"Univ.addr" == 0,
	"Absolute" == 1,
}

---@enum DisplayScales
local DisplayScales = {
	"2x" == 33554432,
	"1.5x" == 25165824,
	"0.75x" == 12582912,
	"1.75x" == 29360128,
	"1.25x" == 20971520,
	"2.5x" == 41943040,
	"1x" == 16777216,
}

---@enum BloomIntensity3d
local BloomIntensity3d = {
	"On" == 1,
	"Off" == 0,
}

---@enum ImageMirror
local ImageMirror = {
	"Horizontal" == 1,
	"Vertical" == 2,
	"Both" == 3,
	"None" == 0,
}

---@enum VirtualKeyExecutionType
local VirtualKeyExecutionType = {
	"Normal" == 0,
	"Background" == 3,
	"Immediate" == 1,
	"ClearImmediate" == 2,
	"Release" == 4,
}

---@enum GenerateParmeters
local GenerateParmeters = {
	"GelList" == 4,
	"SortColor" == 3,
	"AmountHue" == 1,
	"DimmerIncrement" == 0,
	"AmountSaturation" == 2,
}

---@enum TimecodeSelectionTarget
local TimecodeSelectionTarget = {
	"TimeRanges" == 1,
	"Events" == 0,
}

---@enum GelSortType
local GelSortType = {
	"None" == 0,
	"Key" == 2,
	"Name" == 1,
}

---@enum UndefinedMax
local UndefinedMax = {
	"-" == 32767,
}

---@enum GridType
local GridType = {
	"FTPreset" == 4,
	"FixtureSource" == 2,
	"ChannelSet" == 3,
	"Fixture" == 0,
	"FixtureType" == 1,
}

---@enum MeasurementInterpolation
local MeasurementInterpolation = {
	"Log" == 2,
	"Step" == 1,
	"Linear" == 0,
}

---@enum RDMSensorType
local RDMSensorType = {
	"SENS_ACCELERATION" == 12,
	"SENS_TEMPERATURE" == 0,
	"SENS_CHROMINANCE_GREEN" == 26,
	"SENS_CONTACTS" == 28,
	"SENS_TIME" == 16,
	"SENS_ANGULAR_VELOCITY" == 21,
	"SENS_CHROMINANCE_RED" == 25,
	"SENS_HUMIDITY" == 31,
	"SENS_PRESSURE" == 15,
	"SENS_LENGTH" == 7,
	"SENS_RESISTANCE" == 4,
	"SENS_POSITION_X" == 18,
	"SENS_ILLUMINANCE" == 24,
	"SENS_POWER" == 5,
	"SENS_OTHER" == 127,
	"SENS_LUMINOUS_INTENSITY" == 22,
	"SENS_POSITION_Y" == 19,
	"SENS_MS" == 128,
	"SENS_DENSITY" == 10,
	"SENS_ENERGY" == 14,
	"SENS_MASS" == 6,
	"SENS_AREA" == 8,
	"SENS_CURRENT" == 2,
	"SENS_ITEMS" == 30,
	"SENS_CHROMINANCE_BLUE" == 27,
	"SENS_POSITION_Z" == 20,
	"SENS_FORCE" == 13,
	"SENS_MEMORY" == 29,
	"SENS_VOLUME" == 9,
	"SENS_FREQUENCY" == 3,
	"SENS_VOLTAGE" == 1,
	"SENS_VELOCITY" == 11,
	"SENS_COUNTER_16BIT" == 32,
	"SENS_ANGLE" == 17,
	"SENS_LUMINOUS_FLUX" == 23,
}

---@enum ValueNoneEmpty
local ValueNoneEmpty = {
	"" == 2147483647,
	"Hold" == 1107296257,
	"Release" == 1107296256,
	"None" == 2147483647,
}

---@enum ShaperViewMode
local ShaperViewMode = {
	"Faders" == 1,
	"Graphical" == 0,
}

---@enum ECRec
local ECRec = {
	"Yes" == 1,
	"1" == 1,
	"0" == 0,
	"" == 1,
	"No" == 0,
	"false" == 0,
	"on" == 1,
	"true" == 1,
	"off" == 0,
}

---@enum PresetAction
local PresetAction = {
	"Go+" == 2,
	"At" == 1,
	"Toggle" == 3,
	"Temp" == 5,
	"SelFix/At" == 0,
	"SelFix/Extract" == 6,
	"Flash" == 4,
}

---@enum FixtureSheetFixedColumnType
local FixtureSheetFixedColumnType = {
	"" == 0,
	"SelectedEdge" == 6,
	"InvalidGridPosition" == 4,
	"SelectedInverted" == 2,
	"MainMultiPatchSelected" == 5,
	"PartlySelected" == 3,
	"Selected" == 1,
}

---@enum CuePartMode
local CuePartMode = {
	"Default" == 4294967295,
}

---@enum RDMSensorUnit
local RDMSensorUnit = {
	"UNITS_WATT" == 10,
	"UNITS_AMPERE_AC_RMS" == 7,
	"UNITS_AMPERE_AC_PEAK" == 6,
	"UNITS_MS" == 128,
	"UNITS_IRE" == 27,
	"UNITS_VOLTS_AC_PEAK" == 3,
	"UNITS_DEGREE" == 22,
	"UNITS_OHM" == 9,
	"UNITS_VOLTS_AC_RMS" == 4,
	"UNITS_LUMEN" == 25,
	"UNITS_LUX" == 26,
	"UNITS_JOULE" == 19,
	"UNITS_STERADIAN" == 23,
	"UNITS_SECOND" == 21,
	"UNITS_METERS_SQUARED" == 13,
	"UNITS_PASCAL" == 20,
	"UNITS_VOLTS_DC" == 2,
	"UNITS_NONE" == 0,
	"UNITS_HERTZ" == 8,
	"UNITS_METERS_CUBED" == 14,
	"UNITS_NEWTON" == 18,
	"UNITS_METERS_PER_SECOND_SQUARED" == 17,
	"UNITS_CANDELA" == 24,
	"UNITS_METERS" == 12,
	"UNITS_AMPERE_DC" == 5,
	"UNITS_KILOGRAM" == 11,
	"UNITS_METERS_PER_SECOND" == 16,
	"UNITS_BYTE" == 28,
	"UNITS_CENTIGRADE" == 1,
	"UNITS_KILOGRAMMES_PER_METER_CUBED" == 15,
}

---@enum SpeedMaster
local SpeedMaster = {
	"Speed15" == 14,
	"Speed4" == 3,
	"Speed13" == 12,
	"Speed3" == 2,
	"" == 255,
	"Speed5" == 4,
	"Speed14" == 13,
	"Speed7" == 6,
	"Speed6" == 5,
	"Speed12" == 11,
	"Speed11" == 10,
	"Speed9" == 8,
	"Speed8" == 7,
	"BPM" == 15,
	"None" == 255,
	"Speed10" == 9,
	"Speed1" == 0,
	"Speed2" == 1,
}

---@enum WhiteListPacketNamesBefore_1_7
local WhiteListPacketNamesBefore_1_7 = {
	"system_arm" == 1982,
	"gma2_resource" == 1166,
	"xport_compat" == 1982,
	"utils" == 1166,
	"worldserver" == 1166,
	"updater_x64" == 1166,
	"web_daemon" == 1166,
	"manuals" == 1166,
	"npu_compat" == 1166,
	"demoshows" == 1166,
	"onpc_mac" == 1166,
	"resource_usb" == 1182,
	"viz_key" == 1182,
	"xport" == 1982,
	"wing" == 1982,
	"updater_arm" == 1982,
	"gma2_manuals" == 1166,
	"gma2_ffmpeg" == 1166,
	"unittest" == 1166,
	"third_party" == 1166,
	"resource" == 1982,
	"ndi_addon" == 1166,
	"system_x64" == 1166,
	"pu" == 1166,
	"fixtures" == 1166,
	"console" == 1166,
	"onpc_windows" == 1166,
	"gdtf_mvr_addon" == 1166,
	"luatest" == 1166,
	"bootloader_x64" == 1166,
	"gma2_compat" == 1166,
}

---@enum ExecConfigType
local ExecConfigType = {
	"Master" == 11,
	"ScreenConfig" == 9,
	"View" == 2,
	"User" == 7,
	"Macro" == 1,
	"World" == 3,
	"Timer" == 10,
	"Preset" == 5,
	"SpeedMaster" == 12,
	"PlaybackMaster" == 13,
	"Sound" == 8,
	"Plugin" == 6,
	"Group" == 4,
	"Sequence" == 0,
}

---@enum DispView
local DispView = {
	"GPU Temp" == 5,
	"Timing" == 1,
	"Network" == 10,
	"CPU" == 2,
	"Fan" == 7,
	"Sys Temp" == 6,
	"Realtime" == 0,
	"Details" == 8,
	"CPU Temp" == 4,
	"HDD" == 9,
	"Memory" == 3,
}

---@enum DmxSheetFixedColumnType
local DmxSheetFixedColumnType = {
	"Address2" == 1,
	"Address" == 0,
}

---@enum RealtimeSection
local RealtimeSection = {
	"LED" == 17,
	"DMXMix" == 2,
	"SendRTStream" == 4,
	"DMXTransfer" == 13,
	"ChannelCompress" == 16,
	"Lua" == 5,
	"Timecode" == 7,
	"Highlight" == 9,
	"Wait2" == 15,
	"Playback" == 8,
	"Wait1" == 11,
	"Start" == 0,
	"GroupMaster" == 6,
	"PostRealtime" == 14,
	"DMXCompress" == 12,
	"CalcChannel" == 10,
	"Jobque" == 3,
	"DMXDecompress" == 1,
}

---@enum SpecialCycle
local SpecialCycle = {
	"Time" == 1,
	"If" == 3,
	"None" == 0,
	"Channel" == 2,
}

---@enum SeqMasterGoMode
local SeqMasterGoMode = {
	"Go" == 1,
	"On" == 2,
	"Top" == 3,
	"None" == 0,
}

---@enum GridMergeMode
local GridMergeMode = {
	"Append X" == 1,
	"Off" == 0,
}

---@enum ChangeLevel
local ChangeLevel = {
	"Full" == 8,
	"Property" == 11,
	"Little" == 12,
	"Remove" == 1,
	"Move" == 4,
	"None" == 13,
	"Structural" == 10,
	"Layout" == 5,
	"Exchange" == 3,
	"FullWithoutContent" == 9,
	"File" == 0,
	"Delete" == 6,
	"Create" == 7,
	"Insert" == 2,
}

---@enum HostStatus
local HostStatus = {
	"LicenceInvalid" == 10,
	"Startup" == 1,
	"LocalMaster" == 4,
	"Standalone" == 2,
	"NormalShutdown" == 7,
	"IdleMaster" == 5,
	"UpdateMode" == 9,
	"GlobalMaster" == 6,
	"Undefined" == 0,
	"Connected" == 3,
	"ErrorShutdown" == 8,
}

---@enum AssignmentButtonFunctionsPreset
local AssignmentButtonFunctionsPreset = {
	"Pause" == 18,
	"Go+" == 3,
	"SelectFixtures" == 116,
	"" == 0,
	"Toggle" == 14,
	"Flash" == 1,
	"DoubleSpeed" == 27,
	"Black" == 2,
	">>>" == 5,
	"Off" == 8,
	"LearnSpeed" == 10,
	"Swap" == 25,
	"HalfSpeed" == 26,
	"Rate1" == 11,
	"On" == 7,
	"Empty" == 0,
	"Temp" == 13,
	"Speed1" == 12,
	"Kill" == 29,
	"At" == 45,
}

---@enum ToolbarScrollType
local ToolbarScrollType = {
	"Horizontal" == 1,
	"Vertical" == 0,
}

---@enum SequenceCountdown
local SequenceCountdown = {
	"Duration" == 1,
	"All" == 2,
	"Off" == 0,
}

---@enum PresetReadoutMode
local PresetReadoutMode = {
	"Name+Value" == 2,
	"ID+Name+Value" == 5,
	"Value" == 1,
	"ID" == 3,
	"ID+Name" == 4,
	"Name" == 0,
}

---@enum RDMLampState
local RDMLampState = {
	"LAMP_NOT_PRESENT" == 4,
	"LAMP_ERROR" == 127,
	"LAMP_STANDBY" == 3,
	"LAMP_OFF" == 0,
	"LAMP_STRIKE" == 2,
	"Manufacturer-Specific States" == 128,
	"LAMP_ON" == 1,
}

---@enum AgendaMode
local AgendaMode = {
	"Sunrise" == 2,
	"Dawn" == 1,
	"Dusk" == 4,
	"Sunset" == 3,
	"Absolute" == 0,
}

---@enum TimecodeSlotOff
local TimecodeSlotOff = {
	"Off" == 255,
}

---@enum ExitCode
local ExitCode = {
	"GeneralError" == 5,
	"AutoPluginFailed" == 3,
	"Restart" == 1,
	"Normal" == 0,
	"Reboot" == 2,
	"PowerDown" == 4,
}

---@enum SplitterV_TopBottom
local SplitterV_TopBottom = {
	"Top" == 1,
	"Bottom" == 0,
}

---@enum AxisGroupType
local AxisGroupType = {
	"XZ" == 1,
	"YZ" == 2,
	"XY" == 0,
}

---@enum AttriebuteEncoderResolution
local AttriebuteEncoderResolution = {
	"Fine" == 1677721,
	"Coarse" == 16777216,
	"Increment" == 167772,
	"Native" == -16777216,
}

---@enum ArtNetDataMode
local ArtNetDataMode = {
	"Auto" == 2,
	"Input" == 3,
	"Unicast" == 1,
	"Broadcast" == 0,
}

---@enum FrameFormatDefault
local FrameFormatDefault = {
	"Seconds" == 100,
	"25 fps" == 25,
	"30 fps" == 30,
	"60 fps" == 60,
	"Default" == 0,
	"24 fps" == 24,
}

---@enum AssignmentTimerFunctions
local AssignmentTimerFunctions = {
	"Pause" == 18,
	"Go+" == 3,
	"" == 0,
	"Toggle" == 14,
	"Empty" == 0,
	"Top" == 15,
	"Flash" == 1,
	"Black" == 2,
	"Temp" == 13,
	"Off" == 8,
}

---@enum AssignmentButtonFunctionsSequence
local AssignmentButtonFunctionsSequence = {
	"Pause" == 18,
	"Go+" == 3,
	"SelectFixtures" == 116,
	"" == 0,
	"Toggle" == 14,
	"Flash" == 1,
	"DoubleSpeed" == 27,
	"Black" == 2,
	">>>" == 5,
	"Off" == 8,
	"<<<" == 6,
	"LearnSpeed" == 10,
	"Go-" == 4,
	"Top" == 15,
	"Select" == 24,
	"Swap" == 25,
	"HalfSpeed" == 26,
	"Rate1" == 11,
	"On" == 7,
	"Goto" == 16,
	"Load" == 17,
	"Temp" == 13,
	"Speed1" == 12,
	"Kill" == 29,
	"Empty" == 0,
}

---@enum RDMDataType
local RDMDataType = {
	"DS_UNSIGNED_WORD" == 5,
	"DS_MS" == 128,
	"DS_UNSIGNED_BYTE" == 3,
	"DS_BIT_FIELD" == 1,
	"DS_ASCII" == 2,
	"DS_NOT_DEFINED" == 0,
	"DS_UNSIGNED_DWORD" == 7,
	"DS_SIGNED_DWORD" == 8,
	"DS_SIGNED_BYTE" == 4,
	"DS_SIGNED_WORD" == 6,
}

---@enum ShowPathType
local ShowPathType = {
	"Backup" == 18,
	"Demo" == 19,
	"Show" == 17,
	"Template" == 57,
}

---@enum AutoSaveMode
local AutoSaveMode = {
	"120 Minutes" == 5,
	"360 Minutes" == 6,
	"15 Minutes" == 2,
	"Off" == 0,
	"30 Minutes" == 3,
	"5 Minutes" == 1,
	"60 Minutes" == 4,
}

---@enum LicenseRequest
local LicenseRequest = {
	"On" == 1,
	"Auto" == 0,
	"Off" == 2,
}

---@enum Yes
local Yes = {
	"" == 0,
	"Yes" == 1,
	"<Blank>" == 0,
}

---@enum ImageResolution
local ImageResolution = {
	"Full" == 0,
	"512" == 512,
	"256" == 256,
	"128" == 128,
	"64" == 64,
}

---@enum RDMStatusMessageType
local RDMStatusMessageType = {
	"STATUS_ERROR" == 4,
	"STATUS_WARNING" == 3,
	"STATUS_ERROR_CLEARED" == 20,
	"STATUS_ADVISORY_CLEARED" == 18,
	"STATUS_ADVISORY" == 2,
	"STATUS_NONE" == 0,
	"STATUS_WARNING_CLEARED" == 19,
	"STATUS_GET_LAST_MESSAGE" == 1,
}

---@enum TestBlockType
local TestBlockType = {
	"lua" == 3,
	"rt" == 2,
	"ui" == 0,
	"root" == 1,
}

---@enum LinearizeOption
local LinearizeOption = {
	"SelectionOrder" == 0,
	"Numerical" == 1,
	"LeftToRight" == 2,
	"TopToBottom" == 3,
}

---@enum FixtureGraphicMode
local FixtureGraphicMode = {
	"Simple" == 2,
	"Gobo" == 3,
	"Flip" == 1,
	"None" == 0,
}

---@enum DMXReadoutMode
local DMXReadoutMode = {
	"Dec8" == 3,
	"Hex8" == 0,
	"Dec16" == 4,
	"Dec24" == 5,
	"Percent" == 6,
	"Hex24" == 2,
	"Hex16" == 1,
}

---@enum MatricksTabs
local MatricksTabs = {
	"Shuffle" == 3,
	"Z" == 2,
	"Y" == 1,
	"X" == 0,
}

---@enum ExecEditorTab
local ExecEditorTab = {
	"Edit Setting" == 2,
	"Edit" == 3,
	"Handle" == 1,
	"Object" == 0,
	"LastTab" == 4,
}

---@enum FixedColumns
local FixedColumns = {
	"Auto" == -1,
}

---@enum InputType
local InputType = {
	"Keyboard" == 2,
	"Touch" == 1,
	"Mouse" == 0,
	"Scroller" == 3,
}

---@enum EmptyAsZeroFID
local EmptyAsZeroFID = {
	"" == 0,
	"None" == 0,
}

---@enum MibModeSequence
local MibModeSequence = {
	"Late" == 5,
	"Early" == 3,
	"UponGo" == 4,
	"None" == 1,
}

---@enum TrackingShieldPopup
local TrackingShieldPopup = {
	"^0" == 1,
	">0" == 2,
	"Off" == 0,
}

---@enum CreateBy
local CreateBy = {
	"System Conversion" == 2,
	"User Conversion" == 1,
	"Unknown" == 0,
}

---@enum Orientation
local Orientation = {
	"Horizontal" == 1,
	"Vertical" == 0,
}

---@enum ShadowMode
local ShadowMode = {
	"Disabled" == 0,
	"Enabled" == 1,
}

---@enum DmxCurveModes
local DmxCurveModes = {
	"MinMax" == 0,
	"Custom" == 2,
	"Switch" == 1,
}

---@enum AssignmentFaderFunctions
local AssignmentFaderFunctions = {
	"Master" == 32,
	"XB" == 35,
	"" == 0,
	"XA" == 34,
	"Empty" == 0,
	"X" == 33,
	"Speed" == 38,
	"Rate" == 37,
	"Temp" == 36,
	"Time" == 42,
}

---@enum ExtraStatusInfo
local ExtraStatusInfo = {
	"" == 0,
	"Create" == 2,
	"Join" == 1,
}

---@enum CopyCueOnlyPopup
local CopyCueOnlyPopup = {
	"Cue Only" == 2,
	"Dimmer Cue Only" == 4,
	"Tracking" == 0,
}

---@enum MIDIMode
local MIDIMode = {
	"Out" == 1,
	"Through" == 2,
	"In" == 0,
}

---@enum BackupBrowserFilter
local BackupBrowserFilter = {
	"Templates" == 3,
	"Backups" == 1,
	"Demoshows" == 2,
	"Shows" == 0,
}

---@enum FontSizes
local FontSizes = {
	"Default" == 0,
	"32" == 32,
	"12" == 12,
	"16" == 16,
	"14" == 14,
	"18" == 18,
	"28" == 28,
	"10" == 10,
	"20" == 20,
	"24" == 24,
}

---@enum WingID
local WingID = {
	"Wing2" == 2,
	"Wing4" == 4,
	"Wing6" == 6,
	"Wing1" == 1,
	"Wing3" == 3,
	"Wing5" == 5,
}

---@enum RelationType
local RelationType = {
	"Multiply" == 0,
	"Override" == 1,
}

---@enum Patched
local Patched = {
	"" == -1,
}

---@enum GestureId
local GestureId = {
	"Click" == 2,
	"PanScrollArea" == 3,
	"!Invalid!" == 32769,
	"Swipe" == 1,
	"Pan" == 0,
}

---@enum TimerTriggerToken
local TimerTriggerToken = {
	"Toggle" == 1,
	"Go+" == 0,
	"Flash" == 2,
	"Temp" == 3,
}

---@enum DmxTesterMode
local DmxTesterMode = {
	"Patched" == 1,
	"All" == 0,
	"Unpatched" == 2,
}

---@enum RDMPidValueFactoryDefaults
local RDMPidValueFactoryDefaults = {
	"False" == 0,
	"True" == 1,
}

---@enum PhaserSheetMode
local PhaserSheetMode = {
	"Step" == 0,
	"Layer Condensed" == 1,
	"Layer Expanded" == 2,
}

---@enum RDMLampOnMode
local RDMLampOnMode = {
	"LAMP_ON_MODE_ON" == 2,
	"LAMP_ON_MODE_DMX" == 1,
	"LAMP_ON_MODE_AFTER_CAL" == 3,
	"LAMP_ON_MODE_OFF" == 0,
	"Manufacturer-Specific Modes" == 128,
}

---@enum WhiteListPacketIDs
local WhiteListPacketIDs = {
	"system_arm" == 1974,
	"grandMA3_viz_key_windows" == 1174,
	"force_x64" == 1166,
	"grandMA3_console" == 1158,
	"onpc_mac" == 1158,
	"updater_arm" == 1974,
	"updater_x64" == 1166,
	"grandMA3_net_duct_windows" == 1174,
	"ndi_addon" == 1166,
	"system_x64" == 1166,
	"web_daemon" == 1158,
	"gdtf_mvr_addon" == 1158,
	"grandMA3_fixtures" == 1158,
	"grandMA3_resource" == 1982,
	"worldserver" == 1158,
	"grandMA3_pu" == 1166,
	"grandMA2_compat" == 1158,
	"grandMA2_xport_compat" == 1974,
	"demoshows" == 1158,
	"luatest" == 1166,
	"grandMA2_npu_compat" == 1166,
	"grandMA3_viz_key_mac" == 1174,
	"onpc_windows" == 1158,
	"updater_windows" == 1158,
	"updater_mac" == 1158,
	"utils" == 1166,
	"grandMA2_resource" == 1166,
	"grandMA3_res_usb" == 1174,
	"bootloader_x64" == 1166,
	"grandMA3_net_duct_mac" == 1174,
	"grandMA2_manuals" == 1158,
	"force_all" == 1982,
	"grandMA2_ffmpeg" == 1166,
	"grandMA3_manuals" == 1158,
	"third_party" == 1166,
	"grandMA3_xport" == 1974,
	"grandMA3_wing" == 1974,
	"force_arm" == 1974,
	"grandMA3_unittest" == 1166,
}

---@enum WheelMode
local WheelMode = {
	"Prop.-" == 3,
	"Additive" == 0,
	"Prop.+" == 2,
	"Incremental" == 1,
}

---@enum LayoutOutputSelection
local LayoutOutputSelection = {
	"Value" == 0,
	"Output" == 2,
	"DMX" == 1,
}

---@enum SMPTEMode
local SMPTEMode = {
	"Out" == 1,
	"In" == 0,
}

---@enum PlaybackSourceSubTypes
local PlaybackSourceSubTypes = {
	"" == 0,
	"DownGoing" == 4,
	"MIB" == 5,
	"UpGoing" == 3,
	"Blocked" == 2,
	"MIBFade" == 6,
	"Tracked" == 1,
}

---@enum ContentSheetCueMode
local ContentSheetCueMode = {
	"Previous Cue" == 1,
	"Manual" == 3,
	"Current Cue" == 0,
	"Next Cue" == 2,
}

---@enum BodyQuality3dPatch
local BodyQuality3dPatch = {
	"Ultra" == 6,
	"Standard" == 4,
	"Box" == 1,
}

---@enum UserRights
local UserRights = {
	"Presets" == 3,
	"View" == 5,
	"Program" == 2,
	"None" == 6,
	"Admin" == 0,
	"Setup" == 1,
	"Playback" == 4,
}

---@enum RDMParameterType
local RDMParameterType = {
	"Rdm" == 0,
	"FixtureType" == 1,
	"Fixture" == 2,
}

---@enum CueOnly
local CueOnly = {
	"On" == 1,
	"DimmerOnlyDefaultNew" == 4,
	"OnDefaultNew" == 2,
	"DimmerOnly" == 3,
	"Off" == 0,
}

---@enum SplineType
local SplineType = {
	"" == 0,
	"Free" == 1,
	"Undefined" == 3,
	"Proportional" == 2,
	"None" == 0,
}

---@enum CameraType
local CameraType = {
	"Back" == 5,
	"Right" == 7,
	"Left" == 3,
	"Front/Left" == 2,
	"Front" == 1,
	"Back/Right" == 6,
	"Back/Left" == 4,
	"Top" == 9,
	"Auto" == 0,
	"Front/Right" == 8,
}

---@enum EncoderLink
local EncoderLink = {
	"Feature" == 1,
	"Single" == 0,
	"AtFilter" == 2,
}

---@enum GlShaderTypes
local GlShaderTypes = {
	"TessCtrl" == 36488,
	"Fragment" == 35632,
	"Vertex" == 35633,
	"TessEval" == 36487,
	"Geometry" == 36313,
}

---@enum TCViewMode
local TCViewMode = {
	"Text" == 0,
	"Both" == 2,
	"Timeline" == 1,
}

---@enum MiniFadersMode
local MiniFadersMode = {
	"Rotation" == 3,
	"Full" == 1,
	"None" == 0,
	"Blades" == 2,
}

---@enum PhaserValueFields
local PhaserValueFields = {
	"Integrated" == 0,
	"Accel" == 3,
	"Width" == 6,
	"Trans" == 5,
	"Decel" == 4,
	"Relative" == 2,
	"Absolute" == 1,
}

---@enum MasterReaction
local MasterReaction = {
	"Group" == 1,
	"Grand" == 2,
	"None" == 0,
}

---@enum MessageCategory
local MessageCategory = {
	"Power" == 3,
	"Cmdline" == 2,
	"USB" == 5,
	"Chat" == 6,
	"Undefined" == 0,
	"System" == 1,
	"Manet" == 4,
}

---@enum BeamMode
local BeamMode = {
	"Standard" == 2,
	"High" == 3,
	"High Fancy" == 4,
	"Line" == 1,
	"No Beam" == 0,
}

---@enum ClockSources
local ClockSources = {
	"Time Zone Clock" == 2,
	"Timecode" == 1,
	"Session Time" == 0,
	"Timer" == 3,
}

---@enum MatricksInvert
local MatricksInvert = {
	"" == 0,
	"On" == 1,
}

---@enum RowOrder
local RowOrder = {
	"Up Down" == 0,
	"Down Up" == 1,
}

---@enum PathContentType
local PathContentType = {
	"System" == 0,
	"User" == 1,
	"Mixed" == 2,
}

---@enum LastSelectedTab
local LastSelectedTab = {
	"Export" == 1,
	"Import" == 0,
	"AutoStorePresets" == 5,
	"CreatePresets" == 3,
	"AutoCreatePresets" == 4,
	"CreateGroups" == 2,
}

---@enum AssignmentButtonFunctionsGroup
local AssignmentButtonFunctionsGroup = {
	"" == 0,
	"Empty" == 0,
	"Flash" == 1,
	"Black" == 2,
	"Temp" == 13,
	"SelectFixtures" == 116,
}

---@enum ColorDisplayMode
local ColorDisplayMode = {
	"RGB" == 1,
	"CMY" == 2,
}

---@enum TimecodeSlotShort
local TimecodeSlotShort = {
	"TCSlot 3" == 2,
	"TCSlot 8" == 7,
	"TCSlot 7" == 6,
	"TCSlot 4" == 3,
	"TCSlot 6" == 5,
	"TCSlot 5" == 4,
	"TCSlot 1" == 0,
	"TCSlot 2" == 1,
}

---@enum FixtureAppearanceMode
local FixtureAppearanceMode = {
	"None" == 0,
	"Enabled" == 1,
	"Graphic" == 2,
}

---@enum KnobUIStyle
local KnobUIStyle = {
	"Rotate" == 0,
	"Drag" == 1,
}

---@enum FaderEnable
local FaderEnable = {
	"AlwaysOn" == 1,
	"Disabled" == 2,
	"Toggle" == 0,
}

---@enum InfoWindowTab
local InfoWindowTab = {
	"Referenced By" == 0,
	"Depends On" == 1,
	"Note" == 2,
}

---@enum MonthShort
local MonthShort = {
	"Feb" == 1,
	"Mar" == 2,
	"Jan" == 0,
	"Apr" == 3,
	"Dec" == 11,
	"Sep" == 8,
	"Jun" == 5,
	"Oct" == 9,
	"Aug" == 7,
	"Nov" == 10,
	"May" == 4,
	"Jul" == 6,
}

---@enum AutoInterface
local AutoInterface = {
	"Auto" == 0,
}

---@enum OopsConfirmation
local OopsConfirmation = {
	"Main" == 1,
	"Always" == 2,
	"Never" == 0,
}

---@enum LayoutType
local LayoutType = {
	"Line" == 0,
	"Grid" == 1,
	"Circle" == 2,
}

---@enum TrackpadMode
local TrackpadMode = {
	"Mouse" == 0,
	"Pan/Tilt" == 1,
}

---@enum AlignmentH
local AlignmentH = {
	"Center" == 0,
	"Right" == 2,
	"Left" == 1,
}

---@enum AutoStomp
local AutoStomp = {
	"On" == 2,
	"Prio" == 1,
	"Off" == 0,
}

---@enum ShuffleMode
local ShuffleMode = {
	"Unlinked" == 2,
	"Auto" == 0,
	"Linked" == 1,
}

---@enum CachedObjectSource
local CachedObjectSource = {
	"Resource" == 0,
	"Library" == 1,
	"Showfile" == 2,
}

---@enum FocusSearchPolicy
local FocusSearchPolicy = {
	"Force" == 1,
	"Suppress" == 2,
	"Default" == 0,
}

---@enum SelectionModeLayout
local SelectionModeLayout = {
	"2D Grid" == 0,
	"Linearize" == 1,
}

---@enum RDMParameterCommand
local RDMParameterCommand = {
	"CC_SET" == 2,
	"CC_GET" == 1,
	"CC_GET_SET" == 3,
	"None" == 0,
}

---@enum SelectedEnvironment
local SelectedEnvironment = {
	"Normal" == 0,
	"Preview" == 1,
}

---@enum EC_AutoGrid
local EC_AutoGrid = {
	"Manual" == 0,
	"Auto" == 1,
}

---@enum GestureResult
local GestureResult = {
	"TriggerGesturePassEvent" == 4,
	"MayBeGesture" == 2,
	"FinishGesturePassEvent" == 6,
	"EventProcessed" == 1,
	"TriggerGesture" == 3,
	"Ignore" == 0,
	"CancelGesture" == 7,
	"FinishGesture" == 5,
}

---@enum PropertyRadioButtonListSetType
local PropertyRadioButtonListSetType = {
	"Set" == 0,
	"Direct" == 1,
	"Property" == 2,
}

---@enum StoreMode
local StoreMode = {
	"Remove" == 3,
	"Ask" == -1,
	"Merge" == 2,
	"Abort" == 0,
	"Overwrite" == 1,
	"Release" == 4,
	"CreateSecondCue" == 5,
}

---@enum StoremodeRadio
local StoremodeRadio = {
	"Ask" == -1,
	"Merge" == 2,
	"Overwrite" == 1,
	"Release" == 4,
	"Remove" == 3,
}

---@enum WindowCategories
local WindowCategories = {
	"Programmer Tools" == 8,
	"Data Pool" == 3,
	"Media" == 1,
	"All" == 6,
	"Playback" == 11,
	"Bars" == 10,
	"Viewers and Editors" == 9,
	"Dynamic" == 4,
	"Show Data" == 0,
	"Feature Group" == 5,
	"User Profile" == 2,
	"Sheets" == 7,
	"Info and System" == 12,
}

---@enum SignalSlot
local SignalSlot = {
	"Slot 1" == 0,
	"Slot 6" == 5,
	"Slot 3" == 2,
	"Slot 5" == 4,
	"Slot 2" == 1,
	"Slot 7" == 6,
	"Slot 8" == 7,
	"Slot 4" == 3,
	"Off" == 4294967295,
}

---@enum LayoutElementAlignmentH
local LayoutElementAlignmentH = {
	"OutsideLeft" == 3,
	"OutsideRight" == 4,
	"Center" == 0,
	"Right" == 2,
	"Left" == 1,
}

---@enum TimerAction
local TimerAction = {
	"Toggle" == 0,
	"Select" == 1,
}

---@enum VirtualKeyCode
local VirtualKeyCode = {
	"ENCODER_OUTSIDE3" == 94,
	"ALIGN" == 51,
	"FADER" == 36,
	"DEF_GOBACK" == 39,
	"X7" == 25,
	"MOVE" == 48,
	"BLIND" == 14,
	"X15" == 33,
	"X11" == 29,
	"ONPC_SCREEN4" == 129,
	"DEF_PAUSE" == 38,
	"PREV_STEP" == 118,
	"ASSIGN" == 63,
	"PAUSE" == 40,
	"ENCODER_OUTSIDE1" == 90,
	"SELFIX" == 7,
	"STORE" == 66,
	"MA1" == 1,
	"ENCODER_OUTSIDE5" == 98,
	"DOWN" == 8,
	"AT" == 82,
	"ONPC_SCREEN3" == 128,
	"TOGGLE" == 106,
	"OOPS" == 86,
	"MACRO" == 142,
	"MA2" == 2,
	"PREV_Y" == 116,
	"NEXT_Y" == 120,
	"KILL" == 103,
	"ONPC_SCREEN6" == 131,
	"CLEAR" == 87,
	"THRU" == 78,
	"PAGE_UP" == 16,
	"X16" == 34,
	"SEQUENCE" == 59,
	"DOUBLE_SPEED" == 113,
	"LOAD" == 108,
	"PREVIEW" == 13,
	"X14" == 32,
	"PREV" == 3,
	"UPDATE" == 65,
	"ENCODER_INSIDE5" == 97,
	"ONPC_SCREEN2" == 127,
	"UNDO" == 86,
	"LEARN" == 43,
	"X12" == 30,
	"XKEYS" == 15,
	"NEXT_X" == 119,
	"NUM4" == 71,
	"GOTO" == 55,
	"DMX" == 140,
	"EDIT" == 62,
	"PREV_X" == 115,
	"DELETE" == 50,
	"TEMP" == 105,
	"DEF_GO" == 37,
	"GROUP" == 58,
	"TOGGLE_MATRICKS" == 125,
	"COPY" == 49,
	"ESC" == 88,
	"ENCODER_INSIDE3" == 93,
	"SLASH" == 83,
	"ONPC_SCREEN5" == 130,
	"TOP" == 107,
	"MENU" == 9,
	"ENCODER_INSIDE1" == 89,
	"USER1" == 99,
	"CUE" == 60,
	"" == 0,
	"UP" == 6,
	"UNKNOWN" == 0,
	"NUM1" == 68,
	"SET" == 5,
	"X8" == 26,
	"PREV_Z" == 117,
	"MINUS" == 79,
	"HALF_SPEED" == 112,
	"SWAP" == 111,
	"IF" == 81,
	"X6" == 24,
	"X5" == 23,
	"X4" == 22,
	"GOSTEP" == 110,
	"X3" == 21,
	"X2" == 20,
	"PLEASE" == 84,
	"X13" == 31,
	"X10" == 28,
	"DOT" == 80,
	"EXECUTOR" == 144,
	"VIEW" == 139,
	"USER2" == 100,
	"NUM7" == 74,
	"FULL" == 85,
	"STEP" == 123,
	"ENCODER_OUTSIDE2" == 92,
	"CHANNEL" == 57,
	"FREEZE" == 12,
	"BLACK" == 102,
	"FIX" == 134,
	"HELP" == 53,
	"GOBACKFAST" == 44,
	"X9" == 27,
	"FLASH" == 101,
	"X1" == 19,
	"LAYOUT" == 137,
	"RATE1" == 104,
	"GRID" == 136,
	"FIXTURE" == 56,
	"ENCODER_INSIDE4" == 95,
	"OFF" == 47,
	"RECORD" == 114,
	"GOBACK" == 41,
	"NUM0" == 67,
	"ONPC_SCREEN7" == 132,
	"GOFAST" == 45,
	"ON" == 46,
	"GO" == 42,
	"LIST" == 18,
	"HIGHLIGHT" == 10,
	"PAGE" == 143,
	"LOWLIGHT" == 109,
	"NUM5" == 72,
	"NUM2" == 69,
	"CLONE" == 135,
	"NUM8" == 75,
	"PAGE_DOWN" == 17,
	"NUM6" == 73,
	"NEXT" == 4,
	"STOMP" == 52,
	"NUM9" == 76,
	"NUM3" == 70,
	"ENCODER_OUTSIDE4" == 96,
	"TOGGLE_STEP" == 124,
	"NEXT_Z" == 121,
	"PLUS" == 77,
	"PHASER" == 141,
	"NEXT_STEP" == 122,
	"PRESET" == 61,
	"ASTERISK" == 133,
	"ENCODER_INSIDE2" == 91,
	"RESET_MATRICKS" == 126,
	"EXEC" == 35,
	"SOLO" == 11,
	"SELECT" == 54,
	"TIME" == 64,
	"TIMECODE" == 138,
}

---@enum CommandWingBarDisplayMode
local CommandWingBarDisplayMode = {
	"Labels" == 0,
	"Hardware Buttons" == 1,
}

---@enum ColorSource
local ColorSource = {
	"Alpha" == 3,
	"Intensity" == 4,
	"Blue" == 2,
	"Red" == 0,
	"Green" == 1,
	"Const" == 5,
}

---@enum TimecodeSlot
local TimecodeSlot = {
	"TCSlot 3" == 2,
	"TCSlot 7" == 6,
	"TCSlot 5" == 4,
	"TCSlot 8" == 7,
	"<Selected>" == 255,
	"TCSlot 4" == 3,
	"TCSlot 2" == 1,
	"TCSlot 1" == 0,
	"TCSlot 6" == 5,
}

---@enum PresetDisplayMode
local PresetDisplayMode = {
	"Symbol" == 2,
	"Text and Symbol" == 0,
	"Text" == 1,
	"Auto" == 3,
}

---@enum GridCursorMovementGroup
local GridCursorMovementGroup = {
	"<Linked>" == 3,
	"Append X" == 1,
	"Newline" == 2,
	"None" == 0,
}

---@enum LayoutSizePolicy
local LayoutSizePolicy = {
	"Fixed" == 0,
	"Content" == 2,
	"Stretch" == 1,
}

---@enum ImageRotation
local ImageRotation = {
	"270 " == 3,
	"None" == 0,
	"180 " == 2,
	"90 " == 1,
}

---@enum WeekDay
local WeekDay = {
	"Friday" == 4,
	"Wednesday" == 2,
	"Saturday" == 5,
	"Monday" == 0,
	"Tuesday" == 1,
	"Sunday" == 6,
	"Thursday" == 3,
}

---@enum EncoderLinkResolution
local EncoderLinkResolution = {
	"Single" == 0,
	"FeatureGroup" == 1,
}

---@enum DMXBreak
local DMXBreak = {
	"Overwrite" == -1,
}

---@enum DmxCurveEditTool
local DmxCurveEditTool = {
	"MovePoint" == 4,
	"MoveSpline" == 5,
	"Select" == 1,
	"Delete" == 3,
	"AddAbsolute" == 2,
	"MoveArea" == 0,
}

---@enum GridSortOrder
local GridSortOrder = {
	"None" == 0,
	"Desc" == 2,
	"Asc" == 1,
}

---@enum DisplayType
local DisplayType = {
	"Small" == 2,
	"Big" == 0,
	"Long" == 1,
}

---@enum FixtureTypeXYZStatus
local FixtureTypeXYZStatus = {
	"Yes" == 2,
	"Partial" == 1,
	"No" == 0,
}

---@enum CueOnlyPopup
local CueOnlyPopup = {
	"Cue Only" == 1,
	"Dimmer Cue Only" == 3,
	"Tracking" == 0,
}

---@enum TimecodeEncoderFunction
local TimecodeEncoderFunction = {
	"Edit" == 0,
}

---@enum PlaybackWindowExecFrom
local PlaybackWindowExecFrom = {
	"66-70" == 14,
	"51-55" == 11,
	"31-35" == 7,
	"56-60" == 12,
	"61-65" == 13,
	"06-10" == 2,
	"76-80" == 16,
	"21-25" == 5,
	"71-75" == 15,
	"None" == 0,
	"26-30" == 6,
	"01-05" == 1,
	"86-90" == 16,
	"81-85" == 15,
	"36-40" == 8,
	"41-45" == 9,
	"11-15" == 3,
	"46-50" == 10,
	"16-20" == 4,
}

---@enum EC_NoGrid
local EC_NoGrid = {
	"" == 134217727,
	"None" == 134217727,
}

---@enum InfoAutoListRef
local InfoAutoListRef = {
	"SelectedSequence" == 1,
	"SelectedMacro" == 2,
	"LastSelectedObject" == 3,
	"None" == 0,
}

---@enum FixtureInvert
local FixtureInvert = {
	"Yes" == 1,
	"1" == 1,
	"0" == 0,
	"" == 0,
	"No" == 1,
	"true" == 1,
	"on" == 1,
	"false" == 0,
	"<Blank>" == 0,
	"Inverted" == 1,
	"off" == 0,
}

---@enum ScrollType
local ScrollType = {
	"Horizontal" == 1,
	"Vertical" == 0,
}

---@enum Pretty RDMSensorUnit
local Pretty
RDMSensorUnit = {
	"Ω" == 9,
	"UNITS_MS" == 128,
	"°C" == 1,
	"B" == 28,
	"sr" == 23,
	"°" == 22,
	"W" == 10,
	"s" == 21,
	"V (AC P-P)" == 3,
	"m/s" == 16,
	"A (DC)" == 5,
	"V (AC RMS)" == 4,
	"m³" == 14,
	"m²" == 13,
	"A (AC RMS)" == 7,
	"N" == 18,
	"kg" == 11,
	"P" == 20,
	"kg/(m²)" == 15,
	"Hz" == 8,
	"lm" == 25,
	"m/(s²)" == 17,
	"cd" == 24,
	"V (DC)" == 2,
	"" == 0,
	"IRE" == 27,
	"lx" == 26,
	"J" == 19,
	"m" == 12,
	"A (AC P-P)" == 6,
}

---@enum MultiLedBeamMode
local MultiLedBeamMode = {
	"Single Beam Dynamic Gobo" == 2,
	"Separated Beams" == 0,
	"Single Beam Mean Color" == 1,
}

---@enum ValueReadoutModeAuto
local ValueReadoutModeAuto = {
	"Physical" == 2,
	"Auto" == -1,
	"Decimal16" == 4,
	"Natural" == 9,
	"Decimal8" == 3,
	"Decimal24" == 5,
	"Hex8" == 6,
	"PercentFine" == 1,
	"Percent" == 0,
	"Hex16" == 7,
	"Hex24" == 8,
}

---@enum PresetLinkMode
local PresetLinkMode = {
	"Integrated" == 1,
	"Referenced" == 0,
	"Both" == 2,
	"None" == -1,
}

---@enum CueOperationMode
local CueOperationMode = {
	"Cue Only" == 0,
	"Tracking" == 1,
}

---@enum ShadowMapQuality
local ShadowMapQuality = {
	"Low" == 1,
	"High" == 3,
	"Very High" == 4,
	"Medium" == 2,
	"None" == 0,
}

---@enum ImageSource
local ImageSource = {
	"Symbols" == 1,
	"Videos" == 3,
	"Images" == 2,
	"Gobos" == 0,
}

---@enum TrackEditApplyFor
local TrackEditApplyFor = {
	"All Parts in sel. Cue(s)" == 1,
	"All Cues/Parts" == 2,
	"Selected Part(s)" == 0,
}

---@enum ValueReadoutMode
local ValueReadoutMode = {
	"Physical" == 2,
	"PercentFine" == 1,
	"Hex24" == 8,
	"Decimal8" == 3,
	"Decimal24" == 5,
	"Hex8" == 6,
	"Hex16" == 7,
	"Percent" == 0,
	"Decimal16" == 4,
}

---@enum MasterPriority
local MasterPriority = {
	"Normal" == 3,
	"VeryLow" == 1,
	"Never" == 0,
	"High" == 4,
	"Low" == 2,
}

---@enum DmxSheetHeaderType
local DmxSheetHeaderType = {
	"" == 0,
}

---@enum AssignmentProgExecButtonFunctions
local AssignmentProgExecButtonFunctions = {
	"" == 0,
	"On" == 7,
	"Empty" == 0,
	"Toggle" == 14,
	"Off" == 8,
}

---@enum PultType
local PultType = {
	"Conventional" == 1,
	"Web" == 2,
	"Any" == 0,
}

---@enum BuildType
local BuildType = {
	"Debug" == 1,
	"Release" == 0,
	"Asan" == 2,
}

---@enum Master
local Master = {
	"DefaultXFade" == 1,
	"GrandSoundIn" == 24,
	"GrandWorld" == 12,
	"None" == 255,
	"Speed8" == 33,
	"Playback24" == 65,
	"DefaultRate" == 5,
	"DefaultSpeed" == 6,
	"GrandSolo" == 15,
	"Playback5" == 46,
	"Playback42" == 83,
	"Playback25" == 66,
	"Playback1" == 42,
	"GrandSoundFade" == 25,
	"Playback36" == 77,
	"GrandMaster" == 11,
	"Playback50" == 91,
	"Speed4" == 29,
	"Playback37" == 78,
	"Speed3" == 28,
	"Playback4" == 45,
	"DefaultMaster" == 0,
	"Playback7" == 48,
	"Playback35" == 76,
	"Playback22" == 63,
	"Playback41" == 82,
	"GrandProgramXFade" == 19,
	"Playback19" == 60,
	"GrandLowlight" == 14,
	"Playback27" == 68,
	"Playback16" == 57,
	"Playback46" == 87,
	"GrandHighlight" == 13,
	"GrandSoundOut" == 23,
	"Playback13" == 54,
	"GrandExecTime" == 20,
	"Playback29" == 70,
	"DefaultXFadeA" == 2,
	"Playback12" == 53,
	"Playback26" == 67,
	"Playback23" == 64,
	"Playback9" == 50,
	"Playback21" == 62,
	"GrandExecXFade" == 21,
	"Playback6" == 47,
	"Playback40" == 81,
	"Speed6" == 31,
	"Speed9" == 34,
	"Speed12" == 37,
	"Speed7" == 32,
	"Speed5" == 30,
	"Speed2" == 27,
	"Speed15" == 40,
	"Speed14" == 39,
	"Playback39" == 80,
	"Speed13" == 38,
	"Speed11" == 36,
	"BPM" == 41,
	"DefaultXFadeB" == 3,
	"Speed10" == 35,
	"Playback45" == 86,
	"Playback34" == 75,
	"Playback32" == 73,
	"Speed1" == 26,
	"Playback10" == 51,
	"Playback11" == 52,
	"Playback8" == 49,
	"Playback18" == 59,
	"Playback49" == 90,
	"Playback15" == 56,
	"DefaultTemp" == 4,
	"Playback48" == 89,
	"Playback47" == 88,
	"Playback30" == 71,
	"Playback44" == 85,
	"Playback43" == 84,
	"GrandProgramTime" == 18,
	"DefaultSolo" == 9,
	"DefaultTime" == 10,
	"DefaultHighlight" == 7,
	"GrandSpeed" == 17,
	"Playback14" == 55,
	"GrandRate" == 16,
	"Playback28" == 69,
	"Playback17" == 58,
	"DefaultLowlight" == 8,
	"Playback31" == 72,
	"Playback2" == 43,
	"Playback20" == 61,
	"Playback38" == 79,
	"Playback3" == 44,
	"Playback33" == 74,
}

---@enum ItemGroupPosition
local ItemGroupPosition = {
	"End" == 3,
	"Center" == 2,
	"Begin" == 1,
	"None" == 0,
}

---@enum RDMProductDetail
local RDMProductDetail = {
	"Manufacturer Specific" == 32768,
	"PRODUCT_DETAIL_BUBBLE" == 773,
	"PRODUCT_DETAIL_RELAY_MECHANICAL" == 1036,
	"PRODUCT_DETAIL_BITANGLE_MODULATION" == 1033,
	"PRODUCT_DETAIL_CONTROLLABLE_BREAKER" == 2562,
	"PRODUCT_DETAIL_TEST" == 2306,
	"PRODUCT_DETAIL_WATER_JET" == 778,
	"PRODUCT_DETAIL_OLEFACTORY_STIMULATOR" == 776,
	"PRODUCT_DETAIL_MERGE" == 1538,
	"PRODUCT_DETAIL_DIMMING_SHUTTER" == 260,
	"PRODUCT_DETAIL_ARC" == 1,
	"PRODUCT_DETAIL_MIRRORBALL_ROTATOR" == 1280,
	"PRODUCT_DETAIL_NOT DECLARED" == 0,
	"PRODUCT_DETAIL_SPLITTER" == 1536,
	"PRODUCT_DETAIL_FILM" == 514,
	"PRODUCT_DETAIL_GOBO_ROTATOR" == 264,
	"PRODUCT_DETAIL_COLORSCROLLER" == 256,
	"PRODUCT_DETAIL_SINE" == 1026,
	"PRODUCT_DETAIL_FADER" == 2049,
	"PRODUCT_DETAIL_OTHER_ROTATOR" == 1281,
	"PRODUCT_DETAIL_RELAY_ELECTRONIC" == 1037,
	"PRODUCT_DETAIL_COLORWHEEL" == 257,
	"PRODUCT_DETAIL_LCDGATE" == 516,
	"PRODUCT_DETAIL_DC" == 1028,
	"PRODUCT_DETAIL_SWITCH_ELECTRONIC" == 1038,
	"PRODUCT_DETAIL_IRIS_DOUSER" == 259,
	"PRODUCT_DETAIL_FLAME_OTHER" == 775,
	"PRODUCT_DETAIL_INCANDESCENT" == 3,
	"PRODUCT_DETAIL_SNOW" == 777,
	"PRODUCT_DETAIL_KABUKI_DROP" == 1282,
	"PRODUCT_DETAIL_COLDCATHODE" == 6,
	"PRODUCT_DETAIL_LN2" == 772,
	"PRODUCT_DETAIL_ANALOG_MULTIPLEX" == 1795,
	"PRODUCT_DETAIL_EFFECTS_DISC" == 263,
	"PRODUCT_DETAIL_FLUROESCENT" == 5,
	"PRODUCT_DETAIL_DATAPATCH" == 1539,
	"PRODUCT_DETAIL_GFI_RCD" == 2560,
	"PRODUCT_DETAIL_LASER" == 8,
	"PRODUCT_DETAIL_SLIDE" == 513,
	"PRODUCT_DETAIL_CONFETTI" == 780,
	"PRODUCT_DETAIL_CONTACTOR" == 1039,
	"PRODUCT_DETAIL_BATTERY" == 2561,
	"PRODUCT_DETAIL_HIGHFREQUENCY_12V" == 1035,
	"PRODUCT_DETAIL_PROFILE_SHUTTER" == 261,
	"PRODUCT_DETAIL_WIRELESS_LINK" == 1540,
	"PRODUCT_DETAIL_SWITCH_PANEL" == 1796,
	"PRODUCT_DETAIL_HFBALLAST" == 1029,
	"PRODUCT_DETAIL_OTHER" == 32767,
	"PRODUCT_DETAIL_FOGGER_WATER" == 770,
	"PRODUCT_DETAIL_VIDEO" == 512,
	"PRODUCT_DETAIL_FLAME_PROPANE" == 774,
	"PRODUCT_DETAIL_WIND" == 779,
	"PRODUCT_DETAIL_MHR_BALLAST" == 1032,
	"PRODUCT_DETAIL_FOGGER_MINERALOIL" == 769,
	"PRODUCT_DETAIL_ROUTER" == 2048,
	"PRODUCT_DETAIL_PWM" == 1027,
	"PRODUCT_DETAIL_MOTOR_CONTROL" == 1285,
	"PRODUCT_DETAIL_REVERSE_PHASE_CONTROL" == 1025,
	"PRODUCT_DETAIL_LINESET" == 1284,
	"PRODUCT_DETAIL_PROTOCOL_CONVERTOR" == 1793,
	"PRODUCT_DETAIL_DAMPER_CONTROL" == 1286,
	"PRODUCT_DETAIL_COLORCHANGE" == 258,
	"PRODUCT_DETAIL_CHANGEOVER_AUTO" == 2305,
	"PRODUCT_DETAIL_C02" == 771,
	"PRODUCT_DETAIL_ELECTROLUMINESCENT" == 7,
	"PRODUCT_DETAIL_HAZARD" == 781,
	"PRODUCT_DETAIL_ANALOG_DEMULTIPLEX" == 1794,
	"PRODUCT_DETAIL_HFHV_NEONBALLAST" == 1030,
	"PRODUCT_DETAIL_FREQUENCY_MODULATION" == 1034,
	"PRODUCT_DETAIL_HFHV_EL" == 1031,
	"PRODUCT_DETAIL_BARNDOOR_SHUTTER" == 262,
	"PRODUCT_DETAIL_METAL_HALIDE" == 2,
	"PRODUCT_DETAIL_FOGGER_GLYCOL" == 768,
	"PRODUCT_DETAIL_MIXER" == 2050,
	"PRODUCT_DETAIL_LED" == 4,
	"PRODUCT_DETAIL_ETHERNET_NODE" == 1537,
	"PRODUCT_DETAIL_CURTAIN" == 1283,
	"PRODUCT_DETAIL_CHANGEOVER_MANUAL" == 2304,
	"PRODUCT_DETAIL_FLASHTUBE" == 9,
	"PRODUCT_DETAIL_OILWHEEL" == 515,
	"PRODUCT_DETAIL_PHASE_CONTROL" == 1024,
}

---@enum XFadeMode
local XFadeMode = {
	"AB" == 0,
	"Split" == 1,
}

---@enum InputControl3d
local InputControl3d = {
	"Follow" == 1,
	"Camera Zoom" == 3,
	"Camera Move" == 5,
	"Camera Pivot" == 4,
	"Focus" == 7,
	"Select" == 0,
	"Camera Set Pivot" == 6,
	"Camera Orbit" == 2,
}

---@enum TimeCodeSource
local TimeCodeSource = {
	"Midi" == 0,
	"Smpte" == 1,
}

---@enum ColumnOrder
local ColumnOrder = {
	"Right Left" == 1,
	"Left Right" == 0,
}

---@enum FixtureSourceType
local FixtureSourceType = {
	"Layers" == 2,
	"Classes" == 1,
	"Fixture Types" == 0,
}

---@enum SortColorBy
local SortColorBy = {
	"Hue" == 0,
	"Saturation" == 1,
}

---@enum ReleaseType
local ReleaseType = {
	"Alpha" == 0,
	"Beta" == 1,
	"Release" == 2,
}

---@enum SpeedScale
local SpeedScale = {
	"Div4" == -2,
	"Mul64" == 6,
	"Div16" == -4,
	"Div2" == -1,
	"Mul16" == 4,
	"Div128" == -7,
	"Mul128" == 7,
	"Div256" == -8,
	"One" == 0,
	"Div64" == -6,
	"Mul256" == 8,
	"Div8" == -3,
	"Mul4" == 2,
	"Mul8" == 3,
	"Mul2" == 1,
	"Mul32" == 5,
	"Div32" == -5,
}

---@enum DSCPLevel
local DSCPLevel = {
	"" == 0,
	"Flash" == 120,
	"Critical" == 184,
	"Priority" == 56,
	"Immediate" == 88,
	"FlashOverride" == 152,
}

---@enum ColorSpaceMode
local ColorSpaceMode = {
	"ProPhoto" == 1,
	"sRGB" == 0,
	"ANSI" == 2,
	"Custom" == 3,
}

---@enum DatumMode
local DatumMode = {
	"Date" == 1,
	"Full" == 0,
	"Time" == 2,
}

---@enum RDMProductCategory
local RDMProductCategory = {
	"PRODUCT_CATEGORY_AV" == 2304,
	"PRODUCT_CATEGORY_POWER" == 1536,
	"PRODUCT_CATEGORY_FIXTURE_ACCESSORY_EFFECT" == 516,
	"PRODUCT_CATEGORY_FIXTURE_FIXED" == 257,
	"PRODUCT_CATEGORY_DATA_DISTRIBUTION" == 2049,
	"PRODUCT_CATEGORY__MANUFACTORER_SPECIFIC" == 32768,
	"PRODUCT_CATEGORY_DIMMER_AC_NONDIM" == 1284,
	"PRODUCT_CATEGORY_DIMMER_CS_LED" == 1289,
	"PRODUCT_CATEGORY_AV_AUDIO" == 2305,
	"PRODUCT_CATEGORY_TEST_EQUIPMENT_OTHER" == 29183,
	"PRODUCT_CATEGORY_TEST_EQUIPMENT" == 28929,
	"PRODUCT_CATEGORY_TEST" == 28928,
	"PRODUCT_CATEGORY_POWER_SOURCE" == 1538,
	"PRODUCT_CATEGORY_SCENIC_OTHER" == 2047,
	"PRODUCT_CATEGORY_DATA" == 2048,
	"PRODUCT_CATEGORY_DIMMER_DC_LEVEL" == 1287,
	"PRODUCT_CATEGORY_PROJECTOR_OTHER" == 1023,
	"PRODUCT_CATEGORY_SCENIC_DRIVE" == 1793,
	"PRODUCT_CATEGORY_SCENIC" == 1792,
	"PRODUCT_CATEGORY_OTHER" == 32767,
	"PRODUCT_CATEGORY_PROJECTOR_MOVING_MIRROR" == 771,
	"PRODUCT_CATEGORY_MONITOR_OTHER" == 2815,
	"PRODUCT_CATEGORY_CONTROL_BACKUPDEVICE" == 28674,
	"PRODUCT_CATEGORY_DATA_CONVERSION" == 2050,
	"PRODUCT_CATEGORY_AV_OTHER" == 2559,
	"PRODUCT_CATEGORY_FIXTURE_ACCESSORY_MIRROR" == 515,
	"PRODUCT_CATEGORY_PROJECTOR_FIXED" == 769,
	"PRODUCT_CATEGORY_ATMOSPHERIC_OTHER" == 1279,
	"PRODUCT_CATEGORY_AV_VIDEO" == 2306,
	"PRODUCT_CATEGORY_FIXTURE_MOVING_MIRROR" == 259,
	"PRODUCT_CATEGORY_FIXTURE_ACCESSORY" == 512,
	"PRODUCT_CATEGORY_ATMOSPHERIC" == 1024,
	"PRODUCT_CATEGORY_PROJECTOR" == 768,
	"PRODUCT_CATEGORY_POWER_OTHER" == 1791,
	"PRODUCT_CATEGORY_MONITOR_ENVIRONMENTAL" == 2563,
	"PRODUCT_CATEGORY_PROJECTOR_MOVING_YOKE" == 770,
	"PRODUCT_CATEGORY_DIMMER_AC_FLUORESCENT" == 1282,
	"PRODUCT_CATEGORY_NOT_DECLARED" == 0,
	"PRODUCT_CATEGORY_POWER_CONTROL" == 1537,
	"PRODUCT_CATEGORY_MONITOR_DCPOWER" == 2562,
	"PRODUCT_CATEGORY_DIMMER_DC_PWM" == 1288,
	"PRODUCT_CATEGORY_MONITOR_ACLINEPOWER" == 2561,
	"PRODUCT_CATEGORY_DIMMER_OTHER" == 1535,
	"PRODUCT_CATEGORY_FIXTURE_OTHER" == 511,
	"PRODUCT_CATEGORY_FIXTURE_MOVING_YOKE" == 258,
	"PRODUCT_CATEGORY_DIMMER_AC_COLDCATHODE" == 1283,
	"PRODUCT_CATEGORY_CONTROL_OTHER" == 28927,
	"PRODUCT_CATEGORY_DIMMER_AC_INCANDESCENT" == 1281,
	"PRODUCT_CATEGORY_FIXTURE_ACCESSORY_BEAM" == 517,
	"PRODUCT_CATEGORY_CONTROL" == 28672,
	"PRODUCT_CATEGORY_FIXTURE_ACCESSORY_OTHER" == 767,
	"PRODUCT_CATEGORY_FIXTURE" == 256,
	"PRODUCT_CATEGORY_CONTROL_CONTROLLER" == 28673,
	"PRODUCT_CATEGORY_ATMOSPHERIC_EFFECT" == 1025,
	"PRODUCT_CATEGORY_DATA_OTHER" == 2303,
	"PRODUCT_CATEGORY_DIMMER_AC_ELV" == 1285,
	"PRODUCT_CATEGORY_ATMOSPHERIC_PYRO" == 1026,
	"PRODUCT_CATEGORY_DIMMER" == 1280,
	"PRODUCT_CATEGORY_DIMMER_AC_OTHER" == 1286,
	"PRODUCT_CATEGORY_FIXTURE_ACCESSORY_YOKE" == 514,
	"PRODUCT_CATEGORY_MONITOR" == 2560,
	"PRODUCT_CATEGORY_FIXTURE_ACCESSORY_COLOR" == 513,
}

---@enum ConnectionLimitConsole
local ConnectionLimitConsole = {
	"1" == 1,
	"2" == 2,
}

---@enum RotateOption
local RotateOption = {
	"Right" == 1,
	"Left" == 0,
}

---@enum PhaserEncoderFunction
local PhaserEncoderFunction = {
	"Move & Size" == 0,
}

---@enum SectionCount
local SectionCount = {
	"3" == 3,
	"2" == 2,
	"1" == 1,
	"Auto" == 0,
}

---@enum LayoutTool
local LayoutTool = {
	"ResizeFixedRatio" == 6,
	"Select" == 1,
	"Operate" == 0,
	"Auto" == 7,
	"Resize" == 5,
	"Delete" == 3,
	"Move" == 4,
	"Add" == 2,
}

---@enum GridContentFilterMode
local GridContentFilterMode = {
	"Or" == 1,
	"And" == 0,
}

---@enum BeamType
local BeamType = {
	"Wash" == 0,
	"Spot" == 1,
	"Glow" == 6,
	"None" == 2,
	"Rectangle" == 3,
	"PC" == 4,
	"Fresnel" == 5,
}

---@enum MatricksShuffleNone
local MatricksShuffleNone = {
	"No Shuffle" == 32768,
	"None" == 0,
}

---@enum HostOs
local HostOs = {
	"Rtos" == 4,
	"Linux" == 1,
	"Undefined" == 0,
	"Mac" == 3,
	"Windows" == 2,
}

---@enum Fade
local Fade = {
	"None" == -1,
}

---@enum SpecialWindowTab
local SpecialWindowTab = {
	"Shapers" == 1,
	"Color" == 0,
	"None" == 2,
}

---@enum AssignmentTimecodeFunctions
local AssignmentTimecodeFunctions = {
	"Pause" == 18,
	"Go+" == 3,
	"SelectFixtures" == 116,
	"" == 0,
	"Toggle" == 14,
	"Flash" == 1,
	"DoubleSpeed" == 27,
	"Black" == 2,
	">>>" == 5,
	"Off" == 8,
	"<<<" == 6,
	"Top" == 15,
	"LearnSpeed" == 10,
	"Go-" == 4,
	"Temp" == 13,
	"Select" == 24,
	"Swap" == 25,
	"HalfSpeed" == 26,
	"Rate1" == 11,
	"On" == 7,
	"Empty" == 0,
	"Load" == 17,
	"Speed1" == 12,
	"Call" == 106,
	"Kill" == 29,
	"Goto" == 16,
}

---@enum UndefinedAnchors
local UndefinedAnchors = {
	"Undefined" == -1,
}

---@enum CellGrouping
local CellGrouping = {
	"SizeDriven" == 4294967295,
}

---@enum MibTiming
local MibTiming = {
	"Default" == 9223372036854775807,
}

---@enum ProgValueSource
local ProgValueSource = {
	"SelectedPlaybackBlocked" == 24,
	"PlaybackOther" == 15,
	"PlaybackBlocked" == 10,
	"PlaybackOtherMIB" == 20,
	"ProgValue" == 1,
	"None" == 0,
	"PlaybackTracked" == 9,
	"SelectedPlaybackUpGoing" == 25,
	"SelectedPlaybackTracked" == 23,
	"PlaybackOtherBlocked" == 17,
	"PlaybackOtherTracked" == 16,
	"SelectedPlaybackDownGoing" == 26,
	"PlaybackOtherDownGoing" == 19,
	"ActiveIntegrated" == 6,
	"SelectedPlaybackMIBFade" == 28,
	"ProgPreset" == 2,
	"PlaybackOtherUpGoing" == 18,
	"ActivePreset" == 5,
	"SelectedPlaybackMIB" == 27,
	"PlaybackUpGoing" == 11,
	"Playback" == 8,
	"SelectedPlayback" == 22,
	"ProgOther" == 7,
	"ProgIntegrated" == 3,
	"ActiveValue" == 4,
	"PlaybackMIBFade" == 14,
	"PlaybackMIB" == 13,
	"PlaybackDownGoing" == 12,
	"PlaybackOtherMIBFade" == 21,
}

---@enum PlaybacksOff
local PlaybacksOff = {
	"Keep Playbacks" == 0,
	"Playbacks Off" == 1,
}

---@enum ShowFileSegmentsMask
local ShowFileSegmentsMask = {
	"OutputStations" == 4,
	"Nothing" == 0,
	"LocalSettings" == 2,
	"DmxProtocols" == 8,
	"All" == 15,
	"NoShowData" == 1,
}

---@enum TotalReferenceUpdateStatus
local TotalReferenceUpdateStatus = {
	"SortHandles" == 3,
	"CollectPresets" == 1,
	"CollectCues" == 2,
	"Idle" == 0,
	"UpdatePresets" == 4,
	"TrackingConversion" == 5,
	"RecursionTest" == 7,
	"GeneratorCleanup" == 6,
}

---@enum AssignmentFaderFunctionsSubTrack
local AssignmentFaderFunctionsSubTrack = {
	"Master" == 1,
	"XA" == 3,
	"XB" == 4,
	"Speed" == 7,
	"X" == 2,
	"Rate" == 6,
	"Temp" == 5,
	"Time" == 11,
}

---@enum ChannelFilterMode
local ChannelFilterMode = {
	"All For Selected" == 3,
	"All" == 5,
	"Active" == 4,
	"Active For Selected" == 2,
}

---@enum GrandKnob
local GrandKnob = {
	"None" == 4294967295,
	"GrandKnob" == 100,
}

---@enum AssignType
local AssignType = {
	"Master" == 8,
	"MAtricks" == 13,
	"View" == 1,
	"User" == 10,
	"EncoderBar" == 18,
	"Preset" == 15,
	"Fixture" == 12,
	"Plugin" == 3,
	"Filter" == 19,
	"Macro" == 2,
	"Menu" == 4,
	"World" == 6,
	"Video" == 14,
	"Sequence" == 7,
	"Empty" == 0,
	"Timer" == 17,
	"Quickey" == 16,
	"Sound" == 9,
	"ScreenConfig" == 11,
	"Group" == 5,
}

---@enum ChannelFrequency
local ChannelFrequency = {
	"Slow1" == 3,
	"15" == 2,
	"Slow3" == 5,
	"Slow2" == 4,
	"60" == 0,
	"30" == 1,
}

---@enum OSCMode
local OSCMode = {
	"UDP" == 0,
	"TCP" == 1,
}

---@enum WingType
local WingType = {
	"grandMA3 Master Module (MM)" == 0,
	"grandMA3 Fader Module Crossfader (MFX)" == 1,
	"grandMA3 TEST" == 3,
	"grandMA3 Compact" == 4,
	"grandMA3 Fader Module Encoder (MFE)" == 2,
}

---@enum TransitionType
local TransitionType = {
	"Linear" == 0,
	"Swing" == 7,
	"Swing+" == 8,
	"Slow+" == 2,
	"Swing-" == 6,
	"Fast+" == 4,
	"SCurve" == 5,
	"Fast" == 3,
	"Slow" == 1,
}

---@enum MibMode
local MibMode = {
	"Early" == 3,
	"Default" == 0,
	"Late" == 5,
	"UponGo" == 4,
	"None" == 1,
	"Defined" == 2,
}

---@enum AssignmentRateButtonFunctions
local AssignmentRateButtonFunctions = {
	"Pause" == 18,
	"Highlight" == 19,
	"Toggle" == 14,
	"GoStep" == 23,
	"Empty" == 0,
	"Rate1" == 11,
	"" == 0,
	"On" == 7,
	"Flash" == 1,
	"Solo" == 21,
	"Lowlight" == 20,
	"Black" == 2,
	"Temp" == 13,
	"Off" == 8,
}

---@enum AssignmentGrandMasterButtonFunctions
local AssignmentGrandMasterButtonFunctions = {
	"" == 0,
	"Empty" == 0,
	"Black" == 2,
	"Temp" == 13,
	"Flash" == 1,
}

---@enum MessagePriority
local MessagePriority = {
	"Alerts" == 4,
	"Errors" == 3,
	"Undefined" == 0,
	"Warnings" == 2,
	"Spam" == 1,
}

---@enum ZoomFactor
local ZoomFactor = {
	"140%" == 8,
	"150%" == 9,
	"160%" == 10,
	"170%" == 11,
	"110%" == 5,
	"100%" == 4,
	"220%" == 16,
	"230%" == 17,
	"60%" == 0,
	"90%" == 3,
	"80%" == 2,
	"70%" == 1,
	"120%" == 6,
	"290%" == 23,
	"280%" == 22,
	"130%" == 7,
	"300%" == 24,
	"270%" == 21,
	"260%" == 20,
	"250%" == 19,
	"240%" == 18,
	"200%" == 14,
	"210%" == 15,
	"190%" == 13,
	"180%" == 12,
}

---@enum GridTool
local GridTool = {
	"Multiply" == 8,
	"Linearize" == 0,
	"RemoveGaps" == 5,
	"Newline" == 7,
	"Divide" == 9,
	"MakeSymmetrical" == 10,
	"UseMatricksPositions" == 11,
	"Transpose" == 1,
	"RemoveOffset" == 6,
	"Rotate" == 2,
	"Flip" == 3,
	"Align" == 4,
}

---@enum PresetFilterMode
local PresetFilterMode = {
	"None" == -1,
	"Output" == 1,
	"Both" == 2,
	"Input" == 0,
}

---@enum ImageStoreSource
local ImageStoreSource = {
	"NDI" == 1,
	"ScreenShot" == 0,
}

---@enum KeyAction
local KeyAction = {
	"Hold" == 2,
	"Click" == 5,
	"Press" == 1,
	"ReleaseAfterHold" == 4,
	"Release" == 0,
	"DoublePress" == 3,
}

---@enum PhaserAbsRelMode
local PhaserAbsRelMode = {
	"Abs+Rel" == 3,
	"Absolute" == 1,
	"Relative" == 2,
}

---@enum LayoutElementAlignmentV
local LayoutElementAlignmentV = {
	"Above" == 3,
	"Below" == 4,
	"Top" == 1,
	"Center" == 0,
	"Bottom" == 2,
}

---@enum RDMPidValueDisplayInvert
local RDMPidValueDisplayInvert = {
	"On" == 1,
	"Auto" == 2,
	"Off" == 0,
}

---@enum TrackEditGrouping
local TrackEditGrouping = {
	"Feature" == 1,
	"All Fixtures" == 3,
	"Selection" == 0,
	"Activation Group" == 2,
}

---@enum SpeedReadoutModeAuto
local SpeedReadoutModeAuto = {
	"Seconds" == 2,
	"BPM" == 1,
	"Hertz" == 0,
	"Auto" == -1,
}

---@enum EncoderLinkValues
local EncoderLinkValues = {
	"Single" == 0,
	"Feature" == 1,
}

---@enum ImageBackGroundMode
local ImageBackGroundMode = {
	"Tile" == 3,
	"Bar" == 1,
	"Center" == 4,
	"Stretch" == 0,
	"Crop" == 2,
}

---@enum InfoLinkMode
local InfoLinkMode = {
	"Object" == 0,
	"CurrentChild" == 1,
	"NextChild" == 2,
}

---@enum FocusReason
local FocusReason = {
	"Lua" == 6,
	"RestoreAfterModal" == 7,
	"UserClickTitle" == 4,
	"ViewChangedLimited" == 1,
	"ViewChanged" == 2,
	"UserKeyTab" == 5,
	"UserClick" == 3,
	"None" == 0,
}

---@enum EncoderRing
local EncoderRing = {
	"Outer" == 1,
	"Both" == 2,
	"Inner" == 0,
}

---@enum SpecialWindowRememberedTab
local SpecialWindowRememberedTab = {
	"Color" == 0,
	"Shapers" == 1,
}

---@enum PluginPlacement
local PluginPlacement = {
	"ForceMulti" == 2,
	"Multi" == 1,
	"Single" == 0,
}

---@enum Roles
local Roles = {
	"ObjectNoOnly" == 8,
	"Default" == 0,
	"DisplayShort" == 2,
	"Display" == 1,
	"Edit" == 4,
}

---@enum SpecialValues
local SpecialValues = {
	"Release" == 0,
	"Hold" == 1,
}

---@enum GridModeAgenda
local GridModeAgenda = {
	"Week" == 1,
	"Day" == 2,
	"Month" == 0,
}

---@enum PhaserTransformationsShort
local PhaserTransformationsShort = {
	"Mirror" == 1,
	"None" == 0,
}

---@enum SCVirtualKeyCode
local SCVirtualKeyCode = {
	"ENCODER_OUTSIDE3" == 94,
	"ALIGN" == 51,
	"FADER" == 36,
	"DEF_GOBACK" == 39,
	"X7" == 25,
	"MOVE" == 48,
	"BLIND" == 14,
	"X15" == 33,
	"X11" == 29,
	"ONPC_SCREEN4" == 129,
	"DEF_PAUSE" == 38,
	"PREV_STEP" == 118,
	"ASSIGN" == 63,
	"PAUSE" == 40,
	"ENCODER_OUTSIDE1" == 90,
	"SELFIX" == 7,
	"STORE" == 66,
	"MA1" == 1,
	"ENCODER_OUTSIDE5" == 98,
	"DOWN" == 8,
	"AT" == 82,
	"ONPC_SCREEN3" == 128,
	"TOGGLE" == 106,
	"OOPS" == 86,
	"MACRO" == 142,
	"MA2" == 2,
	"PREV_Y" == 116,
	"NEXT_Y" == 120,
	"KILL" == 103,
	"ONPC_SCREEN6" == 131,
	"CLEAR" == 87,
	"THRU" == 78,
	"PAGE_UP" == 16,
	"X16" == 34,
	"SEQUENCE" == 59,
	"DOUBLE_SPEED" == 113,
	"LOAD" == 108,
	"PREVIEW" == 13,
	"X14" == 32,
	"PREV" == 3,
	"UPDATE" == 65,
	"ENCODER_INSIDE5" == 97,
	"ONPC_SCREEN2" == 127,
	"UNDO" == 86,
	"LEARN" == 43,
	"X12" == 30,
	"XKEYS" == 15,
	"NEXT_X" == 119,
	"NUM4" == 71,
	"GOTO" == 55,
	"DMX" == 140,
	"EDIT" == 62,
	"PREV_X" == 115,
	"DELETE" == 50,
	"TEMP" == 105,
	"DEF_GO" == 37,
	"GROUP" == 58,
	"TOGGLE_MATRICKS" == 125,
	"COPY" == 49,
	"ESC" == 88,
	"ENCODER_INSIDE3" == 93,
	"SLASH" == 83,
	"ONPC_SCREEN5" == 130,
	"TOP" == 107,
	"MENU" == 9,
	"ENCODER_INSIDE1" == 89,
	"USER1" == 99,
	"CUE" == 60,
	"" == 0,
	"UP" == 6,
	"UNKNOWN" == 0,
	"NUM1" == 68,
	"SET" == 5,
	"X8" == 26,
	"PREV_Z" == 117,
	"MINUS" == 79,
	"HALF_SPEED" == 112,
	"SWAP" == 111,
	"IF" == 81,
	"X6" == 24,
	"X5" == 23,
	"X4" == 22,
	"GOSTEP" == 110,
	"X3" == 21,
	"X2" == 20,
	"PLEASE" == 84,
	"X13" == 31,
	"X10" == 28,
	"DOT" == 80,
	"EXECUTOR" == 144,
	"VIEW" == 139,
	"USER2" == 100,
	"NUM7" == 74,
	"FULL" == 85,
	"STEP" == 123,
	"ENCODER_OUTSIDE2" == 92,
	"CHANNEL" == 57,
	"FREEZE" == 12,
	"BLACK" == 102,
	"FIX" == 134,
	"HELP" == 53,
	"GOBACKFAST" == 44,
	"X9" == 27,
	"FLASH" == 101,
	"X1" == 19,
	"LAYOUT" == 137,
	"RATE1" == 104,
	"GRID" == 136,
	"FIXTURE" == 56,
	"ENCODER_INSIDE4" == 95,
	"OFF" == 47,
	"RECORD" == 114,
	"GOBACK" == 41,
	"NUM0" == 67,
	"ONPC_SCREEN7" == 132,
	"GOFAST" == 45,
	"ON" == 46,
	"GO" == 42,
	"LIST" == 18,
	"HIGHLIGHT" == 10,
	"PAGE" == 143,
	"LOWLIGHT" == 109,
	"NUM5" == 72,
	"NUM2" == 69,
	"CLONE" == 135,
	"NUM8" == 75,
	"PAGE_DOWN" == 17,
	"NUM6" == 73,
	"NEXT" == 4,
	"STOMP" == 52,
	"NUM9" == 76,
	"NUM3" == 70,
	"ENCODER_OUTSIDE4" == 96,
	"TOGGLE_STEP" == 124,
	"NEXT_Z" == 121,
	"PLUS" == 77,
	"PHASER" == 141,
	"NEXT_STEP" == 122,
	"PRESET" == 61,
	"ASTERISK" == 133,
	"ENCODER_INSIDE2" == 91,
	"RESET_MATRICKS" == 126,
	"EXEC" == 35,
	"SOLO" == 11,
	"SELECT" == 54,
	"TIME" == 64,
	"TIMECODE" == 138,
}

---@enum MouseButtonTypes
local MouseButtonTypes = {
	"Right" == 1,
	"Middle" == 2,
	"Left" == 0,
}

---@enum GridCursorMovement
local GridCursorMovement = {
	"Append X" == 1,
	"Newline" == 2,
	"None" == 0,
}

---@enum InvalidFootprint
local InvalidFootprint = {
	"?" == -1,
}

---@enum EncoderUIStyle
local EncoderUIStyle = {
	"Drag" == 2,
	"Rotate" == 1,
	"None" == 0,
}

---@enum RequestedSize
local RequestedSize = {
	"Default" == 0,
}

---@enum AgendaViewMode
local AgendaViewMode = {
	"Week" == 3,
	"Month" == 2,
	"Year" == 1,
	"Sheet" == 0,
	"Day" == 4,
}

---@enum WhiteListPacketNames
local WhiteListPacketNames = {
	"system_arm" == 1974,
	"force_x64" == 1166,
	"gma2_compat" == 1158,
	"npu_compat" == 1166,
	"onpc_mac" == 1158,
	"xport" == 1974,
	"wing" == 1974,
	"updater_arm" == 1974,
	"updater_x64" == 1166,
	"ndi_addon" == 1166,
	"system_x64" == 1166,
	"unittest" == 1166,
	"console" == 1158,
	"bootloader_x64" == 1166,
	"worldserver" == 1158,
	"manuals" == 1158,
	"viz_key" == 1174,
	"demoshows" == 1158,
	"luatest" == 1166,
	"resource_usb" == 1174,
	"utils" == 1166,
	"xport_compat" == 1974,
	"force_arm" == 1974,
	"gdtf_mvr_addon" == 1158,
	"resource" == 1982,
	"force_all" == 1982,
	"pu" == 1166,
	"fixtures" == 1158,
	"onpc_windows" == 1158,
	"third_party" == 1166,
	"gma2_ffmpeg" == 1166,
	"gma2_manuals" == 1158,
	"web_daemon" == 1158,
	"gma2_resource" == 1166,
}

---@enum HostType
local HostType = {
	"PU" == 3,
	"onPC" == 2,
	"Switch" == 6,
	"UpdateMode" == 10,
	"Undefined" == 0,
	"Console" == 1,
	"InternalWing" == 5,
	"PluginSmall" == 8,
	"Plugin" == 7,
	"NetworkNode" == 4,
	"Extension" == 9,
}

---@enum EncoderFunctionLayoutView
local EncoderFunctionLayoutView = {
	"Position" == 0,
	"Arrangement" == 1,
}

---@enum SpeedReadoutMode
local SpeedReadoutMode = {
	"Seconds" == 2,
	"Hertz" == 0,
	"BPM" == 1,
}

---@enum RealtimeCmdType
local RealtimeCmdType = {
	"DCRemote" == 7,
	"Midi" == 8,
	"GeneratorControl" == 6,
	"TimeCode" == 4,
	"Key" == 0,
	"PSN" == 9,
	"Encoder" == 2,
	"Fader" == 1,
	"OwO" == 3,
	"SoundToLight" == 5,
}

---@enum AssignmentHighlightSoloButtonFunctions
local AssignmentHighlightSoloButtonFunctions = {
	"" == 0,
	"On" == 7,
	"Empty" == 0,
	"Toggle" == 14,
	"Flash" == 1,
	"Black" == 2,
	"Temp" == 13,
	"Off" == 8,
}

---@enum DmxState
local DmxState = {
	"In" == 2,
	"Out" == 1,
	"RDM" == 5,
	"Off" == 0,
}

---@enum Config
local Config = {
	"MaxMultiPatchPerFixture" == 1024,
	"MaxElementsPerLayout" == 10000,
}

---@enum ShowUserEncoder
local ShowUserEncoder = {
	"Xkeys" == 2,
	"Exec" == 1,
	"Default" == 0,
}

---@enum ProgrammingLayerGroup
local ProgrammingLayerGroup = {
	"Phaser" == 1,
	"Values" == 0,
	"Steps" == 2,
}

---@enum CmdEventStatus
local CmdEventStatus = {
	"On" == 1,
	"Off" == 0,
}

---@enum SplitterH_LeftRight
local SplitterH_LeftRight = {
	"Right" == 0,
	"Left" == 1,
}

---@enum DmxSheetSettingsViewMode
local DmxSheetSettingsViewMode = {
	"Sheet" == 0,
}

---@enum FaderFunctions
local FaderFunctions = {
	"Master" == 32,
	"Highlight" == 39,
	"XFadeB" == 35,
	"XFadeA" == 34,
	"XFade" == 33,
	"Speed" == 38,
	"Solo" == 41,
	"Lowlight" == 40,
	"Rate" == 37,
	"Temp" == 36,
	"Time" == 42,
}

---@enum SpecialValueTypes
local SpecialValueTypes = {
	"Specials" == 2,
	"Sound" == 0,
	"Generators" == 1,
	"None" == 255,
}

---@enum YesNo
local YesNo = {
	"Yes" == 1,
	"No" == 0,
	"1" == 1,
	"0" == 0,
	"false" == 0,
	"on" == 1,
	"true" == 1,
	"off" == 0,
}

---@enum PhaserEditTool
local PhaserEditTool = {
	"ChangeRotation" == 7,
	"ChangeSpeed" == 11,
	"SelectForm" == 10,
	"Select" == 1,
	"ChangeSize" == 6,
	"MoveArea" == 0,
	"MovePoint" == 4,
	"MoveSpline" == 5,
	"AddRelative" == 3,
	"ChangeWidth" == 9,
	"ChangePhase" == 8,
	"AddAbsolute" == 2,
}

---@enum FrameFormatClockSource
local FrameFormatClockSource = {
	"<Clock Source>" == 0,
	"25 fps" == 25,
	"30 fps" == 30,
	"60 fps" == 60,
	"Seconds" == 100,
	"24 fps" == 24,
}

---@enum XYZMapping
local XYZMapping = {
	"Z" == 2,
	"Y" == 1,
	"X" == 0,
}

---@enum TimeCursorScrollMode
local TimeCursorScrollMode = {
	"Page" == 0,
	"Center" == 1,
}

---@enum MatricksShiftNone
local MatricksShiftNone = {
	"No Shift" == 32768,
	"None" == 0,
}

---@enum RecordGo
local RecordGo = {
	"as Go" == 0,
	"as Goto (Status)" == 1,
}

---@enum EmptyAsZero
local EmptyAsZero = {
	"" == 0,
}

---@enum SyntaxState
local SyntaxState = {
	"DoDebug" == 40,
	"DoImport" == 11,
	"DoAlignTransition" == 31,
	"DoPatch" == 34,
	"DoType" == 39,
	"None" == 0,
	"DoUpdate" == 14,
	"DoOops" == 15,
	"DoShutdown" == 4,
	"DoFix" == 38,
	"DoCall" == 23,
	"DoLogout" == 6,
	"DoPark" == 35,
	"DoEdit" == 17,
	"DoPaste" == 20,
	"DoLocking" == 36,
	"DoEditUpdate" == 16,
	"DoLogin" == 5,
	"SyntaxError" == -1,
	"DoValueReadout" == 32,
	"DoMove" == 21,
	"DoSetLanguage" == 7,
	"DoIncrementReset" == 27,
	"DoSetDMXReadout" == 8,
	"DoCut" == 18,
	"DoAlign" == 30,
	"DoSet" == 28,
	"DoSelectFixtures" == 25,
	"DoSelect" == 37,
	"DoSaveShowfile" == 10,
	"DoCrashMe" == 24,
	"DoExecute" == 1,
	"DoLabel" == 33,
	"DoFader" == 2,
	"DoExchange" == 43,
	"DoGrid" == 42,
	"DoNotCare" == 44,
	"DoExport" == 12,
	"DoChangeDestination" == 3,
	"DoDelete" == 22,
	"DoLoadShowfile" == 9,
	"DoList" == 41,
	"DoAssign" == 29,
	"DoCopy" == 19,
	"DoStore" == 13,
	"DoIncrement" == 26,
}

---@enum PoolSizeFactor
local PoolSizeFactor = {
	"Normal" == 1,
	"Double" == 2,
	"Half" == 0,
}

---@enum FontSizeType
local FontSizeType = {
	"Pixel" == 1,
	"Point" == 0,
}

---@enum SheetSettingsMergeMode
local SheetSettingsMergeMode = {
	"Feature" == 1,
	"None" == 0,
	"Feature Group" == 2,
}

---@enum SignalOff
local SignalOff = {
	"Off" == 4294967295,
}

---@enum ColorDisplayModeAuto
local ColorDisplayModeAuto = {
	"RGB" == 1,
	"Auto" == 0,
	"CMY" == 2,
}

---@enum FixtureTypeSource
local FixtureTypeSource = {
	"In current show" == 5,
	"grandMA2" == 1,
	"Shares" == 4,
	"grandMA3" == 0,
	"User" == 3,
	"GDTF" == 2,
}

---@enum KeyboardCodes
local KeyboardCodes = {
	"Apostrophe" == 39,
	"LeftAlt" == 342,
	"F11" == 300,
	"F7" == 296,
	"Tab" == 258,
	"Enter" == 257,
	"W" == 87,
	"Insert" == 260,
	"Y" == 89,
	"X" == 88,
	"Z" == 90,
	"LeftShift" == 340,
	"RightShift" == 344,
	"Minus" == 45,
	"Space" == 32,
	"F12" == 301,
	"Pause" == 284,
	"Up" == 265,
	"GraveAccent" == 96,
	"Left" == 263,
	"C" == 67,
	"B" == 66,
	"E" == 69,
	"D" == 68,
	"7" == 55,
	"End" == 269,
	"9" == 57,
	"8" == 56,
	"LeftCtrl" == 341,
	"O" == 79,
	"N" == 78,
	"Q" == 81,
	"P" == 80,
	"Home" == 268,
	"R" == 82,
	"U" == 85,
	"T" == 84,
	"PageUp" == 266,
	"F" == 70,
	"I" == 73,
	"H" == 72,
	"K" == 75,
	"J" == 74,
	"M" == 77,
	"L" == 76,
	"F9" == 298,
	"Right" == 262,
	"F2" == 291,
	"Delta" == 349,
	"F10" == 299,
	"kpDecimal" == 330,
	"LeftBracket" == 91,
	"Backspace" == 259,
	"1" == 49,
	"0" == 48,
	"3" == 51,
	"2" == 50,
	"5" == 53,
	"4" == 52,
	"Escape" == 256,
	"ScrollLock" == 281,
	"kpSubtract" == 333,
	"NumLock" == 282,
	"kpMultiply" == 332,
	"F6" == 295,
	"F1" == 290,
	"Period" == 46,
	"kpAdd" == 334,
	"F5" == 294,
	"World2" == 162,
	"World1" == 161,
	"V" == 86,
	"Backslash" == 92,
	"Semicolon" == 59,
	"S" == 83,
	"RightCtrl" == 345,
	"CapsLock" == 280,
	"RightAlt" == 346,
	"PrintScreen" == 283,
	"Equal" == 61,
	"kpDivide" == 331,
	"Delete" == 261,
	"6" == 54,
	"PageDown" == 267,
	"Comma" == 44,
	"F4" == 293,
	"F3" == 292,
	"Slash" == 47,
	"Down" == 264,
	"A" == 65,
	"F8" == 297,
	"RightBracket" == 93,
	"None" == -1,
	"G" == 71,
}

---@enum TrackpadPTMode
local TrackpadPTMode = {
	"Pan Only" == 0,
	"Both" == 2,
	"Tilt Only" == 1,
}

---@enum NetworkFilter
local NetworkFilter = {
	"My Session" == 1,
	"My Location" == 4,
	"Wrong Version" == 3,
	"Not My Session" == 2,
	"All" == 0,
}

---@enum ColorPickerWindowMode
local ColorPickerWindowMode = {
	"Book" == 3,
	"HSB" == 1,
	"CIE" == 0,
	"Fader" == 2,
}

---@enum ConnectorType
local ConnectorType = {
	"RJ45" == 15,
	"CEE_16A_2P" == 55,
	"TBLK" == 1,
	"EDAC120" == 29,
	"SCSI68" == 31,
	"Edison" == 53,
	"RJ11" == 16,
	"XLR4" == 13,
	"SC" == 43,
	"DIN3" == 24,
	"DB15" == 18,
	"CEE_16A_2P_110" == 56,
	"Powerlock_400A" == 64,
	"NL4" == 45,
	"PS2" == 39,
	"HDMI" == 38,
	"Powerlock_800A" == 66,
	"PowerCONTRUE1TOP" == 71,
	"N_CON" == 48,
	"LCDUP" == 41,
	"SCDUP" == 42,
	"XLR3" == 12,
	"HUBBEL_6_4" == 80,
	"DB25" == 19,
	"DIN5" == 25,
	"EDAC56" == 27,
	"RCA" == 6,
	"Camlock" == 67,
	"Powerlock_660A" == 65,
	"BNC" == 0,
	"Powerlock" == 62,
	"CENT50" == 33,
	"F_CON" == 49,
	"MDIN5" == 10,
	"L6_20" == 77,
	"IEE488" == 32,
	"HAN_16" == 75,
	"EDAC90" == 28,
	"TAG" == 2,
	"Powerlock_120A" == 63,
	"HD15" == 22,
	"CACOM" == 46,
	"CENT36" == 34,
	"Socapex_16" == 72,
	"NAC3FCA" == 68,
	"MDIN6" == 11,
	"HAN_4" == 76,
	"CENT24" == 35,
	"ST" == 44,
	"KRN" == 3,
	"L15_30" == 78,
	"TL_ST" == 40,
	"Stagepin" == 79,
	"STJ" == 4,
	"CEE_32A_2P_110" == 59,
	"SVIDEO" == 8,
	"XLR5" == 14,
	"Socapex_7" == 73,
	"CEE_125A" == 61,
	"DB37" == 20,
	"HD25" == 23,
	"Socapex_9" == 74,
	"USB" == 47,
	"DB9" == 17,
	"SCART" == 7,
	"IEC_60320_C13_14" == 52,
	"CEE_32A" == 57,
	"EDAC20" == 26,
	"DisplayPort" == 36,
	"DIN56905" == 81,
	"IEC_60320_C7_C8" == 50,
	"DVI" == 37,
	"DL96" == 30,
	"CEE_63A" == 60,
	"MDIN4" == 9,
	"MSTJ" == 5,
	"CEE_7_7" == 51,
	"Eieland" == 54,
	"PowerconTRUE1" == 70,
	"DB50" == 21,
	"CEE_32A_2P" == 58,
	"NAC3FCB" == 69,
}

---@enum CameraMode
local CameraMode = {
	"3D" == 0,
	"2D_Front" == 1,
	"2D_Left" == 2,
	"2D_Top" == 3,
	"2D_Right" == 4,
	"2D_Back" == 5,
}

---@enum ActiveDisplay
local ActiveDisplay = {
	"Sound" == 1,
	"Beat" == 2,
	"Wave" == 0,
}

---@enum ShowCreatorType
local ShowCreatorType = {
	"AutoCreate" == 1,
	"Export" == 5,
	"Groups" == 2,
	"AutoStore" == 0,
	"Import" == 4,
	"Generate" == 3,
}

---@enum CuePartAppearance
local CuePartAppearance = {
	"Number" == 1,
	"Num+Name" == 2,
	"All" == 3,
	"Off" == 0,
}

---@enum SyntaxResult
local SyntaxResult = {
	"SyntaxOk" == 0,
	"AbortBefore" == 4,
	"Execute" == 3,
	"ExecuteAfter" == 2,
	"SyntaxError" == -1,
	"Ignore" == 5,
	"ExecuteBefore" == 1,
	"Erase" == 6,
}

---@enum WindowTypes
local WindowTypes = {
	"Others" == 3,
	"Sheets" == 0,
	"Presets" == 2,
	"Pools" == 1,
}

---@enum SelectedSelection
local SelectedSelection = {
	"1" == 0,
	"2" == 1,
}

---@enum ProgLayer
local ProgLayer = {
	"SpeedMaster" == 5,
	"CueRel" == 18,
	"Phase" == 6,
	"GridPos" == 7,
	"Speed" == 4,
	"CueAbs" == 17,
	"Absolute" == 10,
	"Relative" == 11,
	"Width" == 15,
	"Measure" == 8,
	"Accel" == 12,
	"Fade" == 2,
	"Transition" == 14,
	"Decel" == 13,
	"Output" == 20,
	"Delay" == 3,
	"DMX" == 19,
}

---@enum GelGridType
local GelGridType = {
	"Small Icons" == 1,
	"List" == 0,
	"Big Icons" == 2,
}

---@enum TimeKeyTarget
local TimeKeyTarget = {
	"Fixture" == 1,
	"Cue" == 0,
}

---@enum FocusPriority
local FocusPriority = {
	"InitialFocus" == 4,
	"Never" == 0,
	"WantsFocus" == 3,
	"CanHaveFocus" == 2,
	"TabOnly" == 1,
}

---@enum DebugUsbDataSection
local DebugUsbDataSection = {
	"Protocol" == 13,
	"Smpte" == 4,
	"Software" == 15,
	"Midi" == 3,
	"All" == 0,
	"RTC" == 18,
	"Led" == 11,
	"Fader" == 10,
	"Capabilities" == 19,
	"DmxIn" == 1,
	"Digital" == 7,
	"Sync" == 12,
	"NotifierLayer" == 16,
	"Ups" == 5,
	"Text" == 17,
	"Button" == 8,
	"DmxOut" == 2,
	"Analog" == 6,
	"Encoder" == 9,
	"HeartBeat" == 14,
}

---@enum ConnectorGender
local ConnectorGender = {
	"Universal" == 0,
	"Female" == 1,
	"Male" == -1,
}

---@enum CalculatorMode
local CalculatorMode = {
	"Double" == 0,
	"Percent" == 15,
	"Hex" == 2,
	"SpeedBPM" == 7,
	"Hex8" == 12,
	"Dec16" == 10,
	"fps25" == 18,
	"Hex16" == 13,
	"SpeedHz" == 6,
	"Hex24" == 14,
	"JointTime" == 16,
	"fps60" == 20,
	"fps30" == 19,
	"Decimal" == 1,
	"SpeedSec" == 8,
	"Dec24" == 11,
	"Seconds" == 5,
	"Dec8" == 9,
	"fps24" == 17,
}

---@enum EventsPlaybackRecord
local EventsPlaybackRecord = {
	"All Events" == 1,
	"Manual Events" == 0,
}

---@enum NoName
local NoName = {}

---@enum ALSideSizeSpecial
local ALSideSizeSpecial = {
	"Hybrid" == -1,
	"Auto" == 0,
}

---@enum TimecodeSelectLastEventMode
local TimecodeSelectLastEventMode = {
	"Track" == 1,
	"All" == 2,
	"Off" == 0,
}

---@enum ShaperEncoderLinkMode
local ShaperEncoderLinkMode = {
	"Mirrored" == 3,
	"Parallel" == 2,
	"All" == 1,
	"None" == 0,
}

---@enum StoreSource
local StoreSource = {
	"Programmer" == 0,
	"Output" == 1,
	"DMX" == 2,
}

---@enum TrackingShield
local TrackingShield = {
	"DAZ" == 2,
	">0" == 2,
	"DimmerRisingFromZero" == 1,
	"DRZ" == 1,
	"^0" == 1,
	"DimmerAboveZero" == 2,
	"Off" == 0,
}

---@enum UndefinedMin
local UndefinedMin = {
	"-" == -32768,
}

---@enum ColorSample
local ColorSample = {
	"CES46" == 45,
	"CES43" == 42,
	"CES08" == 7,
	"CES61" == 60,
	"CES06" == 5,
	"CES32" == 31,
	"CES02" == 1,
	"CES67" == 66,
	"CES70" == 69,
	"CES77" == 76,
	"CES90" == 89,
	"CES23" == 22,
	"CES72" == 71,
	"CES38" == 37,
	"CES33" == 32,
	"CES51" == 50,
	"CES10" == 9,
	"CES74" == 73,
	"CES34" == 33,
	"CES35" == 34,
	"CES30" == 29,
	"CES15" == 14,
	"CES16" == 15,
	"CES42" == 41,
	"CES97" == 96,
	"CES73" == 72,
	"CES53" == 52,
	"CES48" == 47,
	"CES05" == 4,
	"CES49" == 48,
	"CES89" == 88,
	"CES07" == 6,
	"CES18" == 17,
	"CES87" == 86,
	"CES76" == 75,
	"CES52" == 51,
	"CES79" == 78,
	"CES71" == 70,
	"CES50" == 49,
	"CES17" == 16,
	"CES03" == 2,
	"CES69" == 68,
	"CES60" == 59,
	"CES92" == 91,
	"CES82" == 81,
	"CES41" == 40,
	"CES54" == 53,
	"CES13" == 12,
	"CES04" == 3,
	"CES66" == 65,
	"CES78" == 77,
	"CES40" == 39,
	"CES28" == 27,
	"CES11" == 10,
	"CES14" == 13,
	"CES98" == 97,
	"CES81" == 80,
	"CES47" == 46,
	"CES95" == 94,
	"CES27" == 26,
	"CES94" == 93,
	"CES24" == 23,
	"CES93" == 92,
	"CES63" == 62,
	"CES91" == 90,
	"CES29" == 28,
	"CES86" == 85,
	"CES85" == 84,
	"CES44" == 43,
	"CES56" == 55,
	"CES84" == 83,
	"CES83" == 82,
	"CES96" == 95,
	"CES20" == 19,
	"CES80" == 79,
	"CES99" == 98,
	"CES26" == 25,
	"CES68" == 67,
	"CES55" == 54,
	"CES31" == 30,
	"CES65" == 64,
	"CES19" == 18,
	"CES37" == 36,
	"CES12" == 11,
	"CES22" == 21,
	"CES59" == 58,
	"CES25" == 24,
	"CES21" == 20,
	"CES75" == 74,
	"CES57" == 56,
	"CES64" == 63,
	"CES36" == 35,
	"CES01" == 0,
	"CES88" == 87,
	"CES45" == 44,
	"CES39" == 38,
	"CES09" == 8,
	"CES58" == 57,
	"CES62" == 61,
}

---@enum KeyboardModifier
local KeyboardModifier = {
	"Ctrl" == 341,
	"Shift" == 340,
	"Alt" == 342,
	"None" == -1,
}

---@enum ChildrenFillPolicy
local ChildrenFillPolicy = {
	"ColumnFirst" == 2,
	"RowFirst" == 1,
	"Default" == 0,
}

---@enum ReductionPolicy
local ReductionPolicy = {
	"EqualFirst" == 4,
	"Equal" == 3,
	"PreferLast" == 2,
	"EqualLast" == 5,
	"PreferFirst" == 1,
	"None" == 0,
}

---@enum ArrangementMarcType
local ArrangementMarcType = {
	"Dynamic" == 1,
	"Small" == 0,
}

---@enum PresetValuesMode
local PresetValuesMode = {
	"Lowlight" == 3,
	"Normal" == 0,
	"Default" == 1,
	"Highlight" == 2,
}

---@enum EncoderGroupType
local EncoderGroupType = {
	"Value" == 0,
	"Timing" == 0,
	"Speed" == 0,
}

---@enum Index
local Index = {
	"Illegal" == -1,
}

---@enum Month
local Month = {
	"April" == 3,
	"September" == 8,
	"June" == 5,
	"October" == 9,
	"January" == 0,
	"July" == 6,
	"November" == 10,
	"February" == 1,
	"December" == 11,
	"August" == 7,
	"May" == 4,
	"March" == 2,
}

---@enum EncoderFactor
local EncoderFactor = {
	"Div10" == 1677721,
	"One" == 16777216,
	"Mul50" == 838860800,
	"Mul2" == 33554432,
	"Div5" == 3355443,
	"Mul10" == 167772160,
	"Div25" == 671088,
	"Div50" == 335544,
	"Mul5" == 83886080,
	"Mul25" == 419430400,
	"Mul2.55" == 42781900,
	"Div2" == 8388608,
	"Disabled" == 0,
	"Div2.55" == 6579300,
}

---@enum AssignmentBlindButtonFunctions
local AssignmentBlindButtonFunctions = {
	"" == 0,
	"On" == 7,
	"Empty" == 0,
	"Toggle" == 14,
	"Flash" == 1,
	"Black" == 2,
	"Temp" == 13,
	"Off" == 8,
}

---@enum FrameFormat
local FrameFormat = {
	"Seconds" == 0,
	"25 fps" == 25,
	"30 fps" == 30,
	"60 fps" == 60,
	"24 fps" == 24,
}

---@enum ECPlay
local ECPlay = {
	"Yes" == 1,
	"1" == 1,
	"0" == 0,
	"" == 1,
	"No" == 0,
	"false" == 0,
	"on" == 1,
	"true" == 1,
	"off" == 0,
}

---@enum TimeNone
local TimeNone = {
	"None" == 9223372036854775807,
}

---@enum DmxSheetSettingsLevelbar
local DmxSheetSettingsLevelbar = {
	"Background" == 1,
	"Off" == 0,
	"Bar" == 2,
}

---@enum ClipMode
local ClipMode = {
	"Wrap" == 2,
	"Clip" == 1,
	"None" == 0,
}

---@enum ConnectionLimitOnPC
local ConnectionLimitOnPC = {
	"1" == 1,
	"3" == 3,
	"2" == 2,
	"5" == 5,
	"4" == 4,
}

---@enum PhaserTransformations
local PhaserTransformations = {
	"MirrorValues" == 1,
	"MirrorTimeStart" == 3,
	"MirrorTimeMiddle" == 2,
	"SquashToOne" == 4,
	"None" == 0,
}

---@enum DimmerWheelResolution
local DimmerWheelResolution = {
	"Fine" == 2,
	"Coarse" == 1,
	"Normal" == 0,
}

---@enum RDMPidValueResetDevice
local RDMPidValueResetDevice = {
	"" == 0,
	"Warm" == 1,
	"Cold" == 255,
}

---@enum PresetMode
local PresetMode = {
	"Global" == 2,
	"Selective" == 1,
	"Universal" == 3,
}

---@enum BlinkingButtonMode
local BlinkingButtonMode = {
	"Exec" == 1,
	"Prog" == 0,
}

---@enum FixtureTypeSourceImport
local FixtureTypeSourceImport = {
	"Shares" == 4,
	"grandMA3" == 0,
	"User" == 3,
	"grandMA2" == 1,
}

---@enum AssignmentQuickeyFunctions
local AssignmentQuickeyFunctions = {
	"" == 0,
	"Go+" == 3,
	"Empty" == 0,
}

---@enum RotationMode
local RotationMode = {
	"Single" == 0,
	"Group" == 1,
}

---@enum MatricksBlockNone
local MatricksBlockNone = {
	"No Block" == -1,
	"None" == 0,
}

---@enum PatchType
local PatchType = {
	"" == 0,
	"Coarse" == 1,
	"Ultra" == 3,
	"Fine" == 2,
}

---@enum DisplayNumber
local DisplayNumber = {
	"TouchMapper" == 14,
	"Small7" == 6,
	"Intern1" == 0,
	"Executors6" == 13,
	"Small6" == 5,
	"None" == 4294967295,
	"Extern5" == 4,
	"Executors2" == 9,
	"Executors3" == 10,
	"Intern3" == 2,
	"Executors5" == 12,
	"Encoders" == 7,
	"Executors1" == 8,
	"Executors4" == 11,
	"Intern2" == 1,
	"Extern4" == 3,
}

---@enum RestartOption
local RestartOption = {
	"Continue" == 0,
	"Reset" == 1,
}

---@enum AssignmentButtonFunctionsWorld
local AssignmentButtonFunctionsWorld = {
	"" == 0,
	"Empty" == 0,
	"Flash" == 1,
	"Black" == 2,
	"Temp" == 13,
	"SelectFixtures" == 116,
}

---@enum CuePartTextures
local CuePartTextures = {
	"IconCooking" == 0,
}

---@enum VideoFileSource
local VideoFileSource = {
	"File" == 0,
	"NDI" == 1,
}

---@enum EncoderType
local EncoderType = {
	"Executor" == 16,
	"Outside3" == 10,
	"Outside2" == 8,
	"TiltTrackpad" == 4,
	"Inside3" == 9,
	"Inside4" == 11,
	"Inside5" == 13,
	"PanTrackpad" == 3,
	"PanTiltFollow" == 2,
	"Inside1" == 5,
	"ColorPicker" == 1,
	"WheelMaster" == 0,
	"Inside2" == 7,
	"Outside4" == 12,
	"Outside5" == 14,
	"Outside1" == 6,
}

---@enum FixturGraphicSource
local FixturGraphicSource = {
	"Value" == 1,
	"Output" == 2,
	"Auto" == 0,
	"DMX" == 3,
}

---@enum CueCopyDst
local CueCopyDst = {
	"Retain" == 0,
	"Replace with Release" == 1,
	"Replace with Default" == 2,
}

---@enum LayoutFitType
local LayoutFitType = {
	"Canvas" == 1,
	"Both" == 2,
	"Elements" == 0,
}

---@enum PlaybackMaster
local PlaybackMaster = {
	"Playback12" == 11,
	"Playback26" == 25,
	"Playback23" == 22,
	"Playback38" == 37,
	"None" == 255,
	"Playback21" == 20,
	"Playback24" == 23,
	"Playback20" == 19,
	"Playback6" == 5,
	"Playback40" == 39,
	"Playback3" == 2,
	"Playback31" == 30,
	"Playback5" == 4,
	"Playback42" == 41,
	"Playback25" == 24,
	"Playback1" == 0,
	"Playback39" == 38,
	"Playback36" == 35,
	"Playback9" == 8,
	"Playback45" == 44,
	"Playback34" == 33,
	"Playback32" == 31,
	"Playback8" == 7,
	"Playback10" == 9,
	"Playback37" == 36,
	"Playback7" == 6,
	"Playback18" == 17,
	"Playback4" == 3,
	"Playback15" == 14,
	"Playback50" == 49,
	"Playback48" == 47,
	"Playback35" == 34,
	"Playback30" == 29,
	"Playback22" == 21,
	"Playback49" == 48,
	"Playback41" == 40,
	"Playback14" == 13,
	"Playback19" == 18,
	"Playback46" == 45,
	"Playback44" == 43,
	"Playback27" == 26,
	"Playback16" == 15,
	"Playback28" == 27,
	"Playback43" == 42,
	"Playback17" == 16,
	"Playback29" == 28,
	"Playback2" == 1,
	"Playback13" == 12,
	"Playback47" == 46,
	"Playback11" == 10,
	"Playback33" == 32,
}

---@enum TrueFalse
local TrueFalse = {
	"False" == 0,
	"True" == 1,
}

---@enum FlipOption
local FlipOption = {
	"Y" == 1,
	"X" == 0,
}

---@enum SetupType
local SetupType = {
	"Edit" == 2,
	"Live" == 1,
	"Undefined" == 0,
}

---@enum GridColumnFilterCollect
local GridColumnFilterCollect = {
	"Full" == 0,
	"Condensed" == 1,
}

---@enum MeasurementStatus
local MeasurementStatus = {
	"Dark Calibration Successful" == 3,
	"Idle" == 5,
	"No Device Found" == 1,
	"Device Found" == 2,
	"Dark Calibration Failed" == 4,
	"Measuring Fixture" == 0,
}

---@enum AxisSystem
local AxisSystem = {
	"Stage" == 0,
	"Object" == 1,
}

---@enum PhaserFields
local PhaserFields = {
	"Speed" == 4,
	"AbsPreset" == 0,
	"Delay" == 3,
	"Fade" == 2,
	"Phase" == 5,
	"Measure" == 7,
	"GridPos" == 6,
	"RelPreset" == 1,
}

---@enum CloningWindowMode
local CloningWindowMode = {
	"Layout" == 2,
	"Grid" == 1,
	"Sheet" == 0,
}

---@enum AlignMode
local AlignMode = {
	"/" == 1,
	">" == 3,
	"Off" == 0,
	"><" == 4,
	"<>" == 5,
	"<" == 2,
}

---@enum ShaperBarMode
local ShaperBarMode = {
	"Frame" == 1,
	"Blades" == 0,
}

---@enum TCDuration
local TCDuration = {
	"To End" == 0,
}

---@enum IgnoreFT
local IgnoreFT = {
	"" == 4294967295,
	"Ignore FT" == 4294967294,
	"Follow FT" == 4294967295,
}

---@enum ProgrammingLayer
local ProgrammingLayer = {
	"Absolute" == 10,
	"SpeedMaster" == 5,
	"Phase" == 6,
	"GridPos" == 7,
	"Width" == 15,
	"Transition" == 14,
	"Accel" == 12,
	"Speed" == 4,
	"Measure" == 8,
	"Relative" == 11,
	"Decel" == 13,
	"Delay" == 3,
	"Fade" == 2,
}

---@enum CueZeroMode
local CueZeroMode = {
	"All Used Attributes" == 1,
	"Only Used Dimmers" == 2,
	"Off" == 0,
}

---@enum CueCopySrc
local CueCopySrc = {
	"Status" == 1,
	"Content" == 0,
	"Look" == 2,
}

---@enum VerifyResult
local VerifyResult = {
	"Valid" == 1,
	"Expired" == 2,
	"NotVerified" == 0,
}

---@enum RDMPowerStateDefines
local RDMPowerStateDefines = {
	"POWER_STATE_NORMAL" == 255,
	"POWER_STATE_STANDBY" == 2,
	"POWER_STATE_FULL_OFF" == 0,
	"POWER_STATE_SHUTDOWN" == 1,
}

---@enum CookMode
local CookMode = {
	"Ask" == -1,
	"Merge" == 3,
	"Abort" == 0,
	"Remove" == 4,
	"MergeLowPriority" == 2,
	"Overwrite" == 1,
}

---@enum RDMManufacturerId
local RDMManufacturerId = {
	"Peternet Electronics BVBA" == 10279,
	"Lumishore Ltd. UK" == 13853,
	"James Thomas Engineering" == 19028,
	"ACME EFFECTS LTD." == 14342,
	"Electrone Americas Ltd. Co." == 5806,
	"Sundrax, LLC" == 10679,
	"Guangzhou GTD Lighting Technology Co., Ltd" == 2385,
	"LightWild LC" == 19543,
	"ACTOR-MATE CO., LTD." == 2326,
	"MARTINI S.p.A." == 19809,
	"LEDEngin Inc." == 1887,
	"I-Lum" == 18764,
	"Elaborated Networks GmbH" == 2399,
	"Motomuto Aps" == 2508,
	"Bill Coghill Company : Bill Coghill Design" == 16963,
	"Birdbrain Labs LLC" == 1102,
	"LightLife, Gesellschaft fuer audiovisuelle Erlebnisse mbH" == 19547,
	"Plsao Optoelectronics Technology Co., Ltd." == 22664,
	"Ecosense Lighting Company Limited" == 2446,
	"Engineering Arts" == 17729,
	"Kolberg Percussion GmbH" == 4842,
	"Innovation LED Limited" == 1408,
	"Pathway Connectivity Inc." == 20547,
	"SGM Technology For Lighting SPA" == 21319,
	"HUMAL Elektroonika OU" == 5220,
	"DF elettronica s.r.l." == 17510,
	"Lumascape Lighting Industries" == 1388,
	"Acuity Brands Lighting Inc." == 623,
	"Sean Sill" == 21331,
	"Planungsbuero" == 10294,
	"Avolites Ltd." == 19798,
	"NOVALIGHT S.r.l." == 20044,
	"Company NA" == 20033,
	"Lighting Innovation Group AG" == 9379,
	"WERPAX bvba" == 11170,
	"Color Kinetics Inc." == 17227,
	"HBE Lighting Systems" == 18508,
	"CHAUVET Lighting" == 8612,
	"LjusDesign AB" == 9781,
	"DAS Integrator Pte Ltd" == 8740,
	"Corsair Technology Ltd." == 1851,
	"HB-Laserkomponenten GmbH" == 9249,
	"ChromaCove LLC" == 8629,
	"Nila Inc." == 10020,
	"LumenRadio AB" == 19541,
	"GRE Alpha" == 2316,
	"Les Eclairages Lou Inc." == 17763,
	"Sand Network Systems" == 21326,
	"Raven Systems Design, Inc." == 4919,
	"ROAL Electronics SpA" == 10535,
	"Aboutshow Color Light Co., LTD" == 5860,
	"RESERVED FOR PROTOTYPING/EXPERIMENTAL USE ONLY 7" == 32759,
	"AYRTON" == 16761,
	"Technographic Displays Ltd." == 21572,
	"Spectrum Manufacturing Inc." == 21360,
	"Arnold Tang Productions" == 16724,
	"Open Lighting" == 31344,
	"Acclaim Lighting" == 714,
	"General Luminaire (Shanghai) Ltd." == 18284,
	"Pharos Architectural Controls" == 28776,
	"Lehigh Electric Products" == 9778,
	"MY-Semi Inc." == 1938,
	"DJPOWER ELECTRONIC STAGE LIGHTING FIXTURE FACTORY (GUANGZHOU)" == 20781,
	"ShowCAD Control Systems Ltd." == 21352,
	"ALADIN Architekturlicht GmbH" == 8358,
	"DIGITAL ART SYSTEM" == 17473,
	"Jinnax Opto Technology Co., Ltd." == 682,
	"Key Delfin" == 27492,
	"Aquarii, Inc." == 16721,
	"D-LED Illumination Technologies Ltd." == 1491,
	"Crystal Fountains Inc." == 2504,
	"CaptSystemes" == 8617,
	"Lumisia Co., Ltd." == 26454,
	"LED, Inc." == 20578,
	"Global Special Effects" == 18040,
	"Heliospectra AB" == 25626,
	"CTG sp. z o.o." == 1776,
	"ELC lighting" == 25964,
	"JIAXING XINHUALI LIGHTING & SOUNDING CO., LTD." == 1395,
	"Antari Lighting And Effects Ltd." == 7896,
	"W.A. Benjamin Electric Co." == 2264,
	"Martin Sukale Medientechnik GbR" == 21845,
	"Interactive Technologies, Inc." == 18766,
	"Environmental Lighting Solutions" == 25971,
	"Prolight Concepts Ltd." == 2469,
	"Engineering Solutions Inc." == 8873,
	"Teamboyce Limited" == 2426,
	"Steinigke Showtechnic GmbH" == 10666,
	"Mediatec Group" == 23980,
	"RNC Systems Inc." == 21070,
	"Rosstech Signals Inc." == 843,
	"Claude Heintz Design" == 27768,
	"CHROMLECH" == 8628,
	"GermTec GmbH & Co. KG" == 2305,
	"Winona Lighting" == 720,
	"RESERVED FOR PROTOTYPING/EXPERIMENTAL USE ONLY 0" == 32752,
	"Zumtobel Lighting GmbH" == 27757,
	"MagicFX B.V." == 18008,
	"Prism Projection" == 916,
	"Newlab S.r.l." == 4826,
	"THELIGHT Luminary for Cine and TV S.L." == 2045,
	"ERAL srl" == 17747,
	"SISTEMA Jsc" == 1772,
	"SEIKO Epson Corporation" == 5216,
	"deskontrol electronics" == 2556,
	"PH Lightning AB" == 7089,
	"Milford Instruments Ltd." == 9908,
	"AC Entertainment Products Ltd." == 2434,
	"STILED" == 2265,
	"IBL/ESD-Datentechnik GmbH" == 1669,
	"ELETTROLAB S.r.l." == 17474,
	"Aixz International (S)" == 2458,
	"Autotech Co." == 2479,
	"High End Systems Inc." == 19538,
	"Durand Interstellar, Inc." == 17481,
	"Prolites S.A.L." == 2488,
	"SV-wtu eU" == 21366,
	"Williams Electronic Design Ltd." == 11188,
	"Masiero s.r.l." == 7887,
	"Culture Crew bvba" == 8609,
	"zactrack Lighting Technologies Gmbh" == 15664,
	"Martin Professional A/S" == 19792,
	"Stardraw.com Ltd." == 21316,
	"Rena Electronica B.V." == 18561,
	"Licht-Technik" == 19540,
	"AusChristmasLighting" == 8378,
	"ARRI -- Arnold & Richter Cine Technik GmbH & Co. Betriebs KG" == 8377,
	"Starway" == 2537,
	"JAP Optoelectronic Ltd." == 20809,
	"PixelRange Inc." == 28792,
	"Doug Fleenor Design, Inc." == 17478,
	"ALS Stanislaw Binkiewicz" == 7104,
	"Oase GmbH" == 20289,
	"Lux Lumen" == 826,
	"ROE Visual Co. Ltd." == 2438,
	"Sensa-Lite Ltd." == 2260,
	"OSRAM" == 1321,
	"TecArt Lighting" == 21569,
	"Mittomakers" == 2518,
	"LED Flex Limited" == 30900,
	"www.doityourselfchristmas.com hobbyists" == 22637,
	"Shenzhen Longrich Energy Sources Technology Co., Ltd." == 2444,
	"ACS - Ackerman Computer Sciences" == 2297,
	"TESI Elettronica srl" == 21573,
	"ImageCue LLC" == 776,
	"RVL techniek" == 19148,
	"Stroytsirk LLC" == 10728,
	"Selectron Bvba" == 10674,
	"JSC MFG" == 19027,
	"Insta Elektro GmbH" == 18757,
	"Horizon Control Inc." == 18499,
	"WADAK GmbH" == 6678,
	"James Embedded Systems Engineering (JESE Ltd)" == 26724,
	"PatternAgents, LLC" == 2263,
	"Lighting Services Inc." == 11488,
	"LDDE Vertriebs Gmbh" == 9762,
	"SanDevices, LLC" == 2289,
	"Vision Quest Lighting Inc." == 22097,
	"QuickSilver Controls, Inc." == 20819,
	"MBN GmbH" == 28002,
	"RESERVED FOR PROTOTYPING/EXPERIMENTAL USE ONLY 9" == 32761,
	"Shenzhen CreateLED Electronics Co., Ltd" == 2368,
	"LightMinded Industries, Inc." == 19546,
	"ADL Electronics Ltd." == 2202,
	"MCI Group" == 2226,
	"RESERVED FOR PROTOTYPING/EXPERIMENTAL USE ONLY 1" == 32753,
	"Strand Lighting Ltd." == 29548,
	"RESERVED FOR PROTOTYPING/EXPERIMENTAL USE ONLY b" == 32763,
	"XENON ARCHITECTURAL LIGHTING" == 22629,
	"Drinelec" == 1794,
	"Lightforce Lasertechnik" == 923,
	"Stealth Light srl" == 2227,
	"Flashlight/Ampco Holding" == 17996,
	"NXP Semiconductors B.V." == 15120,
	"State Automation Pty Ltd." == 10682,
	"Integrated Theatre, Inc." == 18772,
	"Peter Meyer Project Management Adviser GmbH" == 20557,
	"Leviton Manufacturing Co., Inc." == 19525,
	"Ingenieurbuero Stahlkopf" == 4976,
	"AquaTronic" == 2358,
	"Goddard Design Co." == 18244,
	"I-Pix Digital Light Ltd." == 9788,
	"Lamp & Pencil" == 1109,
	"D.E.F. Srl" == 8738,
	"IT Ihme" == 9386,
	"DMXPROFI.EU GmbH i.G." == 17488,
	"WET" == 30564,
	"Callegenix LLC" == 10152,
	"RootPath Ltd." == 21072,
	"PXM s.c." == 20568,
	"Pangolin Laser Systems, Inc." == 28912,
	"EVC" == 8875,
	"L&L Luce&Light" == 1735,
	"Event Lighting Pty, Ltd." == 2055,
	"Lutron Electronics" == 748,
	"Stellascapes" == 11720,
	"Guangzhou Chai Yi Light Co., Ltd." == 1519,
	"D.O.M. Datenverarbeitung GmbH" == 17476,
	"LLC Lighting Technologies production" == 2462,
	"Alcorn McBride Inc." == 913,
	"Cinetix Medien u. Interface GmbH" == 17257,
	"Mueller Elektronik" == 19831,
	"Adelto Limited" == 16740,
	"LEDsistem Teknolojileri Tic. Ltd. Sti." == 5670,
	"City Design S.p.A." == 4862,
	"Brompton Technology Ltd." == 2484,
	"PLS Electronics Ltd." == 6552,
	"Selador" == 21317,
	"RESERVED FOR PROTOTYPING/EXPERIMENTAL USE ONLY 4" == 32756,
	"Guangzhou VAS Lighting Co., Ltd." == 1088,
	"LAN Systems--Midibox project" == 19778,
	"Ocean Thin Films Inc." == 21315,
	"BEGLEC NV" == 8482,
	"eventa Aktiengesellschaft" == 25974,
	"Peter Maes Technology" == 10278,
	"Moda Light" == 7821,
	"Flexvisual" == 18006,
	"Unilumin Group" == 2519,
	"St. Anne Engineering GmbH" == 257,
	"mathertel.de" == 2439,
	"AZ e-lite Pte Ltd" == 8365,
	"Leonh Hardware Enterprise Inc." == 9763,
	"Pfannenberg GmbH" == 20582,
	"Krisledz Pte. Ltd." == 1166,
	"DALCNET SRL" == 17486,
	"Niko" == 20073,
	"CODEM MUSIC S.r.l." == 17263,
	"eBrain GmbH" == 25922,
	"RUIZ TECH" == 21069,
	"KMX Inc." == 19277,
	"Bytecraft Entertainment Pty Ltd" == 16965,
	"Toni Maroni Gmb" == 10790,
	"Brink Electronics" == 2429,
	"Dangeross Design" == 25700,
	"RHENAC Systems GmbH" == 1732,
	"Coemar Spa" == 17229,
	"Licht-, Steuer- und Schaltanlagenbau GmbH (LSS GmbH)" == 19539,
	"Conceptinetics Technologies and Consultancy Ltd." == 1799,
	"TERMINAL-COM" == 1335,
	"Anytronics Ltd." == 16718,
	"Tempest Lighting Inc." == 21580,
	"Peperoni Lighting-Solutions" == 20556,
	"OFilms" == 1630,
	"Elation Lighting" == 8870,
	"Joshua 1 Systems Inc." == 18993,
	"Soundsculpture Incorporated" == 21321,
	"Digimedia Multimedia Lighting Solutions" == 17485,
	"HxDx" == 18500,
	"LightGeist Ltd." == 19527,
	"David O Smith Design" == 2328,
	"ShowLED" == 2285,
	"DigitaLicht AG" == 30600,
	"IGuzzini illuminazione spa" == 18759,
	"Blossom Communications Corp." == 4894,
	"Dream Solutions Ltd." == 8761,
	"Pulsar Light of Cambridge Ltd." == 20597,
	"ARC Solid-State Lighting Corp." == 2165,
	"Ingenieurbuero fuer Nachrichtentechnik in der Studio und Veranstaltungstechnik" == 17740,
	"GVA Lighting, Inc." == 715,
	"Macostar International Ltd." == 13192,
	"KB Design" == 2421,
	"Sean Christopher FX" == 29539,
	"Alenco BV" == 16748,
	"RESERVED FOR PROTOTYPING/EXPERIMENTAL USE ONLY 6" == 32758,
	"Loxone Electronics GmbH" == 9783,
	"IBEX UK Limited" == 18754,
	"RayComposer - R. Adams" == 1839,
	"Juno Lighting Group" == 2136,
	"Electronic Theatre Controls, Inc." == 25972,
	"Gekko Technology Ltd." == 9138,
	"ESTA1" == 65535,
	"Coolon Pty Ltd" == 8627,
	"Electronics Diversified LLC" == 17732,
	"inoage GmbH" == 18753,
	"Showtec (Highlite International B.V.)" == 10676,
	"ALL-DO INTERNATIONALCO., LTD." == 10649,
	"Audio Visual Devices P/L" == 16726,
	"Intense Lighting, LLC" == 5280,
	"E:cue Control GmbH" == 17722,
	"Revolution Display" == 21060,
	"Lichttechnik & Sonderbau" == 14295,
	"Galaxia Electronics" == 1842,
	"Wildfire, Inc." == 22342,
	"ELM Video Technology, Inc." == 17741,
	"Padura Elektronik GmbH" == 8319,
	"Lex Products Corp." == 19544,
	"MAL Effekt-Technik GmbH" == 28001,
	"Digital Sputnik Lighting" == 2447,
	"QMAXZ lighting" == 20813,
	"Focon Showtechnic" == 9015,
	"JANUS srl" == 19009,
	"WLPS Wodielite Production Services" == 2515,
	"Shanghai Moons Automation Control Co., Ltd" == 771,
	"The White Rabbit Company, Inc." == 11177,
	"CDS advanced technology bv" == 25444,
	"LED Company s.r.o." == 19685,
	"Grand Canyon LED Lighting System (Suzhou) Co., Ltd." == 1167,
	"Synthe FX, LLC" == 21318,
	"Ambra Elettronica s.r.l." == 27794,
	"Cineo Lighting" == 6669,
	"TMB" == 6906,
	"Serva Transport Systems GmbH" == 5902,
	"iLight Technologies Inc" == 26956,
	"AAdyn Technology" == 2223,
	"Fly Dragon Lighting Equipment Co.,ltd" == 14472,
	"LightProcessor Ltd" == 19536,
	"Spotlight s.r.l." == 10680,
	"AC Lasers" == 16707,
	"Solid State Luminaires" == 6456,
	"DES" == 18256,
	"SpaceCannon vH" == 21347,
	"RESERVED FOR PROTOTYPING/EXPERIMENTAL USE ONLY 3" == 32755,
	"StageLine Electronic" == 21356,
	"LSC Lighting Systems (Aust) Pty. Ltd." == 19571,
	"Shenzhen Lesan Lighting Co., Ltd." == 1451,
	"RESERVED FOR PROTOTYPING/EXPERIMENTAL USE ONLY c" == 32764,
	"Lampo Lighting Designers" == 19564,
	"Stage Services Ltd." == 4852,
	"RESERVED FOR PROTOTYPING/EXPERIMENTAL USE ONLY e" == 32766,
	"Tait Towers Manufacturing Inc." == 737,
	"ChamberPlus Co., Ltd" == 26646,
	"SRS Light Design" == 10665,
	"Johnsson Lighting Technologies AB" == 19020,
	"Robe Show Lighting s.r.o." == 21075,
	"SGM A/S" == 1836,
	"Velleman nv" == 2499,
	"Ultratec Special Effects" == 19533,
	"Kino Flo, Inc." == 19270,
	"AIM Northwest" == 20055,
	"kLabs Research UK" == 2394,
	"Lumonic Limited" == 9782,
	"Hubbell Entertainment, Inc." == 26725,
	"Griven S.r.l." == 1996,
	"Alkalite LED Technology Corp" == 8374,
	"Anaren Inc." == 31392,
	"CKC Lighting Co., Ltd." == 1579,
	"Hollywood Rentals LLC" == 4858,
	"Diginet Control Systems Pty Ltd" == 1545,
	"Les Generateurs de brouillard MDG Fog Generators Ltd." == 19780,
	"Pioneer Corporation" == 10273,
	"LGR" == 364,
	"Hale Microsystems LLC" == 9328,
	"Stagetronics Ltda" == 21332,
	"LanBolight Technology Co., LTD." == 14440,
	"Arthur Digital Solutions Kft" == 32487,
	"Imlight-Showtechnic" == 603,
	"Viso Systems Aps" == 22099,
	"v2 Lighting Group, Inc." == 5382,
	"techKnow Design Ltd." == 5658,
	"Laser Imagineering GmbH" == 1810,
	"SAN JACK ANALOG HOUSE CO., LTD." == 16465,
	"medien technik cords" == 19796,
	"lumenetix" == 1910,
	"kuwatec, Inc." == 19285,
	"i2Systems" == 915,
	"feno GmbH" == 774,
	"euroGenie" == 25927,
	"Amptown Lichttechnik GmbH" == 16717,
	"eldoLED BV" == 25711,
	"eX Systems" == 981,
	"Devantech Ltd." == 17494,
	"GEE" == 1,
	"TalentStorm Enterprises, Inc." == 21587,
	"CAST Software" == 17223,
	"HDT impex s.r.o." == 2362,
	"awaptec GmbH" == 5776,
	"LED Team" == 19556,
	"Panasonic Corporation" == 1871,
	"Diamante Lighting Srl" == 17513,
	"Moog Animatics" == 2432,
	"Dezelectric Kft." == 17477,
	"Glow Motion Technologies, LLC." == 2443,
	"EREA" == 17746,
	"Element Labs Inc." == 17772,
	"Zingerli Show Engineering" == 23123,
	"Invisible Rival Incorporated" == 18770,
	"Ingham Designs" == 18756,
	"Red Lighting s.r.l." == 6717,
	"Zero 88" == 2056,
	"Zaklad Elektroniczny AGAT s.c." == 5292,
	"ADE ELETTRONICA srl" == 16709,
	"Yifeng Lighting Co., Ltd." == 14341,
	"Xtraordinary Musical Accolade Systems" == 22605,
	"Mode Lighting (UK) Ltd." == 19788,
	"RESERVED FOR PROTOTYPING/EXPERIMENTAL USE ONLY a" == 32762,
	"XLN-t bvba" == 30828,
	"Wybron, Inc." == 22361,
	"Adam Hall GmbH" == 2212,
	"Visual Productions" == 11048,
	"Birket Engineering, Inc." == 17058,
	"W-DEV" == 22340,
	"Capricorn Software" == 17235,
	"Wireless Solution Sweden AB" == 22355,
	"STG-Beikirch Industrieelektronik + Sicherheitstechnik GmbH & Co. KG" == 21364,
	"Bushveld Labs" == 2220,
	"dilitronics GmbH" == 25708,
	"Gantom Lighting & Controls" == 8209,
	"VT-Control" == 4941,
	"LAM32 srl" == 19488,
	"Brother,Brother & Sons Aps" == 8481,
	"Thorn Lighting Limited" == 10789,
	"Turkowski GmbH" == 1461,
	"EAS SYSTEMS" == 8864,
	"Traxon Technologies Ltd." == 5852,
	"Toshiba Lighting & Technology Corporation" == 26608,
	"UP-LUX Eletronica Ltda." == 21840,
	"Theatrelight New Zealand" == 1807,
	"Creative Lighting And Sound Systems Pty Ltd" == 161,
	"Peradise" == 20581,
	"Highendled Electronics Company Limited" == 2186,
	"Enfis Ltd" == 18518,
	"HERA LED" == 26732,
	"DDS Elettronica" == 20300,
	"TheOlymp - Networking & InterNet Services" == 14903,
	"Entertainment Technology" == 17748,
	"de koster Special Effects" == 12853,
	"Ittermann electronic GmbH" == 26996,
	"Lumenpulse Lighting Inc." == 13880,
	"Altman Stage Lighting" == 16689,
	"Sturdy Corporation" == 10657,
	"Ice House Productions" == 18760,
	"Golden Sea Disco Light Manufacturer" == 18259,
	"Studio S Music City" == 7110,
	"CCI Power Supplies, LLC" == 2454,
	"Strich Labs" == 911,
	"Dove Lighting Systems, Inc." == 17484,
	"Astera LED Technology GmbH" == 16755,
	"Illum Technology LLC (previously Verde Designs, Inc.)" == 2392,
	"G-LEC Europe GmbH" == 18252,
	"RoscoLab Ltd" == 21074,
	"ARNOLD LICHTTECHNIK" == 16754,
	"DMX4ALL GmbH" == 11290,
	"Growflux LLC" == 712,
	"Schreder" == 21320,
	"MX design" == 19800,
	"OJSC Kadoshkinsky electrotechnical" == 674,
	"Simon Tech" == 21416,
	"D-Light Designs, LLC" == 8726,
	"LEDART LLC" == 1668,
	"Global Design Solutions, Ltd." == 13364,
	"Getlux Ltd." == 10628,
	"Fountain People" == 2466,
	"GPE srl" == 18245,
	"MEB Veranstaltungstechnik GmbH" == 1190,
	"ENTTEC Pty Ltd" == 17742,
	"ABLELITE INTERNATIONAL" == 578,
	"ADDiCTiON BoX GbR" == 1968,
	"Argetron Elektrik Elektronik Organizasyon Gida San. ve Dis Tic. Ltd. Sti." == 2497,
	"FLUX ECLAIRAGE" == 1060,
	"ADB - TTV Technologies nv" == 16708,
	"Eulum Design, LLC" == 2294,
	"Targetti Sankey Spa" == 1239,
	"Equipson S.A." == 1766,
	"TamaTech Labo Company Ltd," == 21588,
	"Junction Inc. Ltd" == 2129,
	"Aquatique Show Int." == 2483,
	"Rnet Lighting Technology Limited" == 2464,
	"Edward J. Keefe Jr." == 1193,
	"Smartpark Creative Solutions" == 5038,
	"OOO SAMLIGHT" == 21334,
	"GLP German Light Products GmbH" == 26476,
	"Krislite Pte. Ltd." == 2331,
	"Innovation Solutions Ltd." == 18803,
	"Advatek Lighting" == 24916,
	"BOTEX" == 16975,
	"Claudio Dal Cero Engineering" == 17475,
	"Fineline Solutions Ltd." == 2400,
	"Mole-Richardson Co." == 30734,
	"AVAB America, Inc." == 16705,
	"XTBA" == 11306,
	"Interesting Products, Inc." == 18768,
	"ChamSys Ltd." == 1290,
	"RESERVED FOR PROTOTYPING/EXPERIMENTAL USE ONLY 2" == 32754,
	"Luxam, Ltd." == 2433,
	"LLT Lichttechnik GmbH&CO.KG" == 9766,
	"Laser Technology Ltd." == 19545,
	"FATEC sarl" == 1930,
	"American-Pro International" == 1742,
	"RE-Engineering" == 701,
	"CPOINT" == 1844,
	"GuangZhou MCSWE Technologies, INC" == 5536,
	"KIM Lighting" == 2224,
	"The Light Source, Inc." == 29009,
	"Yuesheng International Limited" == 5968,
	"ESTA" == 0,
	"Lighting Science Group (formerly LED Effects, Inc.)" == 1547,
	"Legargeant and Associates" == 19557,
	"LLC Moscow Experimental Lighting Plant (TeleMechanic)" == 673,
	"DC Reactive" == 31164,
	"LIGHTOLIER" == 19561,
	"Fontana Fountains" == 2405,
	"Barco" == 16979,
	"OKEROAB AB" == 17969,
	"LEDValley Technologies Sdn Bhd" == 19542,
	"JPK Systems Limited" == 27243,
	"Grid Show Systems Inc." == 5264,
	"Hungaroflash" == 9258,
	"KissBox" == 19266,
	"Apollo Design Technology, Inc" == 24932,
	"Jands Pty Ltd." == 19041,
	"Phaton Lighting Co., Ltd." == 2298,
	"Bigbear Co., Ltd." == 2308,
	"COSMOLIGHT SRL" == 1387,
	"Ballantyne Strong Inc." == 29541,
	"City Theatrical, Inc." == 17236,
	"Advanced Lighting Systems" == 24940,
	"CLAY PAKY S.p.A" == 17232,
	"Vehtec Tecnologia Ltda" == 7296,
	"Stage Technologies Limited" == 21313,
	"Anidea Engineering, Inc." == 16713,
	"Helvar Ltd" == 9266,
	"JB-lighting GmbH" == 19010,
	"LEADER LIGHT s.r.o." == 9761,
	"Sein & Schein GmbH" == 28003,
	"EUTRAC - Intelligent Lighting GmbH" == 8874,
	"KLH Electronics PLC" == 19276,
	"Bart van Stiphout Electronics & Software" == 8496,
	"Industrias Sola Basic S.A. de C.V." == 21314,
	"Urban Visuals & Effects Ltd." == 10923,
	"Ambitsel, Inc." == 1308,
	"GUANZHOU KAVON STAGE EQUIPMENT CO., LTD." == 6280,
	"Apogee Lighting" == 16720,
	"RESERVED FOR PROTOTYPING/EXPERIMENTAL USE ONLY d" == 32765,
	"Lug Light Factory Sp. z o. o." == 2237,
	"Artistic Licence Engineering Ltd." == 16716,
	"LLC Likhoslavl Plant of Lighting Engineering (Svetotehnika)" == 672,
	"Guangzhou Yajiang (Yagang - Silver Star) Photoelectric Equipment Ltd." == 14474,
	"LaserAnimation Sollinger GmbH" == 19521,
	"Freescale Semiconductor U.K. Ltd." == 26227,
	"SIRS-E" == 2181,
	"Light.Audio.Design" == 1696,
	"Integrated System Technologies Ltd." == 18771,
	"Alektra AB" == 24908,
	"Philips Entertainment Lighting Asia" == 20545,
	"Outsight Pty Ltd." == 20341,
	"Ephesus Lighting" == 27630,
	"Lumenec Pty. Ltd." == 9786,
	"Lumina Visual Productions" == 28650,
	"Digilin Australia" == 25697,
	"SVI Public Company Limited" == 2259,
	"Robert Juliat" == 2478,
	"EverBrighten Co., Ltd." == 1344,
	"MEGATECHNICS Ltd." == 9890,
	"Lite Puter Enterprise Co., Ltd." == 5882,
	"BECKHOFF Automation GmbH" == 16961,
	"OXO" == 23616,
	"D.T.S. Illuminazione srl" == 1808,
	"EC Elettronica Srl" == 17731,
	"Radical Lighting Ltd." == 21068,
	"Philips Lighting BV" == 20584,
	"Laservision Pty Ltd" == 9776,
	"Bortis Elektronik" == 258,
	"RESERVED FOR PROTOTYPING/EXPERIMENTAL USE ONLY f" == 32767,
	"Music & Lights S.r.l." == 5584,
	"CDCA Ltd." == 17220,
	"Nerd's Meter" == 5674,
	"Nixer Ltd." == 10036,
	"Hollywood Controls Inc." == 18511,
	"Lisys Fenyrendszer Zrt." == 9764,
	"C.I.Tronics Lighting Designers Ltda" == 17225,
	"Etherlight" == 8889,
	"Fire & Magic" == 5454,
	"Carallon Ltd." == 812,
	"OTTEC Technology GmbH" == 2168,
	"LUMINEX Lighting Control Equipment bvba" == 19532,
	"PR-Electronic" == 10281,
	"MA Lighting Technology GmbH" == 19777,
	"RaumZeitLabor e.V." == 2431,
	"PiXL Factory" == 2218,
	"Philips Selecon" == 20563,
	"Ehrgeiz" == 2245,
	"NJD Electronics" == 20042,
	"SWISSON AG" == 21367,
	"Audio Scene" == 16723,
	"acdc LED Ltd." == 19676,
	"Production Resource Group" == 20562,
	"Vari-Lite, Inc." == 22092,
	"RESERVED FOR PROTOTYPING/EXPERIMENTAL USE ONLY 5" == 32757,
	"AUTOLUX Handels- und ProduktionsgmbH" == 21553,
	"Quicklights" == 20844,
	"RDC, Inc. d.b.a. LynTec" == 1616,
	"Marumo Electric Co., Ltd." == 2420,
	"RESERVED FOR PROTOTYPING/EXPERIMENTAL USE ONLY 8" == 32760,
	"PRO-SOLUTIONS" == 1375,
	"Pr-Lighting Ltd." == 28786,
	"Howard Eaton Lighting Ltd." == 18501,
	"TBE Srl" == 2374,
	"Duralamp S.p.A." == 6585,
	"SOUNDLIGHT" == 21324,
	"Luxlight Skandinavien AB" == 4832,
	"SK-Software" == 21323,
	"Connex GmbH" == 17240,
	"Brighten Technology Development Co., Ltd." == 1487,
	"SAS Productions" == 21322,
	"Red Arrow Controls" == 2272,
}

---@enum GenVirtualDimmer
local GenVirtualDimmer = {
	"Yes" == 1,
	"No" == 0,
}

---@enum WeekDayShort
local WeekDayShort = {
	"Sat" == 5,
	"Mon" == 0,
	"Fri" == 4,
	"Sun" == 6,
	"Wed" == 2,
	"Tue" == 1,
	"Thu" == 3,
}

---@enum GroupSelectionType
local GroupSelectionType = {
	"Relative" == 0,
	"Absolute" == 1,
}

---@enum ShowCreatorObjectType
local ShowCreatorObjectType = {
	"Symbols" == 13,
	"Appearances" == 0,
	"Images" == 10,
	"Videos" == 14,
	"Executor Configurations" == 17,
	"Worlds" == 30,
	"Bitmaps" == 16,
	"Views" == 8,
	"Meshes" == 11,
	"Generators" == 19,
	"Users" == 6,
	"Encoder Bars" == 2,
	"Scribbles" == 5,
	"UserProfiles" == 7,
	"Timers" == 29,
	"Groups" == 20,
	"Timecodes" == 28,
	"Sounds" == 12,
	"Sequences" == 27,
	"Filters" == 18,
	"Presets" == 26,
	"Macros" == 22,
	"Gobos" == 9,
	"Plugins" == 25,
	"Data Pools" == 15,
	"Pages" == 24,
	"Gels" == 3,
	"MAtricks" == 23,
	"Layouts" == 21,
	"Render Qualities" == 4,
	"Cameras" == 1,
}

---@enum CopyCueOnly
local CopyCueOnly = {
	"On" == 1,
	"DimmerOnly (Default New)" == 4,
	"DimmerOnly" == 3,
	"On (Default New)" == 2,
	"Off" == 0,
}

---@enum GeometryType
local GeometryType = {
	"MediaServerMaster" == 9,
	"Axis" == 1,
	"MediaServerLayer" == 7,
	"Beam" == 2,
	"None" == 0,
	"MediaServerCamera" == 8,
	"FilterBeam" == 5,
	"FilterShaper" == 6,
	"FilterColor" == 3,
	"Display" == 10,
	"FilterGobo" == 4,
}

---@enum KeyFunctions
local KeyFunctions = {
	"Pause" == 18,
	"Top" == 15,
	"Toggle" == 14,
	"Time" == 22,
	"Speed1" == 12,
	"Temp" == 13,
	"GoBack" == 4,
	"Flash" == 1,
	"LearnCueTiming" == 9,
	"Kill" == 29,
	"Black" == 2,
	"Learn" == 10,
	"Off" == 8,
	"Go" == 3,
	"Step" == 23,
	"Solo" == 21,
	"Highlight" == 19,
	"Select" == 24,
	"Record" == 28,
	"Swap" == 25,
	"On" == 7,
	"Rate1" == 11,
	"GoFast" == 5,
	"Goto" == 16,
	"Load" == 17,
	"Lowlight" == 20,
	"GoBackFast" == 6,
	"DS" == 27,
	"HS" == 26,
}

---@enum SoundValues
local SoundValues = {
	"Band3" == 6,
	"Bass" == 1,
	"Band7" == 10,
	"Mid" == 2,
	"InvBass" == 12,
	"Band2" == 5,
	"Band1" == 4,
	"High" == 3,
	"InvAll" == 11,
	"InvBand7" == 21,
	"InvBand1" == 15,
	"Band4" == 7,
	"InvMid" == 13,
	"InvHigh" == 14,
	"InvBand6" == 20,
	"Band5" == 8,
	"Band6" == 9,
	"InvBand3" == 17,
	"InvBand4" == 18,
	"All" == 0,
	"InvBand2" == 16,
	"InvBand5" == 19,
}

---@enum AssignmentFaderFunctionsNone
local AssignmentFaderFunctionsNone = {
	"" == 0,
	"Empty" == 0,
}

---@enum RDMResponseNackReason
local RDMResponseNackReason = {
	"The responder cannot interpret request as controller data was not formatted correctly." == 1,
	"The proxy buffer is full and can not store any more Queued Message or Status Message responses." == 10,
	"Not valid for Command Class attempted. May be used where GET allowed but SET is not supported." == 5,
	"Buffer or Queue space currently has no free space to store data." == 7,
	"Sub-Device is out of range or unknown." == 9,
	"Proxy is not the RDM line master and cannot comply with message." == 3,
	"SET Command normally allowed but being blocked currently." == 4,
	"The responder cannot comply due to an internal hardware fault." == 2,
	"The responder cannot comply with request because the message is not implemented in responder." == 0,
	"Value for given Parameter out of allowable range or not supported." == 6,
	"Incoming message exceeds buffer capacity." == 8,
}

---@enum UseLeftOrRight
local UseLeftOrRight = {
	"Use Other" == 1,
	"Use My" == 0,
}

---@enum DMXVirtualResolution
local DMXVirtualResolution = {
	"8 bits" == 1,
	"16 bits" == 2,
	"24 bits" == 3,
}

---@enum LineHeights
local LineHeights = {
	"1" == 1,
	"Auto" == 0,
	"3" == 3,
	"2" == 2,
	"4" == 4,
	"12" == 12,
	"6" == 6,
	"8" == 8,
	"10" == 10,
}

---@enum AssignmentButtonFunctionsUser
local AssignmentButtonFunctionsUser = {
	"" == 0,
	"Empty" == 0,
	"LogIn" == 70,
}

---@enum DmxSheetCellType
local DmxSheetCellType = {
	"Patched2" == 2,
	"NotRequested" == 6,
	"NotPatched" == 0,
	"Selected" == 3,
	"Parked" == 7,
	"SelectedInverted" == 4,
	"DmxTest" == 8,
	"PartlySelected" == 5,
	"Patched1" == 1,
}

---@enum CountdownAlertRange
local CountdownAlertRange = {
	"Local" == 0,
	"All Stations" == 1,
}

---@enum AssignmentButtonFunctionsPlugin
local AssignmentButtonFunctionsPlugin = {
	"Pause" == 18,
	"Go+" == 3,
	"Speed1" == 12,
	"" == 0,
	"Toggle" == 14,
	"Flash" == 1,
	"DoubleSpeed" == 27,
	"Black" == 2,
	">>>" == 5,
	"Off" == 8,
	"<<<" == 6,
	"LearnSpeed" == 10,
	"Go-" == 4,
	"Swap" == 25,
	"HalfSpeed" == 26,
	"Rate1" == 11,
	"On" == 7,
	"Goto" == 16,
	"Load" == 17,
	"Top" == 15,
	"Call" == 106,
	"Temp" == 13,
	"Empty" == 0,
}

---@enum PhaserViewMode
local PhaserViewMode = {
	"Sheet" == 3,
	"Auto" == 0,
	"1D" == 2,
	"2D" == 1,
}

---@enum AssignmentSpeedButtonFunctions
local AssignmentSpeedButtonFunctions = {
	"Pause" == 18,
	"LearnSpeed" == 10,
	"Toggle" == 14,
	"Flash" == 1,
	"HalfSpeed" == 26,
	"" == 0,
	"On" == 7,
	"Empty" == 0,
	"Speed1" == 12,
	"DoubleSpeed" == 27,
	"Black" == 2,
	"Temp" == 13,
	"Off" == 8,
}

---@enum FixtureIdEnum
local FixtureIdEnum = {
	"None" == 0,
}

---@enum RDMPID
local RDMPID = {
	"COMMS_STATUS" == 21,
	"SLOT_INFO" == 288,
	"QUEUED_MESSAGE" == 32,
	"LAMP_HOURS" == 1025,
	"SENSOR_VALUE" == 513,
	"None" == 0,
	"DISC_UNIQUE_BRANCH" == 1,
	"DISC_MUTE" == 2,
	"PRESET_PLAYBACK" == 4145,
	"STATUS_ID_DESCRIPTION" == 49,
	"PAN_INVERT" == 1536,
	"LAMP_STATE" == 1027,
	"BOOT_SOFTWARE_VERSION_ID" == 193,
	"LAMP_STRIKES" == 1026,
	"DEVICE_HOURS" == 1024,
	"TILT_INVERT" == 1537,
	"PRODUCT_DETAIL_ID_LIST" == 112,
	"SUPPORTED_PARAMETERS" == 80,
	"IDENTIFY_DEVICE" == 4096,
	"DISPLAY_LEVEL" == 1281,
	"LANGUAGE" == 176,
	"SOFTWARE_VERSION_LABEL" == 192,
	"SLOT_DESCRIPTION" == 289,
	"CAPTURE_PRESET" == 4144,
	"DMX_PERSONALITY_DESCRIPTION" == 225,
	"SELF_TEST_DESCRIPTION" == 4129,
	"DMX_PERSONALITY" == 224,
	"LANGUAGE_CAPABILITIES" == 160,
	"RESET_DEVICE" == 4097,
	"DEFAULT_SLOT_VALUE" == 290,
	"PAN_TILT_SWAP" == 1538,
	"DEVICE_INFO" == 96,
	"DISC_UN_MUTE" == 3,
	"RECORD_SENSORS" == 514,
	"STATUS_MESSAGES" == 48,
	"DEVICE_LABEL" == 130,
	"PARAMETER_DESCRIPTION" == 81,
	"PROXIED_DEVICE_COUNT" == 17,
	"DISPLAY_INVERT" == 1280,
	"SENSOR_DEFINITION" == 512,
	"PERFORM_SELFTEST" == 4128,
	"PROXIED_DEVICES" == 16,
	"SUB_DEVICE_STATUS_REPORT_THRESHOLD" == 51,
	"DEVICE_MODEL_DESCRIPTION" == 128,
	"BOOT_SOFTWARE_VERSION_LABEL" == 194,
	"DEVICE_POWER_CYCLES" == 1029,
	"DMX_START_ADDRESS" == 240,
	"MANUFACTURER_LABEL" == 129,
	"POWER_STATE" == 4112,
	"FACTORY_DEFAULTS" == 144,
	"LAMP_ON_MODE" == 1028,
	"REAL_TIME_CLOCK" == 1539,
	"CLEAR_STATUS_ID" == 50,
}

---@enum ValueReadoutModeNatural
local ValueReadoutModeNatural = {
	"Physical" == 2,
	"Percent" == 0,
	"Natural" == 9,
	"Decimal8" == 3,
	"Decimal24" == 5,
	"Hex8" == 6,
	"PercentFine" == 1,
	"Hex16" == 7,
	"Hex24" == 8,
	"Decimal16" == 4,
}

---@enum DMXValueReadoutMode
local DMXValueReadoutMode = {
	"Percent" == 0,
	"Decimal" == 1,
	"Hex" == 2,
}

---@enum AttributeMode
local AttributeMode = {
	"PanTilt" == 0,
	"XZ" == 2,
	"YZ" == 3,
	"XY" == 1,
}

---@enum TransitionMode
local TransitionMode = {
	"Linear" == 0,
	"Sinus" == 1,
	"Fast" == 3,
	"Slow" == 2,
}

---@enum AssignmentButtonFunctionsMacro
local AssignmentButtonFunctionsMacro = {
	"" == 0,
	"Go+" == 3,
	"Empty" == 0,
	"Go-" == 4,
	"Pause" == 18,
	"<<<" == 6,
	">>>" == 5,
	"Off" == 8,
}

---@enum RDMNotificationThresholdOperator
local RDMNotificationThresholdOperator = {
	"" == 0,
	"Is" == 1,
	"Greate" == 3,
	"Less" == 4,
	"IsNot" == 2,
}

---@enum BodyQuality3d
local BodyQuality3d = {
	"Standard" == 4,
	"Ultra" == 6,
	"Low" == 2,
	"High" == 5,
	"Simple" == 3,
	"Box" == 1,
	"None" == 0,
}

---@enum ScrollItemPlacementType
local ScrollItemPlacementType = {
	"End" == 2,
	"Begin" == 1,
	"Auto" == 0,
}

---@enum PatchOffset
local PatchOffset = {
	"None" == -1,
}

---@enum TrackpadPTInvertMode
local TrackpadPTInvertMode = {
	"Tilt Invert" == 2,
	"Pan Invert" == 1,
	"Both" == 3,
	"Off" == 0,
}

---@enum AssignmentFaderFunctionsMasterOnly
local AssignmentFaderFunctionsMasterOnly = {
	"" == 0,
	"Empty" == 0,
	"Master" == 32,
}

---@enum MibPreferenceLevel
local MibPreferenceLevel = {
	"Good(75)" == 75,
	"Worst(1)" == 1,
	"Best" == 100,
	"Never" == 0,
	"Bad" == 25,
	"Bad(25)" == 25,
	"Normal" == 50,
	"Normal(50)" == 50,
	"Good" == 75,
	"Never(0)" == 0,
	"Worst" == 1,
	"Best(100)" == 100,
}

---@enum ScrollParamEntity
local ScrollParamEntity = {
	"Item" == 0,
	"Area" == 1,
}

---@enum DisplayTypePreference
local DisplayTypePreference = {
	"BigLongSmall" == 7,
	"Small" == 3,
	"LongOrSmall" == 6,
	"BigOrSmall" == 5,
	"BigOrLong" == 4,
	"Any" == 0,
	"Big" == 1,
	"Long" == 2,
}

---@enum PrettyRDMSensorUnitPrefix
local PrettyRDMSensorUnitPrefix = {
	"a" == 8,
	"c" == 2,
	"E" == 24,
	"d" == 1,
	"" == 0,
	"Y" == 26,
	"Z" == 25,
	"n" == 5,
	"P" == 23,
	"z" == 9,
	"y" == 10,
	"p" == 6,
	"T" == 22,
	"G" == 21,
	"f" == 7,
	"micro" == 4,
	"h" == 18,
	"k" == 19,
	"da" == 17,
	"m" == 3,
	"M" == 20,
}

---@enum MatrixWidthAuto
local MatrixWidthAuto = {
	"None" == 0,
	"No Width" == -1,
}

---@enum AssignmentButtonFunctionsScreenConfig
local AssignmentButtonFunctionsScreenConfig = {
	"" == 0,
	"Call" == 106,
	"Empty" == 0,
}

---@enum TimecodeTool
local TimecodeTool = {
	"Operate" == 0,
	"Select" == 1,
	"Resize" == 5,
	"Delete" == 3,
	"Move" == 4,
	"Add" == 2,
}

---@enum ProgLayerAuto
local ProgLayerAuto = {
	"SpeedMaster" == 5,
	"CueRel" == 18,
	"Phase" == 6,
	"GridPos" == 7,
	"Speed" == 4,
	"CueAbs" == 17,
	"Absolute" == 10,
	"Auto" == -1,
	"Relative" == 11,
	"Width" == 15,
	"Transition" == 14,
	"Accel" == 12,
	"Fade" == 2,
	"Measure" == 8,
	"Decel" == 13,
	"Output" == 20,
	"Delay" == 3,
	"DMX" == 19,
}

---@enum None
local None = {
	"" == 4294967295,
	"None" == 4294967295,
}

---@enum RDMPidValueOnOff
local RDMPidValueOnOff = {
	"On" == 1,
	"Off" == 0,
}

---@enum DisplayNone
local DisplayNone = {
	"None" == 4294967295,
}

---@enum EncoderResolutionType
local EncoderResolutionType = {
	"Fast" == 1,
	"Slow" == 0,
}

---@enum SequenceAction
local SequenceAction = {
	"Go+" == 2,
	"Flash" == 3,
	"Select" == 0,
	"Temp" == 4,
	"Toggle" == 1,
}

---@enum RemoteResolution
local RemoteResolution = {
	"8bit" == 1,
	"16bit" == 2,
	"24bit" == 3,
}

---@enum DefinedPoolColumns
local DefinedPoolColumns = {
	"Not Defined" == 4294967295,
}

---@enum Update
local Update = {
	"Add New Content" == 1,
	"Original Content Only" == 0,
}

---@enum MacroLineWait
local MacroLineWait = {
	"Follow" == 0,
	"Go" == -1,
}

---@enum SacnDataMode
local SacnDataMode = {
	"Output Multicast" == 0,
	"Output Unicast" == 1,
	"Input Unicast" == 3,
	"Input Multicast" == 2,
}

---@enum DriveType
local DriveType = {
	"RemoteDrive" == 4,
	"Removeable" == 2,
	"Internal" == 1,
	"Invalid" == 0,
	"OldVersion" == 3,
}

---@enum TimeDisplayFormatSelected
local TimeDisplayFormatSelected = {
	"10.11:23:45" == 3,
	"10d11h23m45" == 1,
	"Default" == 0,
	"251h23m45" == 2,
	"251:23:45" == 4,
}

---@enum SpecialAttribute
local SpecialAttribute = {
	"GoboPos" == 15,
	"Blade2B" == 35,
	"Blade2Rot" == 36,
	"Blade1A" == 31,
	"None" == 0,
	"Blade4B" == 41,
	"ShutterStrobeRandomPulse" == 54,
	"NoFeature" == 1,
	"Blade2A" == 34,
	"Blade3A" == 37,
	"ColorWheelSpin" == 11,
	"HSB" == 9,
	"GoboSelectShake" == 14,
	"Zoom" == 22,
	"GoboPosRotate" == 16,
	"XYZ_Rot" == 6,
	"Iris" == 23,
	"XYZ_Pos" == 5,
	"Video" == 57,
	"GoboPosShake" == 17,
	"Prism" == 18,
	"ColorRGB" == 8,
	"Dummy" == 2,
	"ShutterStrobe" == 26,
	"ShutterStrobePulseClose" == 52,
	"IrisStrobe" == 44,
	"Frost" == 24,
	"Blade4Rot" == 42,
	"PrismPos" == 19,
	"Blade1B" == 32,
	"Focus" == 21,
	"IrisPulseOpen" == 46,
	"ShutterStrobePulse" == 50,
	"ShutterStrobePulseOpen" == 51,
	"Shutter" == 25,
	"IrisRandomPulseClose" == 49,
	"CIE" == 27,
	"Color" == 10,
	"ShutterStrobeRandomPulseClose" == 56,
	"PanTilt" == 4,
	"IrisStrobeRandom" == 47,
	"ShutterStrobeRandom" == 53,
	"ShaperRot" == 43,
	"IrisPulseClose" == 45,
	"Gobo" == 12,
	"ShutterStrobeRandomPulseOpen" == 55,
	"Blade1Rot" == 33,
	"Dimmer" == 3,
	"CTC" == 30,
	"XYZ_Scale" == 7,
	"IrisRandomPulseOpen" == 48,
	"GoboWheelSpin" == 13,
	"PrismPosRotate" == 20,
	"CTO" == 28,
	"Blade4A" == 40,
	"Blade3B" == 38,
	"Blade3Rot" == 39,
	"CTB" == 29,
}

---@enum RDMSensorUnitPrefix
local RDMSensorUnitPrefix = {
	"PREFIX_ZEPTO" == 9,
	"PREFIX_DECA" == 17,
	"PREFIX_YOTTA" == 26,
	"PREFIX_MICRO" == 4,
	"PREFIX_KILO" == 19,
	"PREFIX_NANO" == 5,
	"PREFIX_ATTO" == 8,
	"PREFIX_HECTO" == 18,
	"PREFIX_MEGA" == 20,
	"PREFIX_PICO" == 6,
	"PREFIX_EXA" == 24,
	"PREFIX_FEMPTO" == 7,
	"PREFIX_CENTI" == 2,
	"PREFIX_ZETTA" == 25,
	"PREFIX_YOCTO" == 10,
	"PREFIX_DECI" == 1,
	"PREFIX_TERRA" == 22,
	"PREFIX_NONE" == 0,
	"PREFIX_PETA" == 23,
	"PREFIX_MILLI" == 3,
	"PREFIX_GIGA" == 21,
}

---@enum AssignmentSoundMasterButtonFunctions
local AssignmentSoundMasterButtonFunctions = {
	"" == 0,
	"On" == 7,
	"Empty" == 0,
	"Toggle" == 14,
	"Off" == 8,
}

---@enum ScrollReason
local ScrollReason = {
	"Automatic" == 0,
	"User" == 1,
}

---@enum ProgUpdateCueMode
local ProgUpdateCueMode = {
	"LastGo" == 2,
	"All" == 0,
	"Selected" == 1,
}

---@enum DmxSheetSettingsShowField
local DmxSheetSettingsShowField = {
	"Value" == 2,
	"Id" == 1,
	"Attribute" == 0,
}

---@enum PhaserMode1D
local PhaserMode1D = {
	"Value" == 0,
	"Transition" == 1,
}

---@enum LoopMode
local LoopMode = {
	"Pause" == 1,
	"Loop" == 0,
	"Off" == 2,
}

---@enum FalloffType
local FalloffType = {
	"None" == 0,
	"Linear" == 1,
	"Correct" == 2,
}

---@enum WeekOfMonth
local WeekOfMonth = {
	"First Week" == 0,
	"Fifth Week" == 4,
	"Fourth Week" == 3,
	"Third Week" == 2,
	"Second Week" == 1,
	"Sixth Week" == 5,
}

---@enum LayoutElementSelectionRelevance
local LayoutElementSelectionRelevance = {
	"Off" == 0,
	"Background" == 1,
}

---@enum DeskLightChannel
local DeskLightChannel = {
	"LedExec" == 4,
	"DeskLights" == 1,
	"LedFader" == 3,
	"LedOther" == 6,
	"ScreenLetter" == 8,
	"LedKeyboard" == 5,
	"LedEncoder" == 2,
	"ScreenBig" == 7,
	"ScreenSmall" == 9,
	"ScreenExternal" == 10,
}

---@enum CueCopyDstMode
local CueCopyDstMode = {
	"Overwrite" == 0,
	"Merge" == 1,
}

---@enum TimeDefault
local TimeDefault = {
	"Default" == 9223372036854775807,
}

---@enum AssignmentButtonFunctions
local AssignmentButtonFunctions = {
	"Pause" == 18,
	"Go+" == 3,
	"SelectFixtures" == 116,
	"" == 0,
	"Toggle" == 14,
	"Flash" == 1,
	"DoubleSpeed" == 27,
	"Black" == 2,
	">>>" == 5,
	"Off" == 8,
	"<<<" == 6,
	"Top" == 15,
	"LearnSpeed" == 10,
	"Go-" == 4,
	"Temp" == 13,
	"Select" == 24,
	"Swap" == 25,
	"HalfSpeed" == 26,
	"Rate1" == 11,
	"On" == 7,
	"Empty" == 0,
	"Load" == 17,
	"Speed1" == 12,
	"Call" == 106,
	"Kill" == 29,
	"Goto" == 16,
}

---@enum DmxSheetSettingsSelected
local DmxSheetSettingsSelected = {
	"Selected" == 4294967295,
}

---@enum PhaserLineHeight
local PhaserLineHeight = {
	"Auto" == 50,
}

---@enum SequenceLinkType
local SequenceLinkType = {
	"Fixed" == 0,
	"Selected" == 1,
	"LastGo" == 2,
}

---@enum FunctionMode
local FunctionMode = {
	"WM_Unknown" == 0,
	"WM_Phase" == 3,
	"WM_2D" == 1,
	"WM_Width" == 4,
	"WM_1D" == 2,
}

---@enum BeamModePatch
local BeamModePatch = {
	"Line" == 1,
	"Simple" == 2,
}

---@enum PUPriority
local PUPriority = {
	"Normal" == 3,
	"VeryLow" == 1,
	"Never" == 0,
	"High" == 4,
	"Low" == 2,
}

---@enum LayoutLassoSelectionFilter
local LayoutLassoSelectionFilter = {
	"Others" == 2,
	"Fixtures" == 1,
	"All" == 0,
}

---@enum TimeNoneEmpty
local TimeNoneEmpty = {
	"" == 9223372036854775807,
	"None" == 9223372036854775807,
}

---@enum PathType
local PathType = {
	"UpdateDir" == 6,
	"UserRenderQuality" == 88,
	"UserColorThemes" == 94,
	"Language" == 22,
	"Resource" == 20,
	"UserCameras" == 86,
	"TemplateShowfiles" == 57,
	"KeyboardShortcuts" == 51,
	"GoboImageCache" == 29,
	"RenderQuality" == 32,
	"VersionDir" == 4,
	"GelLibrary" == 36,
	"Usb" == 11,
	"Undo" == 13,
	"WebResource" == 21,
	"WebDaemon" == 7,
	"Showfiles" == 17,
	"VizLibrary" == 53,
	"UserMvr" == 81,
	"UserRemotesMIDI" == 72,
	"UserGenerators" == 110,
	"Software" == 52,
	"SACN" == 68,
	"UserWorlds" == 104,
	"MvrLibrary" == 54,
	"ColorTheme" == 23,
	"ScribbleLibrary" == 63,
	"UserImageLibrary" == 61,
	"Data" == 8,
	"UserRemotesDMX" == 71,
	"UserExecConfigs" == 98,
	"VideoLibrary" == 35,
	"Temp" == 12,
	"UserUsers" == 82,
	"Shared" == 9,
	"Backupfiles" == 18,
	"SymbolImageLibrary" == 33,
	"UserGroups" == 102,
	"UserTimers" == 108,
	"UserTimecodes" == 107,
	"UserSymbols" == 62,
	"BinaryDir" == 0,
	"DemoShowfiles" == 19,
	"ExternalRoot" == 1,
	"UserDmxCurves" == 113,
	"UserSoundLibrary" == 59,
	"FixtureLibrary" == 47,
	"UserSequences" == 103,
	"UserScreenConfigurations" == 87,
	"GoboImageLibrary" == 28,
	"UserDataPools" == 95,
	"ViewButtonLibrary" == 85,
	"UserPatch" == 111,
	"UserProfiles" == 83,
	"Shaders" == 24,
	"GrandMA3Library" == 49,
	"MaterialLibrary" == 31,
	"OSC" == 67,
	"UserRemotesDC" == 70,
	"UserOutputConfig" == 73,
	"NetworkKeys" == 65,
	"Keyboards" == 50,
	"AppearanceLibrary" == 64,
	"UserMedia" == 58,
	"PluginLibrary" == 40,
	"UserMeshes" == 78,
	"GrandMA2Library" == 48,
	"UserDeviceConfig" == 74,
	"UserEncoderBars" == 91,
	"UserMaterials" == 80,
	"MatricksLibrary" == 43,
	"Library" == 56,
	"BitmapsLibrary" == 46,
	"ImageLibrary" == 34,
	"CrashLog" == 14,
	"UserLayouts" == 97,
	"Config" == 10,
	"UserInOut" == 66,
	"UserAgendas" == 92,
	"UserFixtureTypeResources" == 76,
	"UserVideoLibrary" == 60,
	"UserGels" == 90,
	"UserBitmaps" == 109,
	"UserKeyboardShortcuts" == 89,
	"UserGobos" == 77,
	"AddonLibrary" == 38,
	"PresetLibrary" == 44,
	"UploadedCrashLogs" == 15,
	"MacroLibrary" == 41,
	"UserFilters" == 105,
	"UserExecutors" == 106,
	"ShadersDG" == 25,
	"UserMatricks" == 100,
	"InvalidCrashLogs" == 16,
	"UserStages" == 112,
	"QuickeyLibrary" == 42,
	"UserMeshImages" == 79,
	"InstallationPackages" == 5,
	"Textures" == 26,
	"MenuLibrary" == 39,
	"GeneratorsLibrary" == 45,
	"UserFixtures" == 75,
	"DmxCurvesLibrary" == 55,
	"ArtNet" == 69,
	"UserViews" == 84,
	"ExternalPackages" == 2,
	"UserPresets" == 101,
	"MADir" == 3,
	"UserMacros" == 99,
	"Fonts" == 27,
	"Mesh" == 30,
	"UserCertificates" == 93,
	"AgendaLibrary" == 37,
	"CustomPluginLibrary" == 96,
}

---@enum ExecDisplayMode
local ExecDisplayMode = {
	"Appearance only" == 1,
	"Both" == 2,
	"Data only" == 0,
}

---@enum GoboMode
local GoboMode = {
	"Enabled" == 1,
	"Disabled" == 0,
	"Animated" == 2,
}

---@enum ValueLayer
local ValueLayer = {
	"Relative" == 11,
	"Absolute" == 10,
	"Delay" == 3,
	"Fade" == 2,
}

---@enum PresetModeDefault
local PresetModeDefault = {
	"Global" == 2,
	"Selective" == 1,
	"Auto" == 0,
	"ForceGlobal" == 5,
	"Universal" == 3,
}

---@enum TCTextMode
local TCTextMode = {
	"Markers" == 3,
	"Tracks" == 1,
	"All" == 0,
	"Selected" == 2,
}

---@enum ButtonHeight
local ButtonHeight = {
	"40" == 40,
	"50" == 50,
	"60" == 60,
	"Default" == 50,
	"45" == 45,
	"35" == 35,
	"55" == 55,
	"25" == 25,
	"20" == 20,
	"30" == 30,
}

---@enum LayoutStretch
local LayoutStretch = {
	"Bar" == 1,
	"Stretch" == 0,
	"Crop" == 2,
}

---@enum RemoteMidiType
local RemoteMidiType = {
	"NoteAttackDecay" == 2,
	"NoteAttack" == 1,
	"Control" == 3,
	"Note" == 0,
}

---@enum LayoutVisibility
local LayoutVisibility = {
	"Hidden" == 0,
	"Visible" == 1,
}

---@enum TimecodeSingleUserRecord
local TimecodeSingleUserRecord = {
	"All Users" == 0,
	"Single User" == 1,
}

---@enum LayoutGridStyle
local LayoutGridStyle = {
	"Off" == 0,
	"Lines" == 1,
	"Dots" == 2,
}

---@enum ValueReadoutModeDefault
local ValueReadoutModeDefault = {
	"Physical" == 2,
	"Default" == -1,
	"Decimal16" == 4,
	"Hex24" == 8,
	"Decimal8" == 3,
	"Decimal24" == 5,
	"Hex8" == 6,
	"PercentFine" == 1,
	"Hex16" == 7,
	"Percent" == 0,
}

---@enum TotalUpdateType
local TotalUpdateType = {
	"References" == 2,
	"OnlyNames" == 1,
	"Content" == 3,
	"None" == 0,
}

---@enum AutoCreateSource
local AutoCreateSource = {
	"FixtureType Presets" == 0,
	"ChannelSets" == 1,
}

---@enum MibMultiStep
local MibMultiStep = {
	"Paused" == 1,
	"Running" == 0,
}

---@enum StrictNormalMode
local StrictNormalMode = {
	"Normal" == 0,
	"Strict" == 1,
}

---@enum SpecialPurposeFT
local SpecialPurposeFT = {
	"BitmapController" == 2,
	"MArker" == 1,
	"None" == 0,
}

---@enum GroupMemoryType
local GroupMemoryType = {
	"Uncompressed" == 1,
	"Compressed" == 0,
}

---@enum MoveValueToPart
local MoveValueToPart = {
	"Default" == 4294967295,
}

---@enum GeneratorLimits
local GeneratorLimits = {
	"14d" == 0,
}

---@enum CueAssert
local CueAssert = {
	"" == 0,
	"X-Assert" == 2,
	"Assert" == 1,
	"None" == 0,
}

---@enum FilterAction
local FilterAction = {
	"Select" == 0,
	"Call" == 1,
}

---@enum SelectionViewFontSize
local SelectionViewFontSize = {
	"Default" == 1,
	"Automatic" == 0,
	"32" == 9,
	"12" == 3,
	"16" == 5,
	"14" == 4,
	"18" == 6,
	"28" == 8,
	"10" == 2,
	"24" == 7,
}

---@enum LampType
local LampType = {
	"LED" == 3,
	"Halogen" == 2,
	"Tungsten" == 1,
	"Discharge" == 0,
}

---@enum OutputDelay
local OutputDelay = {
	"None" == 0,
	"Max" == 30,
}

---@enum CueTrigger
local CueTrigger = {
	"Follow" == 2,
	"Sound" == 3,
	"BPM" == 4,
	"Go" == 0,
	"Time" == 1,
}

---@enum TimeDisplayFormat
local TimeDisplayFormat = {
	"251h23m45" == 1,
	"10.11:23:45" == 2,
	"10d11h23m45" == 0,
	"251:23:45" == 3,
}

---@enum NDIBandwidth
local NDIBandwidth = {
	"Highest" == 100,
	"Lowest" == 0,
}

---@enum SheetMode
local SheetMode = {
	"Fixture" == 0,
	"Sheet/Filter" == 3,
	"Channel" == 1,
	"Dimmer+" == 2,
}

---@enum StoreDisplayNumber
local StoreDisplayNumber = {
	"7" == 6,
	"6" == 5,
	"1" == 0,
	"3" == 2,
	"2" == 1,
	"5" == 4,
	"4" == 3,
}

---@enum MibEnableMode
local MibEnableMode = {
	"Force Early" == 2,
	"Force UponGo" == 3,
	"Force Late" == 4,
	"Never" == 1,
	"Enabled" == 0,
}

---@enum ScrollParamValueType
local ScrollParamValueType = {
	"Relative" == 0,
	"Absolute" == 1,
}

---@enum ModalResult
local ModalResult = {
	"Ok" == 1,
	"Confirm" == 3,
	"Cancel" == 2,
	"None" == 0,
}

---@enum OffCueTrigger
local OffCueTrigger = {
	"" == 5,
	"Go" == 0,
	"Sound" == 3,
	"Follow" == 2,
	"BPM" == 4,
	"No Trigger" == 5,
	"Time" == 1,
}

---@enum EncoderBarContext
local EncoderBarContext = {
	"Window" == 1,
	"Overlay" == 2,
	"Default" == 0,
}

---@enum PhysicalUnit
local PhysicalUnit = {
	"Temperature" == 5,
	"Angle" == 7,
	"ColorComponent" == 21,
	"Percent" == 1,
	"None" == 0,
	"LuminousIntensity" == 6,
	"Speed" == 16,
	"Force" == 8,
	"Frequency" == 9,
	"Time" == 4,
	"Power" == 12,
	"Voltage" == 11,
	"Energy" == 13,
	"AngularSpeed" == 18,
	"Current" == 10,
	"AngularAccc" == 19,
	"Mass" == 3,
	"WaveLength" == 20,
	"Volume" == 15,
	"Acceleration" == 17,
	"Length" == 2,
	"Area" == 14,
}

---@enum EncoderLinkPhaser
local EncoderLinkPhaser = {
	"Feature" == 1,
	"Single" == 0,
	"AtFilter" == 2,
}

---@enum ShowFileStatus
local ShowFileStatus = {
	"NoShow" == 1,
	"DataNegotiationActive" == 4,
	"ShowMediaUploading" == 9,
	"ShowLoaded" == 2,
	"ShowDownloadIgnore" == 12,
	"ShowDownloading" == 10,
	"DataNegotiationMaster" == 6,
	"ShowSaving" == 5,
	"ShowMediaDownloading" == 11,
	"ShowUploading" == 8,
	"Undefined" == 0,
	"DataNegotiationSlave" == 7,
	"ShowDownloaded" == 3,
}

---@enum AttriebuteEncoderResolutionDefault
local AttriebuteEncoderResolutionDefault = {
	"Fine" == 1677721,
	"Native" == -16777216,
	"Increment" == 167772,
	"Default" == 0,
	"Coarse" == 16777216,
}

---@enum AttriebuteEncoderResolutionSmall
local AttriebuteEncoderResolutionSmall = {
	"Fine" == 1677721,
	"Coarse" == 16777216,
	"Increment" == 167772,
}

---@enum DmxTesterAddressMode
local DmxTesterAddressMode = {
	"Abs" == 1,
	"Uni" == 0,
}

---@enum ChannelSetReadoutMode
local ChannelSetReadoutMode = {
	"Value" == 0,
	"Value+Name" == 1,
	"Name" == 2,
}

---@enum UsbProductID
local UsbProductID = {
	"grandMA3 xPort node" == 46537,
	"grandMA3 Master Module (MM)" == 46531,
	"grandMA3 Fader Wing" == 46541,
	"grandMA3 Compact XT" == 46535,
	"grandMA3 IO Node" == 46539,
	"grandMA3 MA-Key (Blank)" == 46352,
	"grandMA3 IO Node DIN Rail" == 46540,
	"grandMA3 MA-Key (Viz-Key)" == 46353,
	"grandMA3 CommandWing" == 46536,
	"grandMA3 Fader Module Crossfader (MFX)" == 46532,
	"grandMA3 DMX Module" == 46528,
	"grandMA3 Fader Module Encoder (MFE)" == 46533,
	"grandMA3 Control Module" == 46530,
	"grandMA3 DIN-Rail node" == 46538,
	"grandMA3 Compact" == 46534,
	"MA NPU 3 DMX Module" == 46529,
}

---@enum CountdownAlertType
local CountdownAlertType = {
	"Pop-Up" == 1,
	"Command & Pop-Up" == 3,
	"None" == 0,
	"Command" == 2,
}

---@enum SelectionAlignment
local SelectionAlignment = {
	"None" == 0,
	"Center" == 2,
	"Right" == 3,
	"Left" == 1,
}

---@enum FixtureSheetHeaderType
local FixtureSheetHeaderType = {
	"" == 0,
	"SelectedInverted" == 2,
	"PartlySelected" == 3,
	"Selected" == 1,
}

---@enum SpecialExecutor
local SpecialExecutor = {
	"ExecBtn3" == 32,
	"XFade1" == 0,
	"ExecEncoder" == 29,
	"None" == -1,
	"ProgBtn1" == 40,
	"ProgBtn3" == 42,
	"SpeedBtn1" == 10,
	"ExecBtn2" == 31,
	"XFade1Btn" == 2,
	"ProgBtn2" == 41,
	"ExecBtn1" == 30,
	"SpeedBtn2" == 20,
	"XFade2Btn" == 3,
	"RateBtn2" == 19,
	"XFade2" == 1,
	"ProgEncoder" == 39,
	"RateBtn1" == 9,
	"GrandKnob" == 4,
}

---@enum PlaybacksToShow
local PlaybacksToShow = {
	"Presets" == 3,
	"Sequences" == 0,
	"Timers" == 4,
	"Timecodes" == 2,
	"SoundFiles" == 5,
	"All" == 6,
	"Macros" == 1,
}

---@enum ValueRole
local ValueRole = {
	"DisplayShort" == 2,
	"Display" == 1,
	"Default" == 0,
}

---@enum PhaseValueNone
local PhaseValueNone = {
	"180°" == 8388608,
	"360°" == 16777216,
	"90°" == 4194304,
	"270°" == 12582912,
	"None" == 2147483647,
}

---@enum MatricksIndexNone
local MatricksIndexNone = {
	"No XYZ" == -2,
	"None" == -1,
}

---@enum MatricksGroupNone
local MatricksGroupNone = {
	"None" == 0,
	"No Group" == -1,
}

---@enum ColorEncoderFunction
local ColorEncoderFunction = {
	"HSB" == 1,
	"CIE" == 4,
	"Auto" == 0,
	"RGB" == 2,
	"CMY" == 3,
}

---@enum MatricksWingsNone
local MatricksWingsNone = {
	"None" == 0,
	"No Wings" == -1,
}

---@enum RDMSlotType
local RDMSlotType = {
	"ST_SEC_UNDEFINED" == 255,
	"ST_SEC_SPEED" == 3,
	"ST_PRIMARY" == 0,
	"ST_SEC_FINE" == 1,
	"ST_SEC_TIMING" == 2,
	"ST_SEC_INDEX" == 5,
	"ST_SEC_ROTATION" == 6,
	"ST_SEC_CONTROL" == 4,
	"ST_SEC_INDEX_ROTATE" == 7,
}

---@enum AutoLayoutScrollType
local AutoLayoutScrollType = {
	"Horizontal" == 1,
	"Vertical" == 0,
	"Auto" == 2,
}

---@enum MatricksInvertStyle
local MatricksInvertStyle = {
	"Tilt" == 1,
	"P+T" == 2,
	"All" == 3,
	"Pan" == 0,
}

---@enum RDMSlotId
local RDMSlotId = {
	"SD_LAMP_CONTROL" == 1281,
	"SD_BARN_DOOR" == 1033,
	"SD_COLOR_SEMAPHORE" == 528,
	"SD_COLOR_SUB_MAGENTA" == 516,
	"SD_COLOR_CORRECTION" == 520,
	"SD_COLOR_ADD_WARM_WHITE" == 531,
	"SD_COLOR_ADD_WHITE" == 530,
	"SD_DOUSER" == 1032,
	"SD_FAN_CONTROL" == 1286,
	"SD_FOUNTAIN_CONTROL" == 1288,
	"SD_STROBE" == 1028,
	"SD_FIXTURE_CONTROL" == 1282,
	"SD_FIXTURE_SPEED" == 1283,
	"SD_COLOR_WHEEL" == 513,
	"SD_COLOR_SUB_UV" == 533,
	"SD_COLOR_ADD_BLUE" == 519,
	"SD_COLOR_ADD_RED" == 517,
	"SD_COLOR_SCROLL" == 521,
	"SD_FRAMING_SHUTTER" == 1030,
	"SD_INTENSITY" == 1,
	"SD_COLOR_SUB_CYAN" == 514,
	"SD_COLOR_SUB_YELLOW" == 515,
	"SD_ZOOM" == 1029,
	"SD_ROTO_GOBO_WHEEL" == 770,
	"SD_UNDEFINED" == 65535,
	"SD_EFFECTS_WHEEL" == 772,
	"SD_TILT" == 258,
	"SD_STATIC_GOBO_WHEEL" == 769,
	"SD_EDGE" == 1026,
	"SD_COLOR_SATURATION" == 535,
	"SD_BEAM_SIZE_IRIS" == 1025,
	"SD_SHUTTER_ROTATE" == 1031,
	"SD_FROST" == 1027,
	"SD_PRISM_WHEEL" == 771,
	"SD_POWER_CONTROL" == 1285,
	"SD_COLOR_ADD_AMBER" == 529,
	"SD_PAN" == 257,
	"SD_MACRO" == 1284,
	"SD_HEATER_CONTROL" == 1287,
	"SD_COLOR_HUE" == 534,
	"SD_COLOR_ADD_GREEN" == 518,
	"SD_INTENSITY_MASTER" == 2,
	"SD_COLOR_ADD_COOL_WHITE" == 532,
}

---@enum PhaserBars
local PhaserBars = {
	"PhaserBar" == 1,
	"2DBar" == 0,
	"PresetBar" == 2,
}

---@enum ShaperControlMode
local ShaperControlMode = {
	"A+B" == 1,
	"Ins+Rot" == 0,
}

---@enum DMXMergeMode
local DMXMergeMode = {
	"HTP" == 2,
	"LowTP" == 3,
	"Prio" == 1,
	"Off" == 0,
}

---@enum PropertyRadioButtonListEnabledItems
local PropertyRadioButtonListEnabledItems = {
	"AllEnabled" == 4294967295,
}

---@enum GroupMasterMode
local GroupMasterMode = {
	"Positive" == 1,
	"Scaling" == 3,
	"Negative" == 2,
	"Additive" == 4,
	"None" == 0,
}

---@enum EncoderFunction
local EncoderFunction = {
	"PresetTiming1" == 2,
	"PresetTiming2" == 3,
	"Cmd" == 8,
	"MIB" == 6,
	"PresetTiming3" == 4,
	"CueTiming" == 1,
	"CueSettings" == 0,
	"Data Edit" == 9,
}

---@enum AssignmentButtonFunctionsView
local AssignmentButtonFunctionsView = {
	"" == 0,
	"Go+" == 3,
	"Empty" == 0,
}

---@enum DmxPrio
local DmxPrio = {
	"Lowest" == 0,
	"Low" == 16,
	"Swap" == 96,
	"Super" == 128,
	"HTP" == 80,
	"Prog" == 112,
	"High" == 48,
	"LTP" == 32,
	"Highest" == 64,
}

---@enum HostSubType
local HostSubType = {
	"Wing-Extension" == 94,
	"onPC4Port" == 61,
	"Light" == 22,
	"Node2PortDIN" == 67,
	"TrackingServer" == 78,
	"Medium" == 40,
	"MA-Net3-duct" == 77,
	"Recovery" == 1,
	"onPCRackUnit" == 97,
	"onPC2PortDIN" == 70,
	"FullSize" == 20,
	"Node2Port" == 63,
	"Node4PortDIN" == 68,
	"CompactXT" == 25,
	"Compact" == 24,
	"Wing-MFX" == 91,
	"LightCRV" == 23,
	"onPC8Port" == 62,
	"Vis+Dongle" == 73,
	"FullSizeCRV" == 21,
	"Wing-onPC" == 93,
	"IONode" == 75,
	"IONodeDIN" == 76,
	"Wing-onPCFader" == 96,
	"onPC8PortDIN" == 72,
	"onPC4PortDIN" == 71,
	"MAkerStation" == 98,
	"onPC2Port" == 60,
	"XLarge" == 42,
	"Wing-onPCXT" == 95,
	"MediaServer" == 79,
	"Node8Port" == 65,
	"Node8PortDIN" == 69,
	"Node4Port" == 64,
	"RPU" == 26,
	"Large" == 41,
	"Visualizer" == 74,
	"Node2PortWM" == 66,
	"Wing-MFE" == 92,
	"Undefined" == 0,
	"Wing-MM" == 90,
}

---@enum ColorMixMode
local ColorMixMode = {
	"Standard" == 3,
	"Fixture Type" == 0,
	"Rec.2020" == 2,
	"Rec.709" == 1,
}

---@enum GridMatrixRotation
local GridMatrixRotation = {
	"90" == 1,
	"180" == 2,
	"270" == 3,
	"0" == 0,
}

---@enum DynamicPresetPool
local DynamicPresetPool = {
	"Dynamic" == 4294967295,
}

---@enum OnOffStatus
local OnOffStatus = {
	"Undefined" == 3,
	"On" == 1,
	"Toggle" == 2,
	"Off" == 0,
}

---@enum RDMCommandClass
local RDMCommandClass = {
	"GET_RESP" == 33,
	"GET" == 32,
	"DISCOVER_RESP" == 17,
	"SET_RESP" == 49,
	"DISCOVER" == 16,
	"SET" == 48,
}

---@enum SeqRestartMode
local SeqRestartMode = {
	"First Cue" == 0,
	"Current Cue" == 1,
	"Next Cue" == 2,
}

---@enum CueCopyDstCmd
local CueCopyDstCmd = {
	"ForceRelease" == 1,
	"ForceDefault" == 2,
	"Keep" == 0,
}

---@enum OnOff
local OnOff = {
	"On" == 1,
	"Off" == 0,
}

---@enum RealtimeCmdSource
local RealtimeCmdSource = {
	"Local" == 1,
	"Original" == 0,
	"Network" == 2,
}

---@enum BackdropPatchType
local BackdropPatchType = {
	"Nine" == 0,
	"ThreeVertical" == 2,
	"Frame" == 1,
	"ThreeHorizontal" == 3,
}

---@enum TimerMode
local TimerMode = {
	"Stopwatch" == 1,
	"Countdown" == 0,
}

---@enum ArtNetBroadcastThreshold
local ArtNetBroadcastThreshold = {
	"Default(5)" == 5,
}

---@enum PresetIsPlayback
local PresetIsPlayback = {
	"On" == 1,
	"Auto" == 0,
}

---@enum SelectionMode
local SelectionMode = {
	"2D Grid" == 0,
	"Linearize" == 1,
}

---@enum TrackLayerAuto
local TrackLayerAuto = {
	"Absolute" == 10,
	"SpeedMaster" == 5,
	"Auto" == -1,
	"Phase" == 6,
	"GridPos" == 7,
	"Width" == 15,
	"Transition" == 14,
	"Accel" == 12,
	"Speed" == 4,
	"Measure" == 8,
	"Relative" == 11,
	"Decel" == 13,
	"Delay" == 3,
	"Fade" == 2,
}

---@enum AssignmentButtonFunctionsSoundFile
local AssignmentButtonFunctionsSoundFile = {
	"" == 0,
	"Go+" == 3,
	"Empty" == 0,
	"Toggle" == 14,
	"Pause" == 18,
	"On" == 7,
	"Off" == 8,
}

---@enum TimeDisplayClockFormat
local TimeDisplayClockFormat = {
	"10.11:23:45" == 3,
	"251:23:45" == 4,
	"<Default>" == 0,
}

---@enum DisplayIndex
local DisplayIndex = {
	"None" == 4294967295,
}

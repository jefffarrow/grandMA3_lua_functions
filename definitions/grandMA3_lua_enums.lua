--MA3 release 1.9.7
---@meta

---@class LuaFileSystem
locallfs = {}

---@enum RDMSensorType
local RDMSensorType = {
    "SENS_CURRENT" == 2,
    "SENS_ANGULAR_VELOCITY" == 21,
    "SENS_POSITION_X" == 18,
    "SENS_MEMORY" == 29,
    "SENS_TIME" == 16,
    "SENS_LUMINOUS_INTENSITY" == 22,
    "SENS_RESISTANCE" == 4,
    "SENS_ITEMS" == 30,
    "SENS_DENSITY" == 10,
    "SENS_CHROMINANCE_GREEN" == 26,
    "SENS_ANGLE" == 17,
    "SENS_ACCELERATION" == 12,
    "SENS_LUMINOUS_FLUX" == 23,
    "SENS_MS" == 128,
    "SENS_CHROMINANCE_RED" == 25,
    "SENS_TEMPERATURE" == 0,
    "SENS_ILLUMINANCE" == 24,
    "SENS_MASS" == 6,
    "SENS_POSITION_Y" == 19,
    "SENS_PRESSURE" == 15,
    "SENS_POSITION_Z" == 20,
    "SENS_AREA" == 8,
    "SENS_COUNTER_16BIT" == 32,
    "SENS_VELOCITY" == 11,
    "SENS_VOLUME" == 9,
    "SENS_VOLTAGE" == 1,
    "SENS_FORCE" == 13,
    "SENS_CHROMINANCE_BLUE" == 27,
    "SENS_POWER" == 5,
    "SENS_OTHER" == 127,
    "SENS_CONTACTS" == 28,
    "SENS_LENGTH" == 7,
    "SENS_FREQUENCY" == 3,
    "SENS_ENERGY" == 14,
    "SENS_HUMIDITY" == 31
    }
  
  ---@enum CountdownAlertRange
  local CountdownAlertRange = {
    "Local" == 0,
    "All Stations" == 1
    }
  
  ---@enum ShadowMode
  local ShadowMode = {
    "Disabled" == 0,
    "Enabled" == 1
    }
  
  ---@enum AttriebuteEncoderResolutionDefault
  local AttriebuteEncoderResolutionDefault = {
    "Coarse" == 16777216,
    "Increment" == 167772,
    "Native" == -16777216,
    "Fine" == 1677721,
    "Default" == 0
    }
  
  ---@enum LayoutTool
  local LayoutTool = {
    "ResizeFixedRatio" == 6,
    "Delete" == 3,
    "Select" == 1,
    "Resize" == 5,
    "Add" == 2,
    "Move" == 4,
    "Operate" == 0
    }
  
  ---@enum AutoStomp
  local AutoStomp = {
    "On" == 2,
    "Prio" == 1,
    "Off" == 0
    }
  
  ---@enum MeasurementInterpolation
  local MeasurementInterpolation = {
    "Linear" == 0,
    "Step" == 1,
    "Log" == 2
    }
  
  ---@enum GridModeAgenda
  local GridModeAgenda = {
    "Day" == 2,
    "Month" == 0,
    "Week" == 1
    }
  
  ---@enum ValueNone
  local ValueNone = {
    "None" == 2147483647
    }
  
  ---@enum AutoSaveMode
  local AutoSaveMode = {
    "30 Minutes" == 3,
    "5 Minutes" == 1,
    "360 Minutes" == 6,
    "15 Minutes" == 2,
    "60 Minutes" == 4,
    "120 Minutes" == 5,
    "Off" == 0
    }
  
  ---@enum PhaserSheetMode
  local PhaserSheetMode = {
    "Layer Condensed" == 1,
    "Step" == 0,
    "Layer Expanded" == 2
    }
  
  ---@enum TrackpadPTMode
  local TrackpadPTMode = {
    "Pan Only" == 0,
    "Both" == 2,
    "Tilt Only" == 1
    }
  
  ---@enum LineHeights
  local LineHeights = {
    "4" == 4,
    "6" == 6,
    "Auto" == 0,
    "8" == 8,
    "10" == 10,
    "12" == 12,
    "1" == 1,
    "2" == 2,
    "3" == 3
    }
  
  ---@enum ArtNetBroadcastThreshold
  local ArtNetBroadcastThreshold = {
    "Default(5)" == 5
    }
  
  ---@enum WeekOfMonth
  local WeekOfMonth = {
    "Sixth Week" == 5,
    "Fourth Week" == 3,
    "Third Week" == 2,
    "First Week" == 0,
    "Second Week" == 1,
    "Fifth Week" == 4
    }
  
  ---@enum PresetValuesMode
  local PresetValuesMode = {
    "Lowlight" == 3,
    "Normal" == 0,
    "Default" == 1,
    "Highlight" == 2
    }
  
  ---@enum RDMStatusMessageType
  local RDMStatusMessageType = {
    "STATUS_GET_LAST_MESSAGE" == 1,
    "STATUS_ERROR" == 4,
    "STATUS_ADVISORY" == 2,
    "STATUS_ERROR_CLEARED" == 20,
    "STATUS_WARNING_CLEARED" == 19,
    "STATUS_WARNING" == 3,
    "STATUS_ADVISORY_CLEARED" == 18,
    "STATUS_NONE" == 0
    }
  
  ---@enum BlinkingButtonMode
  local BlinkingButtonMode = {
    "Exec" == 1,
    "Prog" == 0
    }
  
  ---@enum ButtonHeight
  local ButtonHeight = {
    "Default" == 50,
    "20" == 20,
    "25" == 25,
    "35" == 35,
    "60" == 60,
    "50" == 50,
    "40" == 40,
    "30" == 30,
    "45" == 45,
    "55" == 55
    }
  
  ---@enum RDMProductCategory
  local RDMProductCategory = {
    "PRODUCT_CATEGORY_PROJECTOR_FIXED" == 769,
    "PRODUCT_CATEGORY_FIXTURE_OTHER" == 511,
    "PRODUCT_CATEGORY_TEST_EQUIPMENT" == 28929,
    "PRODUCT_CATEGORY_AV_VIDEO" == 2306,
    "PRODUCT_CATEGORY_DATA_DISTRIBUTION" == 2049,
    "PRODUCT_CATEGORY_ATMOSPHERIC_PYRO" == 1026,
    "PRODUCT_CATEGORY__MANUFACTORER_SPECIFIC" == 32768,
    "PRODUCT_CATEGORY_PROJECTOR_MOVING_YOKE" == 770,
    "PRODUCT_CATEGORY_PROJECTOR" == 768,
    "PRODUCT_CATEGORY_CONTROL" == 28672,
    "PRODUCT_CATEGORY_DIMMER_AC_ELV" == 1285,
    "PRODUCT_CATEGORY_DIMMER_OTHER" == 1535,
    "PRODUCT_CATEGORY_AV_OTHER" == 2559,
    "PRODUCT_CATEGORY_DIMMER_AC_FLUORESCENT" == 1282,
    "PRODUCT_CATEGORY_DIMMER" == 1280,
    "PRODUCT_CATEGORY_SCENIC_OTHER" == 2047,
    "PRODUCT_CATEGORY_DIMMER_DC_PWM" == 1288,
    "PRODUCT_CATEGORY_SCENIC_DRIVE" == 1793,
    "PRODUCT_CATEGORY_CONTROL_OTHER" == 28927,
    "PRODUCT_CATEGORY_MONITOR_ACLINEPOWER" == 2561,
    "PRODUCT_CATEGORY_ATMOSPHERIC_EFFECT" == 1025,
    "PRODUCT_CATEGORY_TEST_EQUIPMENT_OTHER" == 29183,
    "PRODUCT_CATEGORY_FIXTURE" == 256,
    "PRODUCT_CATEGORY_DIMMER_AC_NONDIM" == 1284,
    "PRODUCT_CATEGORY_MONITOR" == 2560,
    "PRODUCT_CATEGORY_FIXTURE_ACCESSORY_BEAM" == 517,
    "PRODUCT_CATEGORY_DIMMER_CS_LED" == 1289,
    "PRODUCT_CATEGORY_FIXTURE_ACCESSORY_YOKE" == 514,
    "PRODUCT_CATEGORY_FIXTURE_ACCESSORY" == 512,
    "PRODUCT_CATEGORY_DATA" == 2048,
    "PRODUCT_CATEGORY_CONTROL_BACKUPDEVICE" == 28674,
    "PRODUCT_CATEGORY_POWER_SOURCE" == 1538,
    "PRODUCT_CATEGORY_FIXTURE_ACCESSORY_EFFECT" == 516,
    "PRODUCT_CATEGORY_FIXTURE_ACCESSORY_OTHER" == 767,
    "PRODUCT_CATEGORY_POWER_OTHER" == 1791,
    "PRODUCT_CATEGORY_FIXTURE_MOVING_YOKE" == 258,
    "PRODUCT_CATEGORY_FIXTURE_ACCESSORY_MIRROR" == 515,
    "PRODUCT_CATEGORY_FIXTURE_FIXED" == 257,
    "PRODUCT_CATEGORY_MONITOR_ENVIRONMENTAL" == 2563,
    "PRODUCT_CATEGORY_MONITOR_OTHER" == 2815,
    "PRODUCT_CATEGORY_NOT_DECLARED" == 0,
    "PRODUCT_CATEGORY_OTHER" == 32767,
    "PRODUCT_CATEGORY_FIXTURE_ACCESSORY_COLOR" == 513,
    "PRODUCT_CATEGORY_MONITOR_DCPOWER" == 2562,
    "PRODUCT_CATEGORY_SCENIC" == 1792,
    "PRODUCT_CATEGORY_POWER_CONTROL" == 1537,
    "PRODUCT_CATEGORY_AV" == 2304,
    "PRODUCT_CATEGORY_FIXTURE_MOVING_MIRROR" == 259,
    "PRODUCT_CATEGORY_PROJECTOR_MOVING_MIRROR" == 771,
    "PRODUCT_CATEGORY_POWER" == 1536,
    "PRODUCT_CATEGORY_ATMOSPHERIC" == 1024,
    "PRODUCT_CATEGORY_DIMMER_AC_COLDCATHODE" == 1283,
    "PRODUCT_CATEGORY_DIMMER_DC_LEVEL" == 1287,
    "PRODUCT_CATEGORY_DATA_CONVERSION" == 2050,
    "PRODUCT_CATEGORY_TEST" == 28928,
    "PRODUCT_CATEGORY_CONTROL_CONTROLLER" == 28673,
    "PRODUCT_CATEGORY_PROJECTOR_OTHER" == 1023,
    "PRODUCT_CATEGORY_DIMMER_AC_OTHER" == 1286,
    "PRODUCT_CATEGORY_AV_AUDIO" == 2305,
    "PRODUCT_CATEGORY_DATA_OTHER" == 2303,
    "PRODUCT_CATEGORY_DIMMER_AC_INCANDESCENT" == 1281,
    "PRODUCT_CATEGORY_ATMOSPHERIC_OTHER" == 1279
    }
  
  ---@enum Fade
  local Fade = {
    "None" == -1
    }
  
  ---@enum SyntaxState
  local SyntaxState = {
    "DoLoadShowfile" == 9,
    "DoSelectFixtures" == 24,
    "DoSet" == 27,
    "DoNotCare" == 43,
    "DoSetLanguage" == 7,
    "DoFix" == 37,
    "DoEdit" == 16,
    "DoSelect" == 36,
    "DoAlign" == 29,
    "DoShutdown" == 4,
    "DoExecute" == 1,
    "DoPark" == 34,
    "DoList" == 40,
    "DoPatch" == 33,
    "DoIncrement" == 25,
    "SyntaxError" == -1,
    "DoExchange" == 42,
    "DoEditUpdate" == 15,
    "DoStore" == 13,
    "DoLocking" == 35,
    "DoValueReadout" == 31,
    "DoDelete" == 21,
    "DoType" == 38,
    "DoExport" == 12,
    "DoSaveShowfile" == 10,
    "DoDebug" == 39,
    "DoPaste" == 19,
    "DoAlignTransition" == 30,
    "None" == 0,
    "DoCall" == 22,
    "DoCrashMe" == 23,
    "DoGrid" == 41,
    "DoImport" == 11,
    "DoLogin" == 5,
    "DoChangeDestination" == 3,
    "DoLogout" == 6,
    "DoMove" == 20,
    "DoUpdate" == 14,
    "DoFader" == 2,
    "DoSetDMXReadout" == 8,
    "DoAssign" == 28,
    "DoLabel" == 32,
    "DoCopy" == 18,
    "DoCut" == 17,
    "DoIncrementReset" == 26
    }
  
  ---@enum SelectionMode
  local SelectionMode = {
    "2D Grid" == 0,
    "Linearize" == 1
    }
  
  ---@enum OnOff
  local OnOff = {
    "On" == 1,
    "Off" == 0
    }
  
  ---@enum MatricksIndexNone
  local MatricksIndexNone = {
    "None" == -1,
    "No XYZ" == -2
    }
  
  ---@enum DisplayType
  local DisplayType = {
    "Long" == 1,
    "Big" == 0,
    "Small" == 2
    }
  
  ---@enum ChannelFilterMode
  local ChannelFilterMode = {
    "All" == 5,
    "All For Selected" == 3,
    "Active" == 4,
    "Active For Selected" == 2
    }
  
  ---@enum CueCopyDstMode
  local CueCopyDstMode = {
    "Overwrite" == 0,
    "Merge" == 1
    }
  
  ---@enum ColorMixMode
  local ColorMixMode = {
    "Rec.2020" == 2,
    "Standard" == 3,
    "Fixture Type" == 0,
    "Rec.709" == 1
    }
  
  ---@enum FixtureSheetFixedColumnType
  local FixtureSheetFixedColumnType = {
    "SelectedInverted" == 2,
    "MainMultiPatchSelected" == 5,
    "PartlySelected" == 3,
    "Selected" == 1,
    "SelectedEdge" == 6,
    "" == 0,
    "InvalidGridPosition" == 4
    }
  
  ---@enum SplitterH_LeftRight
  local SplitterH_LeftRight = {
    "Right" == 0,
    "Left" == 1
    }
  
  ---@enum PhaserLineHeight
  local PhaserLineHeight = {
    "Auto" == 50
    }
  
  ---@enum AssignmentButtonFunctionsPreset
  local AssignmentButtonFunctionsPreset = {
    "HalfSpeed" == 26,
    "Toggle" == 14,
    "Go+" == 3,
    "Pause" == 18,
    "SelectFixtures" == 116,
    "Off" == 8,
    "Rate1" == 11,
    "Empty" == 0,
    ">>>" == 5,
    "Kill" == 29,
    "Speed1" == 12,
    "" == 0,
    "On" == 7,
    "LearnSpeed" == 10,
    "Black" == 2,
    "Temp" == 13,
    "At" == 45,
    "DoubleSpeed" == 27,
    "Swap" == 25,
    "Flash" == 1
    }
  
  ---@enum ChannelFrequency
  local ChannelFrequency = {
    "Slow3" == 5,
    "Slow1" == 3,
    "60" == 0,
    "15" == 2,
    "30" == 1,
    "Slow2" == 4
    }
  
  ---@enum TransitionMode
  local TransitionMode = {
    "Fast" == 3,
    "Linear" == 0,
    "Sinus" == 1,
    "Slow" == 2
    }
  
  ---@enum AssignmentQuickeyFunctions
  local AssignmentQuickeyFunctions = {
    "" == 0,
    "Empty" == 0,
    "Go+" == 3
    }
  
  ---@enum DmxState
  local DmxState = {
    "Out" == 1,
    "RDM" == 5,
    "In" == 2,
    "Off" == 0
    }
  
  ---@enum RealtimeCmdSource
  local RealtimeCmdSource = {
    "Network" == 2,
    "Local" == 1,
    "Original" == 0
    }
  
  ---@enum RemoteMidiType
  local RemoteMidiType = {
    "NoteAttackDecay" == 2,
    "Note" == 0,
    "Control" == 3,
    "NoteAttack" == 1
    }
  
  ---@enum TimeNone
  local TimeNone = {
    "None" == 9223372036854775807
    }
  
  ---@enum GeometryType
  local GeometryType = {
    "Beam" == 2,
    "MediaServerLayer" == 7,
    "FilterBeam" == 5,
    "FilterShaper" == 6,
    "FilterGobo" == 4,
    "Axis" == 1,
    "MediaServerCamera" == 8,
    "None" == 0,
    "MediaServerMaster" == 9,
    "Display" == 10,
    "FilterColor" == 3
    }
  
  ---@enum DisplayTypePreference
  local DisplayTypePreference = {
    "Long" == 2,
    "Small" == 3,
    "LongOrSmall" == 6,
    "Any" == 0,
    "BigOrLong" == 4,
    "Big" == 1,
    "BigLongSmall" == 7,
    "BigOrSmall" == 5
    }
  
  ---@enum CommandWingBarDisplayMode
  local CommandWingBarDisplayMode = {
    "Labels" == 0,
    "Hardware Buttons" == 1
    }
  
  ---@enum ExtraStatusInfo
  local ExtraStatusInfo = {
    "Create" == 2,
    "" == 0,
    "Join" == 1
    }
  
  ---@enum DMXVirtualResolution
  local DMXVirtualResolution = {
    "16 bits" == 2,
    "24 bits" == 3,
    "8 bits" == 1
    }
  
  ---@enum FixedColumns
  local FixedColumns = {
    "Auto" == -1
    }
  
  ---@enum FixtureTypeSource
  local FixtureTypeSource = {
    "GDTF" == 2,
    "Shares" == 4,
    "User" == 3,
    "grandMA3" == 0,
    "grandMA2" == 1,
    "In current show" == 5
    }
  
  ---@enum PatchOffset
  local PatchOffset = {
    "None" == -1
    }
  
  ---@enum XYZMapping
  local XYZMapping = {
    "X" == 0,
    "Y" == 1,
    "Z" == 2
    }
  
  ---@enum AssignmentTimecodeFunctions
  local AssignmentTimecodeFunctions = {
    "HalfSpeed" == 26,
    "Toggle" == 14,
    "Flash" == 1,
    "Call" == 106,
    "Pause" == 18,
    "SelectFixtures" == 116,
    "Top" == 15,
    "Off" == 8,
    "Rate1" == 11,
    "Load" == 17,
    ">>>" == 5,
    "Kill" == 29,
    "Speed1" == 12,
    "" == 0,
    "On" == 7,
    "LearnSpeed" == 10,
    "Temp" == 13,
    "Swap" == 25,
    "Go-" == 4,
    "<<<" == 6,
    "Go+" == 3,
    "Select" == 24,
    "DoubleSpeed" == 27,
    "Goto" == 16,
    "Empty" == 0,
    "Black" == 2
    }
  
  ---@enum RDMCommandClass
  local RDMCommandClass = {
    "SET" == 48,
    "DISCOVER_RESP" == 17,
    "SET_RESP" == 49,
    "GET" == 32,
    "DISCOVER" == 16,
    "GET_RESP" == 33
    }
  
  ---@enum FontSizes
  local FontSizes = {
    "9" == 9,
    "16" == 16,
    "24" == 24,
    "14" == 14,
    "11" == 11,
    "28" == 28,
    "18" == 18,
    "20" == 20,
    "32" == 32
    }
  
  ---@enum ColorPickerWindowMode
  local ColorPickerWindowMode = {
    "HSB" == 1,
    "Book" == 3,
    "CIE" == 0,
    "Fader" == 2
    }
  
  ---@enum ProgrammingLayer
  local ProgrammingLayer = {
    "Accel" == 12,
    "Measure" == 8,
    "Delay" == 3,
    "Speed" == 4,
    "Fade" == 2,
    "Width" == 15,
    "Transition" == 14,
    "Decel" == 13,
    "GridPos" == 7,
    "Phase" == 6,
    "Absolute" == 10,
    "SpeedMaster" == 5,
    "Relative" == 11
    }
  
  ---@enum AssignmentButtonFunctions
  local AssignmentButtonFunctions = {
    "HalfSpeed" == 26,
    "Toggle" == 14,
    "Flash" == 1,
    "Call" == 106,
    "Pause" == 18,
    "SelectFixtures" == 116,
    "Top" == 15,
    "Off" == 8,
    "Rate1" == 11,
    "Load" == 17,
    ">>>" == 5,
    "Kill" == 29,
    "Speed1" == 12,
    "" == 0,
    "On" == 7,
    "LearnSpeed" == 10,
    "Temp" == 13,
    "Swap" == 25,
    "Go-" == 4,
    "<<<" == 6,
    "Go+" == 3,
    "Select" == 24,
    "DoubleSpeed" == 27,
    "Goto" == 16,
    "Empty" == 0,
    "Black" == 2
    }
  
  ---@enum CueCopyDstCmd
  local CueCopyDstCmd = {
    "Keep" == 0,
    "ForceDefault" == 2,
    "ForceRelease" == 1
    }
  
  ---@enum TimeKeyTarget
  local TimeKeyTarget = {
    "Fixture" == 1,
    "Cue" == 0
    }
  
  ---@enum ShowUserEncoder
  local ShowUserEncoder = {
    "Xkeys" == 2,
    "Default" == 0,
    "Exec" == 1
    }
  
  ---@enum PhaserTransformationsShort
  local PhaserTransformationsShort = {
    "Mirror" == 1,
    "None" == 0
    }
  
  ---@enum RDMLampState
  local RDMLampState = {
    "LAMP_STANDBY" == 3,
    "Manufacturer-Specific States" == 128,
    "LAMP_STRIKE" == 2,
    "LAMP_NOT_PRESENT" == 4,
    "LAMP_OFF" == 0,
    "LAMP_ON" == 1,
    "LAMP_ERROR" == 127
    }
  
  ---@enum SpeedReadoutMode
  local SpeedReadoutMode = {
    "Hertz" == 0,
    "Seconds" == 2,
    "BPM" == 1
    }
  
  ---@enum ReductionPolicy
  local ReductionPolicy = {
    "PreferLast" == 2,
    "Equal" == 3,
    "EqualFirst" == 4,
    "EqualLast" == 5,
    "PreferFirst" == 1,
    "None" == 0
    }
  
  ---@enum CueTrigger
  local CueTrigger = {
    "Time" == 1,
    "Follow" == 2,
    "Go" == 0,
    "BPM" == 4,
    "Sound" == 3
    }
  
  ---@enum AssignmentSoundMasterButtonFunctions
  local AssignmentSoundMasterButtonFunctions = {
    "" == 0,
    "Empty" == 0,
    "On" == 7,
    "Toggle" == 14,
    "Off" == 8
    }
  
  ---@enum LayoutVisibility
  local LayoutVisibility = {
    "Hidden" == 0,
    "Visible" == 1
    }
  
  ---@enum Month
  local Month = {
    "November" == 10,
    "February" == 1,
    "October" == 9,
    "April" == 3,
    "September" == 8,
    "August" == 7,
    "December" == 11,
    "May" == 4,
    "July" == 6,
    "January" == 0,
    "March" == 2,
    "June" == 5
    }
  
  ---@enum PresetLinkMode
  local PresetLinkMode = {
    "None" == -1,
    "Both" == 2,
    "Referenced" == 0,
    "Integrated" == 1
    }
  
  ---@enum DmxSheetSettingsViewMode
  local DmxSheetSettingsViewMode = {
    "Sheet" == 0
    }
  
  ---@enum FunctionMode
  local FunctionMode = {
    "WM_Unknown" == 0,
    "WM_Phase" == 3,
    "WM_2D" == 1,
    "WM_Width" == 4,
    "WM_1D" == 2
    }
  
  ---@enum PultType
  local PultType = {
    "Web" == 2,
    "Conventional" == 1,
    "Any" == 0
    }
  
  ---@enum SignalOff
  local SignalOff = {
    "Off" == 4294967295
    }
  
  ---@enum TimeDisplayFormatSelected
  local TimeDisplayFormatSelected = {
    "251:23:45" == 4,
    "Default" == 0,
    "251h23m45" == 2,
    "10.11:23:45" == 3,
    "10d11h23m45" == 1
    }
  
  ---@enum PresetReadoutMode
  local PresetReadoutMode = {
    "ID+Name" == 4,
    "Value" == 1,
    "ID+Name+Value" == 5,
    "Name" == 0,
    "ID" == 3,
    "Name+Value" == 2
    }
  
  ---@enum AssignmentButtonFunctionsMacro
  local AssignmentButtonFunctionsMacro = {
    "Go-" == 4,
    "<<<" == 6,
    "Empty" == 0,
    "Pause" == 18,
    ">>>" == 5,
    "" == 0,
    "Go+" == 3,
    "Off" == 8
    }
  
  ---@enum LayoutStretch
  local LayoutStretch = {
    "Crop" == 2,
    "Stretch" == 0,
    "Bar" == 1
    }
  
  ---@enum GeneratorLimits
  local GeneratorLimits = {
    "14d" == 0
    }
  
  ---@enum UndefinedMax
  local UndefinedMax = {
    "-" == 32767
    }
  
  ---@enum ColorWheelMode
  local ColorWheelMode = {
    "Color Wheel Only" == 2,
    "Mix Color Only" == 1,
    "Prefer Mix Color" == 0
    }
  
  ---@enum DmxSheetFixedColumnType
  local DmxSheetFixedColumnType = {
    "Address2" == 1,
    "Address" == 0
    }
  
  ---@enum GelGridType
  local GelGridType = {
    "List" == 0,
    "Big Icons" == 2,
    "Small Icons" == 1
    }
  
  ---@enum CueOnly
  local CueOnly = {
    "On" == 1,
    "OnDefaultNew" == 2,
    "Off" == 0
    }
  
  ---@enum RequestedSize
  local RequestedSize = {
    "Default" == 0
    }
  
  ---@enum MibMultiStep
  local MibMultiStep = {
    "Paused" == 1,
    "Running" == 0
    }
  
  ---@enum DmxPrio
  local DmxPrio = {
    "Low" == 16,
    "HTP" == 80,
    "Lowest" == 0,
    "Super" == 128,
    "Prog" == 112,
    "Highest" == 64,
    "Swap" == 96,
    "LTP" == 32,
    "High" == 48
    }
  
  ---@enum ProgValueSource
  local ProgValueSource = {
    "PlaybackOtherUpGoing" == 18,
    "PlaybackOtherMIB" == 20,
    "Playback" == 8,
    "SelectedPlaybackUpGoing" == 25,
    "PlaybackOther" == 15,
    "ProgOther" == 7,
    "SelectedPlayback" == 22,
    "PlaybackOtherMIBFade" == 21,
    "PlaybackOtherBlocked" == 17,
    "PlaybackOtherDownGoing" == 19,
    "ActiveValue" == 4,
    "SelectedPlaybackMIB" == 27,
    "None" == 0,
    "SelectedPlaybackTracked" == 23,
    "ActiveIntegrated" == 6,
    "ActivePreset" == 5,
    "ProgIntegrated" == 3,
    "PlaybackDownGoing" == 12,
    "PlaybackBlocked" == 10,
    "SelectedPlaybackBlocked" == 24,
    "ProgValue" == 1,
    "PlaybackOtherTracked" == 16,
    "ProgPreset" == 2,
    "SelectedPlaybackDownGoing" == 26,
    "PlaybackUpGoing" == 11,
    "PlaybackTracked" == 9,
    "PlaybackMIBFade" == 14,
    "PlaybackMIB" == 13,
    "SelectedPlaybackMIBFade" == 28
    }
  
  ---@enum MessageCategory
  local MessageCategory = {
    "Undefined" == 0,
    "Manet" == 4,
    "System" == 1,
    "Cmdline" == 2,
    "Power" == 3,
    "USB" == 5,
    "Chat" == 6
    }
  
  ---@enum PresetMode
  local PresetMode = {
    "Selective" == 1,
    "Global" == 2,
    "Universal" == 3
    }
  
  ---@enum PhaserAbsRelMode
  local PhaserAbsRelMode = {
    "Absolute" == 1,
    "Relative" == 2,
    "Abs+Rel" == 3
    }
  
  ---@enum RDMLampOnMode
  local RDMLampOnMode = {
    "Manufacturer-Specific Modes" == 128,
    "LAMP_ON_MODE_DMX" == 1,
    "LAMP_ON_MODE_ON" == 2,
    "LAMP_ON_MODE_AFTER_CAL" == 3,
    "LAMP_ON_MODE_OFF" == 0
    }
  
  ---@enum AssignmentPlaybackMasterButtonFunctions
  local AssignmentPlaybackMasterButtonFunctions = {
    "" == 0,
    "Flash" == 1,
    "On" == 7,
    "Off" == 8,
    "Black" == 2,
    "Empty" == 0,
    "Kill" == 29,
    "Toggle" == 14,
    "Go+" == 3
    }
  
  ---@enum Config
  local Config = {
    "MaxMultiPatchPerFixture" == 1024,
    "MaxElementsPerLayout" == 10000
    }
  
  ---@enum PoolSizeFactor
  local PoolSizeFactor = {
    "Normal" == 1,
    "Double" == 2,
    "Half" == 0
    }
  
  ---@enum RDMPowerStateDefines
  local RDMPowerStateDefines = {
    "POWER_STATE_SHUTDOWN" == 1,
    "POWER_STATE_NORMAL" == 255,
    "POWER_STATE_STANDBY" == 2,
    "POWER_STATE_FULL_OFF" == 0
    }
  
  ---@enum LayoutElementSelectionRelevance
  local LayoutElementSelectionRelevance = {
    "Off" == 0,
    "Background" == 1
    }
  
  ---@enum GestureStatus
  local GestureStatus = {
    "Finished" == 3,
    "Canceled" == 4,
    "Finishing" == 2,
    "Updated" == 1,
    "None" == 0
    }
  
  ---@enum SMPTEMode
  local SMPTEMode = {
    "In" == 0,
    "Out" == 1
    }
  
  ---@enum BloomIntensity3d
  local BloomIntensity3d = {
    "On" == 1,
    "Off" == 0
    }
  
  ---@enum ImageSource
  local ImageSource = {
    "Gobos" == 0,
    "Images" == 2,
    "Symbols" == 1,
    "Videos" == 3
    }
  
  ---@enum PhaserEncoderFunction
  local PhaserEncoderFunction = {
    "Move & Size" == 0
    }
  
  ---@enum PhaserEditTool
  local PhaserEditTool = {
    "ChangeWidth" == 9,
    "ChangeRotation" == 7,
    "ChangeSize" == 6,
    "SelectForm" == 10,
    "MoveSpline" == 5,
    "Select" == 1,
    "ChangePhase" == 8,
    "MovePoint" == 4,
    "ChangeSpeed" == 11,
    "AddAbsolute" == 2,
    "AddRelative" == 3,
    "MoveArea" == 0
    }
  
  ---@enum CreateBy
  local CreateBy = {
    "User Conversion" == 1,
    "Unknown" == 0,
    "System Conversion" == 2
    }
  
  ---@enum KeyboardCodes
  local KeyboardCodes = {
    "4" == 52,
    "5" == 53,
    "6" == 54,
    "7" == 55,
    "8" == 56,
    "9" == 57,
    "F2" == 291,
    "World1" == 161,
    "LeftCtrl" == 341,
    "Up" == 265,
    "A" == 65,
    "B" == 66,
    "F12" == 301,
    "World2" == 162,
    "Delta" == 349,
    "Semicolon" == 59,
    "0" == 48,
    "End" == 269,
    "2" == 50,
    "3" == 51,
    "Backslash" == 92,
    "Equal" == 61,
    "Pause" == 284,
    "kpSubtract" == 333,
    "Delete" == 261,
    "PageUp" == 266,
    "PageDown" == 267,
    "kpDecimal" == 330,
    "F7" == 296,
    "None" == -1,
    "CapsLock" == 280,
    "RightShift" == 344,
    "Enter" == 257,
    "Left" == 263,
    "Comma" == 44,
    "ScrollLock" == 281,
    "kpMultiply" == 332,
    "LeftShift" == 340,
    "F8" == 297,
    "kpDivide" == 331,
    "M" == 77,
    "F3" == 292,
    "Backspace" == 259,
    "F4" == 293,
    "LeftAlt" == 342,
    "PrintScreen" == 283,
    "X" == 88,
    "C" == 67,
    "V" == 86,
    "F11" == 300,
    "Tab" == 258,
    "T" == 84,
    "Down" == 264,
    "Space" == 32,
    "Slash" == 47,
    "1" == 49,
    "Right" == 262,
    "RightBracket" == 93,
    "RightAlt" == 346,
    "RightCtrl" == 345,
    "F10" == 299,
    "F6" == 295,
    "Period" == 46,
    "U" == 85,
    "LeftBracket" == 91,
    "W" == 87,
    "Minus" == 45,
    "Y" == 89,
    "Z" == 90,
    "GraveAccent" == 96,
    "F5" == 294,
    "F9" == 298,
    "kpAdd" == 334,
    "F1" == 290,
    "Home" == 268,
    "Escape" == 256,
    "Apostrophe" == 39,
    "Insert" == 260,
    "D" == 68,
    "E" == 69,
    "F" == 70,
    "G" == 71,
    "H" == 72,
    "I" == 73,
    "J" == 74,
    "K" == 75,
    "L" == 76,
    "NumLock" == 282,
    "N" == 78,
    "O" == 79,
    "P" == 80,
    "Q" == 81,
    "R" == 82,
    "S" == 83
    }
  
  ---@enum ImageRotation
  local ImageRotation = {
    "180" == 2,
    "None" == 0,
    "270" == 3,
    "90" == 1
    }
  
  ---@enum MeasurementStatus
  local MeasurementStatus = {
    "Dark Calibration Successful" == 3,
    "Device Found" == 2,
    "No Device Found" == 1,
    "Measuring Fixture" == 0,
    "Idle" == 5,
    "Dark Calibration Failed" == 4
    }
  
  ---@enum ValueReadoutModeNatural
  local ValueReadoutModeNatural = {
    "Natural" == 9,
    "Hex16" == 7,
    "Physical" == 2,
    "Hex8" == 6,
    "Decimal8" == 3,
    "Percent" == 0,
    "Decimal24" == 5,
    "PercentFine" == 1,
    "Decimal16" == 4,
    "Hex24" == 8
    }
  
  ---@enum SetupType
  local SetupType = {
    "Edit" == 2,
    "Live" == 1,
    "Undefined" == 0
    }
  
  ---@enum RDMResponseNackReason
  local RDMResponseNackReason = {
    "The responder cannot comply with request because the message is not implemented in responder." == 0,
    "The responder cannot comply due to an internal hardware fault." == 2,
    "Sub-Device is out of range or unknown." == 9,
    "Value for given Parameter out of allowable range or not supported." == 6,
    "Not valid for Command Class attempted. May be used where GET allowed but SET is not supported." == 5,
    "Proxy is not the RDM line master and cannot comply with message." == 3,
    "The responder cannot interpret request as controller data was not formatted correctly." == 1,
    "SET Command normally allowed but being blocked currently." == 4,
    "Incoming message exceeds buffer capacity." == 8,
    "Buffer or Queue space currently has no free space to store data." == 7,
    "The proxy buffer is full and can not store any more Queued Message or Status Message responses." == 10
    }
  
  ---@enum FixturGraphicSource
  local FixturGraphicSource = {
    "DMX" == 3,
    "Value" == 1,
    "Output" == 2,
    "Auto" == 0
    }
  
  ---@enum GestureId
  local GestureId = {
    "Pan" == 0,
    "!Invalid!" == 32769,
    "PanScrollArea" == 3,
    "Swipe" == 1,
    "Click" == 2
    }
  
  ---@enum ColorDisplayModeAuto
  local ColorDisplayModeAuto = {
    "RGB" == 1,
    "CMY" == 2,
    "Auto" == 0
    }
  
  ---@enum FrameFormatDefault
  local FrameFormatDefault = {
    "30 fps" == 30,
    "25 fps" == 25,
    "24 fps" == 24,
    "60 fps" == 60,
    "Seconds" == 100,
    "Default" == 0
    }
  
  ---@enum TimecodeEncoderFunction
  local TimecodeEncoderFunction = {
    "Edit" == 0
    }
  
  ---@enum ArtNetDataMode
  local ArtNetDataMode = {
    "Input" == 3,
    "Unicast" == 1,
    "Broadcast" == 0,
    "Auto" == 2
    }
  
  ---@enum FixtureSheetHeaderType
  local FixtureSheetHeaderType = {
    "SelectedInverted" == 2,
    "" == 0,
    "PartlySelected" == 3,
    "Selected" == 1
    }
  
  ---@enum DmxTesterMode
  local DmxTesterMode = {
    "Unpatched" == 2,
    "Patched" == 1,
    "All" == 0
    }
  
  ---@enum ToolbarScrollType
  local ToolbarScrollType = {
    "Horizontal" == 1,
    "Vertical" == 0
    }
  
  ---@enum BackupBrowserFilter
  local BackupBrowserFilter = {
    "Demoshows" == 2,
    "Backups" == 1,
    "Templates" == 3,
    "Shows" == 0
    }
  
  ---@enum BeamType
  local BeamType = {
    "Spot" == 1,
    "Wash" == 0,
    "Rectangle" == 3,
    "None" == 2
    }
  
  ---@enum ShaderTypes
  local ShaderTypes = {
    "TessEval" == 36487,
    "Fragment" == 35632,
    "Geometry" == 36313,
    "TessCtrl" == 36488,
    "Vertex" == 35633
    }
  
  ---@enum SplitterV_TopBottom
  local SplitterV_TopBottom = {
    "Top" == 1,
    "Bottom" == 0
    }
  
  ---@enum ALSideSizeSpecial
  local ALSideSizeSpecial = {
    "Hybrid" == -1,
    "Auto" == 0
    }
  
  ---@enum AutoLayoutScrollType
  local AutoLayoutScrollType = {
    "Horizontal" == 1,
    "Vertical" == 0,
    "Auto" == 2
    }
  
  ---@enum CellGrouping
  local CellGrouping = {
    "SizeDriven" == 4294967295
    }
  
  ---@enum InputType
  local InputType = {
    "Touch" == 1,
    "Mouse" == 0,
    "Scroller" == 3,
    "Keyboard" == 2
    }
  
  ---@enum HostOs
  local HostOs = {
    "Windows" == 2,
    "Linux" == 1,
    "Rtos" == 4,
    "Mac" == 3,
    "Undefined" == 0
    }
  
  ---@enum ValueReadoutMode
  local ValueReadoutMode = {
    "Hex16" == 7,
    "Physical" == 2,
    "Hex8" == 6,
    "Decimal8" == 3,
    "Percent" == 0,
    "Decimal24" == 5,
    "PercentFine" == 1,
    "Decimal16" == 4,
    "Hex24" == 8
    }
  
  ---@enum ChildrenFillPolicy
  local ChildrenFillPolicy = {
    "RowFirst" == 1,
    "Default" == 0,
    "ColumnFirst" == 2
    }
  
  ---@enum UndefinedAnchors
  local UndefinedAnchors = {
    "Undefined" == -1
    }
  
  ---@enum EncoderLinkResolution
  local EncoderLinkResolution = {
    "FeatureGroup" == 1,
    "Single" == 0
    }
  
  ---@enum ScrollReason
  local ScrollReason = {
    "User" == 1,
    "Automatic" == 0
    }
  
  ---@enum ShuffleMode
  local ShuffleMode = {
    "Auto" == 0,
    "Unlinked" == 2,
    "Linked" == 1
    }
  
  ---@enum NetworkFilter
  local NetworkFilter = {
    "My Session" == 1,
    "All" == 0,
    "My Location" == 4,
    "Wrong Version" == 3,
    "Not My Session" == 2
    }
  
  ---@enum GroupMasterMode
  local GroupMasterMode = {
    "Additive" == 4,
    "Negative" == 2,
    "Scaling" == 3,
    "Positive" == 1,
    "None" == 0
    }
  
  ---@enum DMXMergeMode
  local DMXMergeMode = {
    "LowTP" == 3,
    "Prio" == 1,
    "HTP" == 2,
    "Off" == 0
    }
  
  ---@enum BackdropPatchType
  local BackdropPatchType = {
    "Frame" == 1,
    "ThreeVertical" == 2,
    "Nine" == 0,
    "ThreeHorizontal" == 3
    }
  
  ---@enum FocusSearchPolicy
  local FocusSearchPolicy = {
    "Force" == 1,
    "Default" == 0,
    "Suppress" == 2
    }
  
  ---@enum FocusReason
  local FocusReason = {
    "Lua" == 6,
    "ViewChangedLimited" == 1,
    "UserKeyTab" == 5,
    "ViewChanged" == 2,
    "UserClickTitle" == 4,
    "RestoreAfterModal" == 7,
    "UserClick" == 3,
    "None" == 0
    }
  
  ---@enum ShowPathType
  local ShowPathType = {
    "Show" == 17,
    "Backup" == 18,
    "Demo" == 19,
    "Template" == 52
    }
  
  ---@enum SeqMasterGoMode
  local SeqMasterGoMode = {
    "On" == 2,
    "Go" == 1,
    "Top" == 3,
    "None" == 0
    }
  
  ---@enum EncoderLinkPhaser
  local EncoderLinkPhaser = {
    "Single" == 0,
    "Feature" == 1,
    "AtFilter" == 2
    }
  
  ---@enum ProgrammingLayerGroup
  local ProgrammingLayerGroup = {
    "Phaser" == 1,
    "Values" == 0,
    "Steps" == 2
    }
  
  ---@enum DisplayScales
  local DisplayScales = {
    "0.75x" == 12582912,
    "1x" == 16777216,
    "1.75x" == 29360128,
    "2x" == 33554432,
    "1.25x" == 20971520,
    "2.5x" == 41943040,
    "1.5x" == 25165824
    }
  
  ---@enum AttributeMode
  local AttributeMode = {
    "XZ" == 2,
    "YZ" == 3,
    "PanTilt" == 0,
    "XY" == 1
    }
  
  ---@enum ChangeLevel
  local ChangeLevel = {
    "Create" == 7,
    "Property" == 11,
    "Structural" == 10,
    "Remove" == 1,
    "None" == 13,
    "Delete" == 6,
    "Layout" == 5,
    "Move" == 4,
    "Exchange" == 3,
    "Little" == 12,
    "File" == 0,
    "Full" == 8,
    "FullWithoutContent" == 9,
    "Insert" == 2
    }
  
  ---@enum GoboMode
  local GoboMode = {
    "Animated" == 2,
    "Enabled" == 1,
    "Disabled" == 0
    }
  
  ---@enum TimeCodeSource
  local TimeCodeSource = {
    "Smpte" == 1,
    "Midi" == 0
    }
  
  ---@enum EncoderRing
  local EncoderRing = {
    "Inner" == 0,
    "Outer" == 1,
    "Both" == 2
    }
  
  ---@enum PropertyRadioButtonListSetType
  local PropertyRadioButtonListSetType = {
    "Set" == 0,
    "Property" == 2,
    "Direct" == 1
    }
  
  ---@enum MatricksShuffleNone
  local MatricksShuffleNone = {
    "No Shuffle" == 32768,
    "None" == 0
    }
  
  ---@enum TrackEditGrouping
  local TrackEditGrouping = {
    "Selection" == 0,
    "All Fixtures" == 3,
    "Activation Group" == 2,
    "Feature" == 1
    }
  
  ---@enum PropertyRadioButtonListEnabledItems
  local PropertyRadioButtonListEnabledItems = {
    "AllEnabled" == 4294967295
    }
  
  ---@enum SpecialAttribute
  local SpecialAttribute = {
    "Dummy" == 2,
    "GoboPosShake" == 17,
    "GoboWheelSpin" == 13,
    "ShutterStrobeRandom" == 53,
    "HSB" == 9,
    "PrismPos" == 19,
    "XYZ_Rot" == 6,
    "ColorRGB" == 8,
    "CTC" == 30,
    "Zoom" == 22,
    "IrisRandomPulseOpen" == 48,
    "ShutterStrobePulse" == 50,
    "ColorWheelSpin" == 11,
    "XYZ_Scale" == 7,
    "XYZ_Pos" == 5,
    "CTB" == 29,
    "Blade4Rot" == 42,
    "ShutterStrobeRandomPulseOpen" == 55,
    "IrisRandomPulseClose" == 49,
    "CTO" == 28,
    "IrisPulseOpen" == 46,
    "Blade2A" == 34,
    "GoboPosRotate" == 16,
    "ShutterStrobeRandomPulse" == 54,
    "Frost" == 24,
    "Blade4A" == 40,
    "ShutterStrobePulseOpen" == 51,
    "Color" == 10,
    "Gobo" == 12,
    "GoboSelectShake" == 14,
    "Blade3Rot" == 39,
    "ShutterStrobe" == 26,
    "Shutter" == 25,
    "Blade2B" == 35,
    "Focus" == 21,
    "Blade3B" == 38,
    "ShaperRot" == 43,
    "Prism" == 18,
    "Blade4B" == 41,
    "PrismPosRotate" == 20,
    "Blade3A" == 37,
    "PanTilt" == 4,
    "None" == 0,
    "CIE" == 27,
    "NoFeature" == 1,
    "IrisStrobeRandom" == 47,
    "IrisStrobe" == 44,
    "ShutterStrobeRandomPulseClose" == 56,
    "Blade2Rot" == 36,
    "IrisPulseClose" == 45,
    "Iris" == 23,
    "Blade1A" == 31,
    "Dimmer" == 3,
    "GoboPos" == 15,
    "ShutterStrobePulseClose" == 52,
    "Blade1Rot" == 33,
    "Blade1B" == 32
    }
  
  ---@enum CookMode
  local CookMode = {
    "Ask" == -1,
    "Remove" == 3,
    "Merge" == 2,
    "Abort" == 0,
    "Overwrite" == 1
    }
  
  ---@enum VerifyResult
  local VerifyResult = {
    "NotVerified" == 0,
    "Expired" == 2,
    "Valid" == 1
    }
  
  ---@enum DmxSheetHeaderType
  local DmxSheetHeaderType = {
    "" == 0
    }
  
  ---@enum SectionCount
  local SectionCount = {
    "Auto" == 0,
    "1" == 1,
    "2" == 2,
    "3" == 3
    }
  
  ---@enum FixtureAppearanceMode
  local FixtureAppearanceMode = {
    "Enabled" == 1,
    "Graphic" == 2,
    "None" == 0
    }
  
  ---@enum AlignMode
  local AlignMode = {
    "<" == 2,
    ">" == 3,
    "/" == 1,
    "Off" == 0,
    "><" == 4,
    "<>" == 5
    }
  
  ---@enum PlaybackMaster
  local PlaybackMaster = {
    "Playback12" == 11,
    "Playback30" == 29,
    "Playback16" == 15,
    "Playback18" == 17,
    "Playback47" == 46,
    "Playback1" == 0,
    "Playback37" == 36,
    "Playback36" == 35,
    "Playback25" == 24,
    "Playback22" == 21,
    "Playback6" == 5,
    "Playback41" == 40,
    "Playback49" == 48,
    "Playback34" == 33,
    "Playback9" == 8,
    "Playback26" == 25,
    "Playback39" == 38,
    "Playback8" == 7,
    "Playback7" == 6,
    "Playback50" == 49,
    "Playback42" == 41,
    "Playback14" == 13,
    "Playback32" == 31,
    "Playback29" == 28,
    "Playback38" == 37,
    "Playback10" == 9,
    "Playback48" == 47,
    "Playback21" == 20,
    "Playback17" == 16,
    "Playback20" == 19,
    "Playback23" == 22,
    "Playback45" == 44,
    "Playback24" == 23,
    "Playback13" == 12,
    "None" == 255,
    "Playback2" == 1,
    "Playback44" == 43,
    "Playback43" == 42,
    "Playback5" == 4,
    "Playback40" == 39,
    "Playback11" == 10,
    "Playback4" == 3,
    "Playback33" == 32,
    "Playback15" == 14,
    "Playback19" == 18,
    "Playback28" == 27,
    "Playback46" == 45,
    "Playback3" == 2,
    "Playback31" == 30,
    "Playback27" == 26,
    "Playback35" == 34
    }
  
  ---@enum ExecDisplayMode
  local ExecDisplayMode = {
    "Appearance only" == 1,
    "Both" == 2,
    "Data only" == 0
    }
  
  ---@enum ZoomFactor
  local ZoomFactor = {
    "300%" == 24,
    "130%" == 7,
    "120%" == 6,
    "210%" == 15,
    "200%" == 14,
    "280%" == 22,
    "270%" == 21,
    "260%" == 20,
    "110%" == 5,
    "290%" == 23,
    "90%" == 3,
    "80%" == 2,
    "70%" == 1,
    "60%" == 0,
    "100%" == 4,
    "150%" == 9,
    "140%" == 8,
    "240%" == 18,
    "250%" == 19,
    "220%" == 16,
    "230%" == 17,
    "180%" == 12,
    "190%" == 13,
    "160%" == 10,
    "170%" == 11
    }
  
  ---@enum InputControl3d
  local InputControl3d = {
    "Camera Orbit" == 2,
    "Camera Move" == 5,
    "Follow" == 1,
    "Select" == 0,
    "Camera Set Pivot" == 6,
    "Camera Zoom" == 3,
    "Focus" == 7,
    "Camera Pivot" == 4
    }
  
  ---@enum Master
  local Master = {
    "Playback12" == 53,
    "DefaultMaster" == 0,
    "GrandSoundIn" == 24,
    "Playback16" == 57,
    "Speed15" == 40,
    "Playback25" == 66,
    "GrandSolo" == 15,
    "GrandSoundFade" == 25,
    "GrandLowlight" == 14,
    "BPM" == 41,
    "GrandRate" == 16,
    "Playback7" == 48,
    "DefaultXFadeA" == 2,
    "Playback26" == 67,
    "Speed5" == 30,
    "Playback32" == 73,
    "Playback4" == 45,
    "Playback38" == 79,
    "Playback17" == 58,
    "Playback33" == 74,
    "None" == 255,
    "Playback8" == 49,
    "Playback5" == 46,
    "DefaultRate" == 5,
    "Speed7" == 32,
    "Speed4" == 29,
    "DefaultXFade" == 1,
    "Playback19" == 60,
    "Playback46" == 87,
    "Playback31" == 72,
    "Playback27" == 68,
    "Speed2" == 27,
    "Playback42" == 83,
    "Speed12" == 37,
    "Speed9" == 34,
    "Playback18" == 59,
    "Playback47" == 88,
    "Playback1" == 42,
    "Speed8" == 33,
    "GrandProgramXFade" == 19,
    "GrandHighlight" == 13,
    "Speed6" == 31,
    "Playback40" == 81,
    "Playback30" == 71,
    "Playback22" == 63,
    "Speed14" == 39,
    "Speed13" == 38,
    "DefaultTime" == 10,
    "Speed11" == 36,
    "Playback41" == 82,
    "Playback49" == 90,
    "Speed10" == 35,
    "Playback34" == 75,
    "Speed1" == 26,
    "Playback9" == 50,
    "Playback6" == 47,
    "Playback50" == 91,
    "Playback39" == 80,
    "Playback48" == 89,
    "Playback45" == 86,
    "Playback44" == 85,
    "GrandExecXFade" == 21,
    "Playback14" == 55,
    "Playback43" == 84,
    "GrandSoundOut" == 23,
    "GrandProgramTime" == 18,
    "Playback10" == 51,
    "GrandSpeed" == 17,
    "Playback35" == 76,
    "GrandExecTime" == 20,
    "DefaultSpeed" == 6,
    "Playback23" == 64,
    "DefaultXFadeB" == 3,
    "Playback24" == 65,
    "Playback3" == 44,
    "GrandWorld" == 12,
    "Playback2" == 43,
    "Playback21" == 62,
    "Playback20" == 61,
    "GrandMaster" == 11,
    "DefaultHighlight" == 7,
    "Playback11" == 52,
    "Playback13" == 54,
    "DefaultTemp" == 4,
    "Playback29" == 70,
    "Speed3" == 28,
    "Playback28" == 69,
    "DefaultSolo" == 9,
    "DefaultLowlight" == 8,
    "Playback15" == 56,
    "Playback37" == 78,
    "Playback36" == 77
    }
  
  ---@enum ExecEditorTab
  local ExecEditorTab = {
    "LastTab" == 4,
    "Edit" == 3,
    "Object" == 0,
    "Handle" == 1,
    "Edit Setting" == 2
    }
  
  ---@enum ArrangementMarcType
  local ArrangementMarcType = {
    "Dynamic" == 1,
    "Small" == 0
    }
  
  ---@enum AutoInterface
  local AutoInterface = {
    "Auto" == 0
    }
  
  ---@enum MouseButtonTypes
  local MouseButtonTypes = {
    "Right" == 1,
    "Middle" == 2,
    "Left" == 0
    }
  
  ---@enum SequenceAction
  local SequenceAction = {
    "Temp" == 4,
    "Go+" == 2,
    "Select" == 0,
    "Toggle" == 1,
    "Flash" == 3
    }
  
  ---@enum WeekDayShort
  local WeekDayShort = {
    "Sat" == 5,
    "Wed" == 2,
    "Thu" == 3,
    "Tue" == 1,
    "Mon" == 0,
    "Fri" == 4,
    "Sun" == 6
    }
  
  ---@enum CmdEventStatus
  local CmdEventStatus = {
    "On" == 1,
    "Off" == 0
    }
  
  ---@enum DmxTesterAddressMode
  local DmxTesterAddressMode = {
    "Abs" == 1,
    "Uni" == 0
    }
  
  ---@enum CuePartAppearance
  local CuePartAppearance = {
    "Off" == 0,
    "Number" == 1,
    "All" == 3,
    "Num+Name" == 2
    }
  
  ---@enum KeyboardModifier
  local KeyboardModifier = {
    "Ctrl" == 341,
    "Shift" == 340,
    "Alt" == 342,
    "None" == -1
    }
  
  ---@enum SequenceLinkType
  local SequenceLinkType = {
    "LastGo" == 2,
    "Fixed" == 0,
    "Selected" == 1
    }
  
  ---@enum PatchType
  local PatchType = {
    "Coarse" == 1,
    "" == 0,
    "Fine" == 2,
    "Ultra" == 3
    }
  
  ---@enum HostStatus
  local HostStatus = {
    "UpdateMode" == 9,
    "GlobalMaster" == 6,
    "Standalone" == 2,
    "NormalShutdown" == 7,
    "LicenceInvalid" == 10,
    "Connected" == 3,
    "IdleMaster" == 5,
    "ErrorShutdown" == 8,
    "LocalMaster" == 4,
    "Startup" == 1,
    "Undefined" == 0
    }
  
  ---@enum WhiteListPacketNamesBefore_1_7
  local WhiteListPacketNamesBefore_1_7 = {
    "gma2_resource" == 1166,
    "onpc_mac" == 1166,
    "manuals" == 1166,
    "xport_compat" == 1982,
    "updater_x64" == 1166,
    "viz_key" == 1182,
    "third_party" == 1166,
    "demoshows" == 1166,
    "xport" == 1982,
    "pu" == 1166,
    "gma2_compat" == 1166,
    "console" == 1166,
    "npu_compat" == 1166,
    "wing" == 1982,
    "bootloader_x64" == 1166,
    "gma2_ffmpeg" == 1166,
    "gdtf_mvr_addon" == 1166,
    "luatest" == 1166,
    "web_daemon" == 1166,
    "utils" == 1166,
    "gma2_manuals" == 1166,
    "updater_arm" == 1982,
    "system_x64" == 1166,
    "worldserver" == 1166,
    "system_arm" == 1982,
    "resource" == 1982,
    "fixtures" == 1166,
    "unittest" == 1166,
    "ndi_addon" == 1166,
    "onpc_windows" == 1166,
    "resource_usb" == 1182
    }
  
  ---@enum RDMPidValueResetDevice
  local RDMPidValueResetDevice = {
    "Warm" == 1,
    "" == 0,
    "Cold" == 255
    }
  
  ---@enum SpecialValues
  local SpecialValues = {
    "Release" == 0
    }
  
  ---@enum RDMParameterType
  local RDMParameterType = {
    "Fixture" == 2,
    "FixtureType" == 1,
    "Rdm" == 0
    }
  
  ---@enum RelationType
  local RelationType = {
    "Override" == 1,
    "Multiply" == 0
    }
  
  ---@enum RecordGo
  local RecordGo = {
    "as Goto (Status)" == 1,
    "as Go" == 0
    }
  
  ---@enum SpecialValueTypes
  local SpecialValueTypes = {
    "Specials" == 2,
    "Functional" == 1,
    "Sound" == 0,
    "None" == 255
    }
  
  ---@enum SplineType
  local SplineType = {
    "Undefined" == 3,
    "Free" == 1,
    "Proportional" == 2,
    "None" == 0
    }
  
  ---@enum AttriebuteEncoderResolutionSmall
  local AttriebuteEncoderResolutionSmall = {
    "Coarse" == 16777216,
    "Fine" == 1677721,
    "Increment" == 167772
    }
  
  ---@enum TransitionType
  local TransitionType = {
    "Slow+" == 2,
    "Swing-" == 6,
    "Slow" == 1,
    "SCurve" == 5,
    "Swing+" == 8,
    "Linear" == 0,
    "Fast" == 3,
    "Swing" == 7,
    "Fast+" == 4
    }
  
  ---@enum SoundValues
  local SoundValues = {
    "Band2" == 5,
    "Band1" == 4,
    "InvBand2" == 16,
    "Band4" == 7,
    "InvHigh" == 14,
    "Band6" == 9,
    "InvBand5" == 19,
    "High" == 3,
    "InvAll" == 11,
    "InvBand7" == 21,
    "InvBand6" == 20,
    "All" == 0,
    "InvBand3" == 17,
    "Bass" == 1,
    "InvBand1" == 15,
    "InvBand4" == 18,
    "Mid" == 2,
    "InvMid" == 13,
    "InvBass" == 12,
    "Band3" == 6,
    "Band5" == 8,
    "Band7" == 10
    }
  
  ---@enum EncoderFunction
  local EncoderFunction = {
    "Cmd" == 8,
    "MIB" == 6,
    "CueTiming" == 1,
    "Data Edit" == 9,
    "PresetTiming3" == 4,
    "PresetTiming1" == 2,
    "PresetTiming2" == 3,
    "CueSettings" == 0
    }
  
  ---@enum FixtureTypeSourceImport
  local FixtureTypeSourceImport = {
    "grandMA3" == 0,
    "Shares" == 4,
    "User" == 3,
    "grandMA2" == 1
    }
  
  ---@enum FixtureIdEnum
  local FixtureIdEnum = {
    "None" == 0
    }
  
  ---@enum ColorSpaceMode
  local ColorSpaceMode = {
    "sRGB" == 0,
    "Custom" == 3,
    "ProPhoto" == 1,
    "ANSI" == 2
    }
  
  ---@enum XFadeMode
  local XFadeMode = {
    "Split" == 1,
    "AB" == 0
    }
  
  ---@enum LayoutGridStyle
  local LayoutGridStyle = {
    "Lines" == 1,
    "Dots" == 2,
    "Off" == 0
    }
  
  ---@enum PlaybacksToShow
  local PlaybacksToShow = {
    "Macros" == 1,
    "Presets" == 3,
    "Sequences" == 0,
    "Timers" == 4,
    "Timecodes" == 2
    }
  
  ---@enum EncoderLink
  local EncoderLink = {
    "Single" == 0,
    "Feature" == 1,
    "AtFilter" == 2
    }
  
  ---@enum OopsConfirmation
  local OopsConfirmation = {
    "Main" == 1,
    "Always" == 2,
    "Never" == 0
    }
  
  ---@enum MatricksBlockNone
  local MatricksBlockNone = {
    "None" == 0,
    "No Block" == -1
    }
  
  ---@enum AlignmentH
  local AlignmentH = {
    "Right" == 2,
    "Left" == 1,
    "Center" == 0
    }
  
  ---@enum ValueReadoutModeDefault
  local ValueReadoutModeDefault = {
    "Hex16" == 7,
    "Default" == -1,
    "Hex8" == 6,
    "Decimal8" == 3,
    "Percent" == 0,
    "Physical" == 2,
    "Decimal24" == 5,
    "PercentFine" == 1,
    "Decimal16" == 4,
    "Hex24" == 8
    }
  
  ---@enum HostType
  local HostType = {
    "Extension" == 9,
    "Switch" == 6,
    "PU" == 3,
    "onPC" == 2,
    "UpdateMode" == 10,
    "NetworkNode" == 4,
    "Undefined" == 0,
    "Console" == 1,
    "PluginSmall" == 8,
    "Plugin" == 7,
    "InternalWing" == 5
    }
  
  ---@enum WindowCategories
  local WindowCategories = {
    "All" == 6,
    "Viewers and Editors" == 9,
    "Playback" == 11,
    "Show Data" == 0,
    "Media" == 1,
    "Dynamic" == 4,
    "Bars" == 10,
    "User Profile" == 2,
    "Sheets" == 7,
    "Programmer Tools" == 8,
    "Data Pool" == 3,
    "Info and System" == 12,
    "Feature Group" == 5
    }
  
  ---@enum AssignmentFaderFunctionsMasterOnly
  local AssignmentFaderFunctionsMasterOnly = {
    "" == 0,
    "Empty" == 0,
    "Master" == 32
    }
  
  ---@enum EncoderFunctionLayoutView
  local EncoderFunctionLayoutView = {
    "Position" == 0,
    "Arrangement" == 1
    }
  
  ---@enum WindowTypes
  local WindowTypes = {
    "Sheets" == 0,
    "Others" == 3,
    "Pools" == 1,
    "Presets" == 2
    }
  
  ---@enum OutputDelay
  local OutputDelay = {
    "Max" == 30,
    "None" == 0
    }
  
  ---@enum ConnectorGender
  local ConnectorGender = {
    "Universal" == 0,
    "Male" == -1,
    "Female" == 1
    }
  
  ---@enum InvalidFootprint
  local InvalidFootprint = {
    "?" == -1
    }
  
  ---@enum DmxSheetSettingsLevelbar
  local DmxSheetSettingsLevelbar = {
    "Off" == 0,
    "Background" == 1,
    "Bar" == 2
    }
  
  ---@enum DmxSheetSettingsSelected
  local DmxSheetSettingsSelected = {
    "Selected" == 4294967295
    }
  
  ---@enum DMXReadoutMode
  local DMXReadoutMode = {
    "Dec16" == 4,
    "Hex16" == 1,
    "Dec8" == 3,
    "Hex8" == 0,
    "Hex24" == 2,
    "Percent" == 6,
    "Dec24" == 5
    }
  
  ---@enum RDMParameterCommand
  local RDMParameterCommand = {
    "None" == 0,
    "CC_SET" == 2,
    "CC_GET" == 1,
    "CC_GET_SET" == 3
    }
  
  ---@enum CuePartMode
  local CuePartMode = {
    "Default" == 4294967295
    }
  
  ---@enum AssignmentSpeedButtonFunctions
  local AssignmentSpeedButtonFunctions = {
    "HalfSpeed" == 26,
    "" == 0,
    "Flash" == 1,
    "On" == 7,
    "LearnSpeed" == 10,
    "Off" == 8,
    "Black" == 2,
    "Empty" == 0,
    "DoubleSpeed" == 27,
    "Toggle" == 14,
    "Speed1" == 12,
    "Pause" == 18
    }
  
  ---@enum DmxSheetSettingsAddressMode
  local DmxSheetSettingsAddressMode = {
    "Univ.addr" == 0,
    "Absolute" == 1
    }
  
  ---@enum DmxSheetSettingsShowField
  local DmxSheetSettingsShowField = {
    "Attribute" == 0,
    "Id" == 1,
    "Value" == 2
    }
  
  ---@enum DSCPLevel
  local DSCPLevel = {
    "" == 0,
    "Flash" == 120,
    "Critical" == 184,
    "Priority" == 56,
    "Immediate" == 88,
    "FlashOverride" == 152
    }
  
  ---@enum GroupMemoryType
  local GroupMemoryType = {
    "Compressed" == 0,
    "Uncompressed" == 1
    }
  
  ---@enum LicenseRequest
  local LicenseRequest = {
    "On" == 1,
    "Auto" == 0,
    "Off" == 2
    }
  
  ---@enum CameraMode
  local CameraMode = {
    "3D" == 0,
    "2D_Top" == 3,
    "2D_Back" == 5,
    "2D_Front" == 1,
    "2D_Right" == 4,
    "2D_Left" == 2
    }
  
  ---@enum RDMManufacturerId
  local RDMManufacturerId = {
    "Johnsson Lighting Technologies AB" == 19020,
    "Interactive Technologies, Inc." == 18766,
    "Audio Scene" == 16723,
    "ARC Solid-State Lighting Corp." == 2165,
    "Coemar Spa" == 17229,
    "Growflux LLC" == 712,
    "Ephesus Lighting" == 27630,
    "CHROMLECH" == 8628,
    "DIGITAL ART SYSTEM" == 17473,
    "StageLine Electronic" == 21356,
    "LEDValley Technologies Sdn Bhd" == 19542,
    "LightLife, Gesellschaft fuer audiovisuelle Erlebnisse mbH" == 19547,
    "RESERVED FOR PROTOTYPING/EXPERIMENTAL USE ONLY 9" == 32761,
    "James Thomas Engineering" == 19028,
    "Juno Lighting Group" == 2136,
    "Astera LED Technology GmbH" == 16755,
    "Viso Systems Aps" == 22099,
    "OJSC Kadoshkinsky electrotechnical" == 674,
    "Fontana Fountains" == 2405,
    "Insta Elektro GmbH" == 18757,
    "Peter Meyer Project Management Adviser GmbH" == 20557,
    "GVA Lighting, Inc." == 715,
    "Devantech Ltd." == 17494,
    "LLC Likhoslavl Plant of Lighting Engineering (Svetotehnika)" == 672,
    "lumenetix" == 1910,
    "LightMinded Industries, Inc." == 19546,
    "ARRI -- Arnold & Richter Cine Technik GmbH & Co. Betriebs KG" == 8377,
    "SGM A/S" == 1836,
    "Digimedia Multimedia Lighting Solutions" == 17485,
    "HB-Laserkomponenten GmbH" == 9249,
    "Callegenix LLC" == 10152,
    "ADB - TTV Technologies nv" == 16708,
    "Pfannenberg GmbH" == 20582,
    "RESERVED FOR PROTOTYPING/EXPERIMENTAL USE ONLY 5" == 32757,
    "Lumishore Ltd. UK" == 13853,
    "Stage Technologies Limited" == 21313,
    "Anytronics Ltd." == 16718,
    "SpaceCannon vH" == 21347,
    "Claude Heintz Design" == 27768,
    "Pharos Architectural Controls" == 28776,
    "LAM32 srl" == 19488,
    "Acuity Brands Lighting Inc." == 623,
    "RNC Systems Inc." == 21070,
    "Lumascape Lighting Industries" == 1388,
    "Stealth Light srl" == 2227,
    "Amptown Lichttechnik GmbH" == 16717,
    "Digital Sputnik Lighting" == 2447,
    "Howard Eaton Lighting Ltd." == 18501,
    "DDS Elettronica" == 20300,
    "PixelRange Inc." == 28792,
    "Sein & Schein GmbH" == 28003,
    "Schreder" == 21320,
    "I-Lum" == 18764,
    "KMX Inc." == 19277,
    "Leonh Hardware Enterprise Inc." == 9763,
    "Krislite Pte. Ltd." == 2331,
    "State Automation Pty Ltd." == 10682,
    "Integrated System Technologies Ltd." == 18771,
    "SWISSON AG" == 21367,
    "SIRS-E" == 2181,
    "ELETTROLAB S.r.l." == 17474,
    "feno GmbH" == 774,
    "LIGHTOLIER" == 19561,
    "kuwatec, Inc." == 19285,
    "W.A. Benjamin Electric Co." == 2264,
    "STILED" == 2265,
    "LED, Inc." == 20578,
    "Alenco BV" == 16748,
    "Lighting Science Group (formerly LED Effects, Inc.)" == 1547,
    "MY-Semi Inc." == 1938,
    "Zingerli Show Engineering" == 23123,
    "Brother,Brother & Sons Aps" == 8481,
    "Peternet Electronics BVBA" == 10279,
    "Environmental Lighting Solutions" == 25971,
    "L&L Luce&Light" == 1735,
    "Integrated Theatre, Inc." == 18772,
    "KB Design" == 2421,
    "Bushveld Labs" == 2220,
    "Brink Electronics" == 2429,
    "Artistic Licence Engineering Ltd." == 16716,
    "Joshua 1 Systems Inc." == 18993,
    "GUANZHOU KAVON STAGE EQUIPMENT CO., LTD." == 6280,
    "Lex Products Corp." == 19544,
    "Sean Sill" == 21331,
    "Golden Sea Disco Light Manufacturer" == 18259,
    "UP-LUX Eletronica Ltda." == 21840,
    "Freescale Semiconductor U.K. Ltd." == 26227,
    "Starway" == 2537,
    "TecArt Lighting" == 21569,
    "MARTINI S.p.A." == 19809,
    "Wildfire, Inc." == 22342,
    "RVL techniek" == 19148,
    "Hollywood Rentals LLC" == 4858,
    "Luxlight Skandinavien AB" == 4832,
    "SK-Software" == 21323,
    "Imlight-Showtechnic" == 603,
    "Les Eclairages Lou Inc." == 17763,
    "C.I.Tronics Lighting Designers Ltda" == 17225,
    "TESI Elettronica srl" == 21573,
    "BEGLEC NV" == 8482,
    "EREA" == 17746,
    "ShowLED" == 2285,
    "DES" == 18256,
    "SOUNDLIGHT" == 21324,
    "Lehigh Electric Products" == 9778,
    "DF elettronica s.r.l." == 17510,
    "Advatek Lighting" == 24916,
    "XENON ARCHITECTURAL LIGHTING" == 22629,
    "OSRAM" == 1321,
    "Unilumin Group" == 2519,
    "RayComposer - R. Adams" == 1839,
    "OTTEC Technology GmbH" == 2168,
    "Capricorn Software" == 17235,
    "PatternAgents, LLC" == 2263,
    "Solid State Luminaires" == 6456,
    "Prolight Concepts Ltd." == 2469,
    "Shenzhen Longrich Energy Sources Technology Co., Ltd." == 2444,
    "LSC Lighting Systems (Aust) Pty. Ltd." == 19571,
    "Studio S Music City" == 7110,
    "LanBolight Technology Co., LTD." == 14440,
    "RESERVED FOR PROTOTYPING/EXPERIMENTAL USE ONLY f" == 32767,
    "JSC MFG" == 19027,
    "LLC Moscow Experimental Lighting Plant (TeleMechanic)" == 673,
    "FATEC sarl" == 1930,
    "Anaren Inc." == 31392,
    "RDC, Inc. d.b.a. LynTec" == 1616,
    "Conceptinetics Technologies and Consultancy Ltd." == 1799,
    "Rnet Lighting Technology Limited" == 2464,
    "Zero 88" == 2056,
    "ADL Electronics Ltd." == 2202,
    "Technographic Displays Ltd." == 21572,
    "RaumZeitLabor e.V." == 2431,
    "Element Labs Inc." == 17772,
    "Helvar Ltd" == 9266,
    "RESERVED FOR PROTOTYPING/EXPERIMENTAL USE ONLY 3" == 32755,
    "LGR" == 364,
    "Stage Services Ltd." == 4852,
    "Planungsbuero" == 10294,
    "Krisledz Pte. Ltd." == 1166,
    "Leviton Manufacturing Co., Inc." == 19525,
    "SISTEMA Jsc" == 1772,
    "JPK Systems Limited" == 27243,
    "ESTA1" == 65535,
    "Heliospectra AB" == 25626,
    "TERMINAL-COM" == 1335,
    "Lug Light Factory Sp. z o. o." == 2237,
    "STG-Beikirch Industrieelektronik + Sicherheitstechnik GmbH & Co. KG" == 21364,
    "LaserAnimation Sollinger GmbH" == 19521,
    "Carallon Ltd." == 812,
    "Sean Christopher FX" == 29539,
    "RESERVED FOR PROTOTYPING/EXPERIMENTAL USE ONLY 8" == 32760,
    "Yifeng Lighting Co., Ltd." == 14341,
    "Ecosense Lighting Company Limited" == 2446,
    "AZ e-lite Pte Ltd" == 8365,
    "dilitronics GmbH" == 25708,
    "LAN Systems--Midibox project" == 19778,
    "Guangzhou VAS Lighting Co., Ltd." == 1088,
    "QuickSilver Controls, Inc." == 20819,
    "GEE" == 1,
    "ChamSys Ltd." == 1290,
    "NOVALIGHT S.r.l." == 20044,
    "LLT Lichttechnik GmbH&CO.KG" == 9766,
    "ELM Video Technology, Inc." == 17741,
    "Gantom Lighting & Controls" == 8209,
    "Engineering Arts" == 17729,
    "Ingenieurbuero fuer Nachrichtentechnik in der Studio und Veranstaltungstechnik" == 17740,
    "SVI Public Company Limited" == 2259,
    "Prolites S.A.L." == 2488,
    "MA Lighting Technology GmbH" == 19777,
    "Showtec (Highlite International B.V.)" == 10676,
    "CCI Power Supplies, LLC" == 2454,
    "Zumtobel Lighting GmbH" == 27757,
    "EverBrighten Co., Ltd." == 1344,
    "RE-Engineering" == 701,
    "St. Anne Engineering GmbH" == 257,
    "Shanghai Moons Automation Control Co., Ltd" == 771,
    "Color Kinetics Inc." == 17227,
    "AC Entertainment Products Ltd." == 2434,
    "Horizon Control Inc." == 18499,
    "Gekko Technology Ltd." == 9138,
    "CLAY PAKY S.p.A" == 17232,
    "Visual Productions" == 11048,
    "Strand Lighting Ltd." == 29548,
    "IBL/ESD-Datentechnik GmbH" == 1669,
    "AusChristmasLighting" == 8378,
    "RESERVED FOR PROTOTYPING/EXPERIMENTAL USE ONLY d" == 32765,
    "Ballantyne Strong Inc." == 29541,
    "Birdbrain Labs LLC" == 1102,
    "Selador" == 21317,
    "PiXL Factory" == 2218,
    "Lite Puter Enterprise Co., Ltd." == 5882,
    "Industrias Sola Basic S.A. de C.V." == 21314,
    "Martin Professional A/S" == 19792,
    "Bytecraft Entertainment Pty Ltd" == 16965,
    "Raven Systems Design, Inc." == 4919,
    "OXO" == 23616,
    "Culture Crew bvba" == 8609,
    "RESERVED FOR PROTOTYPING/EXPERIMENTAL USE ONLY 1" == 32753,
    "AVAB America, Inc." == 16705,
    "Pangolin Laser Systems, Inc." == 28912,
    "RESERVED FOR PROTOTYPING/EXPERIMENTAL USE ONLY c" == 32764,
    "inoage GmbH" == 18753,
    "Entertainment Technology" == 17748,
    "Coolon Pty Ltd" == 8627,
    "DMX4ALL GmbH" == 11290,
    "Birket Engineering, Inc." == 17058,
    "ENTTEC Pty Ltd" == 17742,
    "Robert Juliat" == 2478,
    "HBE Lighting Systems" == 18508,
    "MBN GmbH" == 28002,
    "Sundrax, LLC" == 10679,
    "ChamberPlus Co., Ltd" == 26646,
    "Velleman nv" == 2499,
    "ADDiCTiON BoX GbR" == 1968,
    "CODEM MUSIC S.r.l." == 17263,
    "Stardraw.com Ltd." == 21316,
    "TamaTech Labo Company Ltd," == 21588,
    "medien technik cords" == 19796,
    "Kolberg Percussion GmbH" == 4842,
    "eBrain GmbH" == 25922,
    "AC Lasers" == 16707,
    "Bart van Stiphout Electronics & Software" == 8496,
    "Invisible Rival Incorporated" == 18770,
    "SRS Light Design" == 10665,
    "Williams Electronic Design Ltd." == 11188,
    "Peperoni Lighting-Solutions" == 20556,
    "Bigbear Co., Ltd." == 2308,
    "G-LEC Europe GmbH" == 18252,
    "WET" == 30564,
    "ChromaCove LLC" == 8629,
    "Guangzhou GTD Lighting Technology Co., Ltd" == 2385,
    "Audio Visual Devices P/L" == 16726,
    "Claudio Dal Cero Engineering" == 17475,
    "Arthur Digital Solutions Kft" == 32487,
    "Altman Stage Lighting" == 16689,
    "CTG sp. z o.o." == 1776,
    "The White Rabbit Company, Inc." == 11177,
    "D.O.M. Datenverarbeitung GmbH" == 17476,
    "Mittomakers" == 2518,
    "MCI Group" == 2226,
    "Fire & Magic" == 5454,
    "www.doityourselfchristmas.com hobbyists" == 22637,
    "Moog Animatics" == 2432,
    "Hollywood Controls Inc." == 18511,
    "AYRTON" == 16761,
    "Open Lighting" == 31344,
    "Barco" == 16979,
    "Panasonic Corporation" == 1871,
    "ALL-DO INTERNATIONALCO., LTD." == 10649,
    "MX design" == 19800,
    "Licht-, Steuer- und Schaltanlagenbau GmbH (LSS GmbH)" == 19539,
    "Pulsar Light of Cambridge Ltd." == 20597,
    "D.T.S. Illuminazione srl" == 1808,
    "D-Light Designs, LLC" == 8726,
    "ELC lighting" == 25964,
    "Diamante Lighting Srl" == 17513,
    "iLight Technologies Inc" == 26956,
    "Cinetix Medien u. Interface GmbH" == 17257,
    "RESERVED FOR PROTOTYPING/EXPERIMENTAL USE ONLY e" == 32766,
    "LED Team" == 19556,
    "SanDevices, LLC" == 2289,
    "JIAXING XINHUALI LIGHTING & SOUNDING CO., LTD." == 1395,
    "Laservision Pty Ltd" == 9776,
    "LjusDesign AB" == 9781,
    "Luxam, Ltd." == 2433,
    "Spectrum Manufacturing Inc." == 21360,
    "Fly Dragon Lighting Equipment Co.,ltd" == 14472,
    "LDDE Vertriebs Gmbh" == 9762,
    "Elation Lighting" == 8870,
    "Vision Quest Lighting Inc." == 22097,
    "Lighting Innovation Group AG" == 9379,
    "Etherlight" == 8889,
    "Innovation Solutions Ltd." == 18803,
    "Lumonic Limited" == 9782,
    "Interesting Products, Inc." == 18768,
    "LED Flex Limited" == 30900,
    "DJPOWER ELECTRONIC STAGE LIGHTING FIXTURE FACTORY (GUANGZHOU)" == 20781,
    "EAS SYSTEMS" == 8864,
    "Avolites Ltd." == 19798,
    "Music & Lights S.r.l." == 5584,
    "Ambitsel, Inc." == 1308,
    "Dream Solutions Ltd." == 8761,
    "KissBox" == 19266,
    "Production Resource Group" == 20562,
    "Blossom Communications Corp." == 4894,
    "LumenRadio AB" == 19541,
    "ABLELITE INTERNATIONAL" == 578,
    "Alektra AB" == 24908,
    "Apogee Lighting" == 16720,
    "mathertel.de" == 2439,
    "Stagetronics Ltda" == 21332,
    "City Theatrical, Inc." == 17236,
    "GuangZhou MCSWE Technologies, INC" == 5536,
    "ALADIN Architekturlicht GmbH" == 8358,
    "RESERVED FOR PROTOTYPING/EXPERIMENTAL USE ONLY 7" == 32759,
    "GermTec GmbH & Co. KG" == 2305,
    "Macostar International Ltd." == 13192,
    "Revolution Display" == 21060,
    "Selectron Bvba" == 10674,
    "Zaklad Elektroniczny AGAT s.c." == 5292,
    "Global Design Solutions, Ltd." == 13364,
    "Intense Lighting, LLC" == 5280,
    "Fineline Solutions Ltd." == 2400,
    "SAN JACK ANALOG HOUSE CO., LTD." == 16465,
    "Niko" == 20073,
    "Autotech Co." == 2479,
    "WERPAX bvba" == 11170,
    "Drinelec" == 1794,
    "James Embedded Systems Engineering (JESE Ltd)" == 26724,
    "ImageCue LLC" == 776,
    "ShowCAD Control Systems Ltd." == 21352,
    "OFilms" == 1630,
    "RESERVED FOR PROTOTYPING/EXPERIMENTAL USE ONLY b" == 32763,
    "Brighten Technology Development Co., Ltd." == 1487,
    "Rosstech Signals Inc." == 843,
    "zactrack Lighting Technologies Gmbh" == 15664,
    "v2 Lighting Group, Inc." == 5382,
    "techKnow Design Ltd." == 5658,
    "Adelto Limited" == 16740,
    "eldoLED BV" == 25711,
    "Equipson S.A." == 1766,
    "Bortis Elektronik" == 258,
    "i2Systems" == 915,
    "Marumo Electric Co., Ltd." == 2420,
    "eventa Aktiengesellschaft" == 25974,
    "Hubbell Entertainment, Inc." == 26725,
    "eX Systems" == 981,
    "Vari-Lite, Inc." == 22092,
    "Red Lighting s.r.l." == 6717,
    "Red Arrow Controls" == 2272,
    "kLabs Research UK" == 2394,
    "euroGenie" == 25927,
    "deskontrol electronics" == 2556,
    "RESERVED FOR PROTOTYPING/EXPERIMENTAL USE ONLY a" == 32762,
    "CAST Software" == 17223,
    "de koster Special Effects" == 12853,
    "awaptec GmbH" == 5776,
    "Highendled Electronics Company Limited" == 2186,
    "HDT impex s.r.o." == 2362,
    "W-DEV" == 22340,
    "Spotlight s.r.l." == 10680,
    "RESERVED FOR PROTOTYPING/EXPERIMENTAL USE ONLY 4" == 32756,
    "Philips Lighting BV" == 20584,
    "XTBA" == 11306,
    "LED Company s.r.o." == 19685,
    "Wireless Solution Sweden AB" == 22355,
    "SAS Productions" == 21322,
    "Guangzhou Yajiang (Yagang - Silver Star) Photoelectric Equipment Ltd." == 14474,
    "Alkalite LED Technology Corp" == 8374,
    "Wybron, Inc." == 22361,
    "XLN-t bvba" == 30828,
    "Winona Lighting" == 720,
    "AUTOLUX Handels- und ProduktionsgmbH" == 21553,
    "WADAK GmbH" == 6678,
    "Steinigke Showtechnic GmbH" == 10666,
    "Yuesheng International Limited" == 5968,
    "Cineo Lighting" == 6669,
    "Vehtec Tecnologia Ltda" == 7296,
    "Shenzhen CreateLED Electronics Co., Ltd" == 2368,
    "VT-Control" == 4941,
    "SGM Technology For Lighting SPA" == 21319,
    "Sensa-Lite Ltd." == 2260,
    "Ultratec Special Effects" == 19533,
    "Turkowski GmbH" == 1461,
    "Traxon Technologies Ltd." == 5852,
    "Toshiba Lighting & Technology Corporation" == 26608,
    "Toni Maroni Gmb" == 10790,
    "CHAUVET Lighting" == 8612,
    "Electronics Diversified LLC" == 17732,
    "ROE Visual Co. Ltd." == 2438,
    "David O Smith Design" == 2328,
    "Thorn Lighting Limited" == 10789,
    "KIM Lighting" == 2224,
    "Aixz International (S)" == 2458,
    "Hungaroflash" == 9258,
    "The Light Source, Inc." == 29009,
    "Serva Transport Systems GmbH" == 5902,
    "ACTOR-MATE CO., LTD." == 2326,
    "LEDEngin Inc." == 1887,
    "Tempest Lighting Inc." == 21580,
    "Teamboyce Limited" == 2426,
    "Targetti Sankey Spa" == 1239,
    "GLP German Light Products GmbH" == 26476,
    "Tait Towers Manufacturing Inc." == 737,
    "Nerd's Meter" == 5674,
    "TMB" == 6906,
    "Digilin Australia" == 25697,
    "American-Pro International" == 1742,
    "THELIGHT Luminary for Cine and TV S.L." == 2045,
    "TBE Srl" == 2374,
    "Event Lighting Pty, Ltd." == 2055,
    "Rena Electronica B.V." == 18561,
    "LightProcessor Ltd" == 19536,
    "Edward J. Keefe Jr." == 1193,
    "Sturdy Corporation" == 10657,
    "City Design S.p.A." == 4862,
    "Shenzhen Lesan Lighting Co., Ltd." == 1451,
    "Dangeross Design" == 25700,
    "Stroytsirk LLC" == 10728,
    "EUTRAC - Intelligent Lighting GmbH" == 8874,
    "Plsao Optoelectronics Technology Co., Ltd." == 22664,
    "Alcorn McBride Inc." == 913,
    "IGuzzini illuminazione spa" == 18759,
    "Jinnax Opto Technology Co., Ltd." == 682,
    "Soundsculpture Incorporated" == 21321,
    "Global Special Effects" == 18040,
    "LEADER LIGHT s.r.o." == 9761,
    "Griven S.r.l." == 1996,
    "CPOINT" == 1844,
    "Urban Visuals & Effects Ltd." == 10923,
    "SEIKO Epson Corporation" == 5216,
    "Advanced Lighting Systems" == 24940,
    "ADE ELETTRONICA srl" == 16709,
    "Junction Inc. Ltd" == 2129,
    "GPE srl" == 18245,
    "Diginet Control Systems Pty Ltd" == 1545,
    "WLPS Wodielite Production Services" == 2515,
    "ERAL srl" == 17747,
    "Elaborated Networks GmbH" == 2399,
    "Fountain People" == 2466,
    "Duralamp S.p.A." == 6585,
    "Lisys Fenyrendszer Zrt." == 9764,
    "Aquarii, Inc." == 16721,
    "RESERVED FOR PROTOTYPING/EXPERIMENTAL USE ONLY 6" == 32758,
    "Eulum Design, LLC" == 2294,
    "Engineering Solutions Inc." == 8873,
    "Galaxia Electronics" == 1842,
    "CDS advanced technology bv" == 25444,
    "Electrone Americas Ltd. Co." == 5806,
    "GRE Alpha" == 2316,
    "PH Lightning AB" == 7089,
    "Loxone Electronics GmbH" == 9783,
    "Laser Imagineering GmbH" == 1810,
    "JANUS srl" == 19009,
    "SV-wtu eU" == 21366,
    "Synthe FX, LLC" == 21318,
    "Phaton Lighting Co., Ltd." == 2298,
    "Ittermann electronic GmbH" == 26996,
    "CaptSystemes" == 8617,
    "Durand Interstellar, Inc." == 17481,
    "Flashlight/Ampco Holding" == 17996,
    "Company NA" == 20033,
    "Peradise" == 20581,
    "ESTA" == 0,
    "FLUX ECLAIRAGE" == 1060,
    "Mediatec Group" == 23980,
    "PLS Electronics Ltd." == 6552,
    "Innovation LED Limited" == 1408,
    "BOTEX" == 16975,
    "HxDx" == 18500,
    "Ingham Designs" == 18756,
    "DALCNET SRL" == 17486,
    "Mole-Richardson Co." == 30734,
    "Milford Instruments Ltd." == 9908,
    "NXP Semiconductors B.V." == 15120,
    "Anidea Engineering, Inc." == 16713,
    "TheOlymp - Networking & InterNet Services" == 14903,
    "Jands Pty Ltd." == 19041,
    "Aboutshow Color Light Co., LTD" == 5860,
    "I-Pix Digital Light Ltd." == 9788,
    "Smartpark Creative Solutions" == 5038,
    "Getlux Ltd." == 10628,
    "BECKHOFF Automation GmbH" == 16961,
    "Acclaim Lighting" == 714,
    "Flexvisual" == 18006,
    "Motomuto Aps" == 2508,
    "D.E.F. Srl" == 8738,
    "RoscoLab Ltd" == 21074,
    "Ambra Elettronica s.r.l." == 27794,
    "MEB Veranstaltungstechnik GmbH" == 1190,
    "Adam Hall GmbH" == 2212,
    "AIM Northwest" == 20055,
    "RHENAC Systems GmbH" == 1732,
    "DMXPROFI.EU GmbH i.G." == 17488,
    "Stellascapes" == 11720,
    "Lighting Services Inc." == 11488,
    "Dezelectric Kft." == 17477,
    "Bill Coghill Company : Bill Coghill Design" == 16963,
    "Theatrelight New Zealand" == 1807,
    "Guangzhou Chai Yi Light Co., Ltd." == 1519,
    "Electronic Theatre Controls, Inc." == 25972,
    "acdc LED Ltd." == 19676,
    "Light.Audio.Design" == 1696,
    "DC Reactive" == 31164,
    "High End Systems Inc." == 19538,
    "TalentStorm Enterprises, Inc." == 21587,
    "Lightforce Lasertechnik" == 923,
    "PXM s.c." == 20568,
    "Doug Fleenor Design, Inc." == 17478,
    "Masiero s.r.l." == 7887,
    "Laser Technology Ltd." == 19545,
    "Grand Canyon LED Lighting System (Suzhou) Co., Ltd." == 1167,
    "AAdyn Technology" == 2223,
    "ARNOLD LICHTTECHNIK" == 16754,
    "Quicklights" == 20844,
    "Enfis Ltd" == 18518,
    "Strich Labs" == 911,
    "RESERVED FOR PROTOTYPING/EXPERIMENTAL USE ONLY 0" == 32752,
    "Philips Selecon" == 20563,
    "JB-lighting GmbH" == 19010,
    "Key Delfin" == 27492,
    "MEGATECHNICS Ltd." == 9890,
    "Mode Lighting (UK) Ltd." == 19788,
    "D-LED Illumination Technologies Ltd." == 1491,
    "Antari Lighting And Effects Ltd." == 7896,
    "Connex GmbH" == 17240,
    "Dove Lighting Systems, Inc." == 17484,
    "Les Generateurs de brouillard MDG Fog Generators Ltd." == 19780,
    "QMAXZ lighting" == 20813,
    "Focon Showtechnic" == 9015,
    "Nixer Ltd." == 10036,
    "PRO-SOLUTIONS" == 1375,
    "Apollo Design Technology, Inc" == 24932,
    "JAP Optoelectronic Ltd." == 20809,
    "Kino Flo, Inc." == 19270,
    "PR-Electronic" == 10281,
    "LEDART LLC" == 1668,
    "EVC" == 8875,
    "General Luminaire (Shanghai) Ltd." == 18284,
    "Mueller Elektronik" == 19831,
    "Corsair Technology Ltd." == 1851,
    "DAS Integrator Pte Ltd" == 8740,
    "IT Ihme" == 9386,
    "Lampo Lighting Designers" == 19564,
    "Ocean Thin Films Inc." == 21315,
    "Legargeant and Associates" == 19557,
    "LEDsistem Teknolojileri Tic. Ltd. Sti." == 5670,
    "Licht-Technik" == 19540,
    "Lumisia Co., Ltd." == 26454,
    "Brompton Technology Ltd." == 2484,
    "Grid Show Systems Inc." == 5264,
    "LightGeist Ltd." == 19527,
    "Peter Maes Technology" == 10278,
    "OOO SAMLIGHT" == 21334,
    "CDCA Ltd." == 17220,
    "CKC Lighting Co., Ltd." == 1579,
    "HERA LED" == 26732,
    "Lumenpulse Lighting Inc." == 13880,
    "Lux Lumen" == 826,
    "MAL Effekt-Technik GmbH" == 28001,
    "RUIZ TECH" == 21069,
    "Lamp & Pencil" == 1109,
    "MagicFX B.V." == 18008,
    "Martin Sukale Medientechnik GbR" == 21845,
    "Crystal Fountains Inc." == 2504,
    "Newlab S.r.l." == 4826,
    "Creative Lighting And Sound Systems Pty Ltd" == 161,
    "AquaTronic" == 2358,
    "Robe Show Lighting s.r.o." == 21075,
    "NJD Electronics" == 20042,
    "Pathway Connectivity Inc." == 20547,
    "Moda Light" == 7821,
    "Ice House Productions" == 18760,
    "Nila Inc." == 10020,
    "E:cue Control GmbH" == 17722,
    "OKEROAB AB" == 17969,
    "Argetron Elektrik Elektronik Organizasyon Gida San. ve Dis Tic. Ltd. Sti." == 2497,
    "LLC Lighting Technologies production" == 2462,
    "Oase GmbH" == 20289,
    "Outsight Pty Ltd." == 20341,
    "Lichttechnik & Sonderbau" == 14295,
    "ALS Stanislaw Binkiewicz" == 7104,
    "Padura Elektronik GmbH" == 8319,
    "Lumenec Pty. Ltd." == 9786,
    "Glow Motion Technologies, LLC." == 2443,
    "Pr-Lighting Ltd." == 28786,
    "IBEX UK Limited" == 18754,
    "DigitaLicht AG" == 30600,
    "Ehrgeiz" == 2245,
    "Hale Microsystems LLC" == 9328,
    "ACS - Ackerman Computer Sciences" == 2297,
    "LightWild LC" == 19543,
    "Prism Projection" == 916,
    "Aquatique Show Int." == 2483,
    "ACME EFFECTS LTD." == 14342,
    "RESERVED FOR PROTOTYPING/EXPERIMENTAL USE ONLY 2" == 32754,
    "Goddard Design Co." == 18244,
    "COSMOLIGHT SRL" == 1387,
    "Philips Entertainment Lighting Asia" == 20545,
    "Radical Lighting Ltd." == 21068,
    "Arnold Tang Productions" == 16724,
    "Illum Technology LLC (previously Verde Designs, Inc.)" == 2392,
    "ROAL Electronics SpA" == 10535,
    "RootPath Ltd." == 21072,
    "Ingenieurbuero Stahlkopf" == 4976,
    "Lutron Electronics" == 748,
    "HUMAL Elektroonika OU" == 5220,
    "EC Elettronica Srl" == 17731,
    "Pioneer Corporation" == 10273,
    "LUMINEX Lighting Control Equipment bvba" == 19532,
    "Lumina Visual Productions" == 28650,
    "Sand Network Systems" == 21326,
    "KLH Electronics PLC" == 19276,
    "Xtraordinary Musical Accolade Systems" == 22605,
    "Simon Tech" == 21416
    }
  
  ---@enum WhiteListPacketNames
  local WhiteListPacketNames = {
    "gma2_resource" == 1166,
    "onpc_mac" == 1158,
    "updater_x64" == 1166,
    "viz_key" == 1174,
    "demoshows" == 1158,
    "pu" == 1166,
    "console" == 1158,
    "gma2_ffmpeg" == 1166,
    "gdtf_mvr_addon" == 1158,
    "web_daemon" == 1158,
    "system_x64" == 1166,
    "worldserver" == 1158,
    "onpc_windows" == 1158,
    "manuals" == 1158,
    "force_x64" == 1166,
    "third_party" == 1166,
    "ndi_addon" == 1158,
    "xport" == 1974,
    "gma2_manuals" == 1158,
    "npu_compat" == 1166,
    "force_arm" == 1974,
    "wing" == 1974,
    "luatest" == 1166,
    "resource" == 1982,
    "utils" == 1166,
    "bootloader_x64" == 1166,
    "fixtures" == 1158,
    "system_arm" == 1974,
    "gma2_compat" == 1158,
    "force_all" == 1982,
    "unittest" == 1166,
    "updater_arm" == 1974,
    "xport_compat" == 1974,
    "resource_usb" == 1174
    }
  
  ---@enum ImportExportObjectType
  local ImportExportObjectType = {
    "Executor Configurations" == 15,
    "Filters" == 16,
    "Data Pools" == 14,
    "Render Qualities" == 3,
    "MAtricks" == 20,
    "Groups" == 17,
    "Images" == 9,
    "Symbols" == 12,
    "Timers" == 26,
    "Appearances" == 0,
    "Layouts" == 18,
    "Pages" == 21,
    "Sequences" == 24,
    "Views" == 7,
    "Videos" == 13,
    "Presets" == 23,
    "Sounds" == 11,
    "Plugins" == 22,
    "UserProfiles" == 6,
    "Timecodes" == 25,
    "Scribbles" == 4,
    "Cameras" == 1,
    "Macros" == 19,
    "Users" == 5,
    "Gels" == 2,
    "Meshes" == 10,
    "Worlds" == 27,
    "Gobos" == 8
    }
  
  ---@enum UsbProductID
  local UsbProductID = {
    "grandMA3 Master Module (MM)" == 46531,
    "grandMA3 Fader Module Crossfader (MFX)" == 46532,
    "grandMA3 Fader Module Encoder (MFE)" == 46533,
    "grandMA3 DMX Module" == 46528,
    "grandMA3 xPort node" == 46537,
    "grandMA3 CommandWing" == 46536,
    "grandMA3 MA-Key (Viz-Key)" == 46353,
    "grandMA3 MA-Key (Blank)" == 46352,
    "grandMA3 IO Node DIN Rail" == 46540,
    "grandMA3 Compact XT" == 46535,
    "MA NPU 3 DMX Module" == 46529,
    "grandMA3 Control Module" == 46530,
    "grandMA3 IO Node" == 46539,
    "grandMA3 Fader Wing" == 46541,
    "grandMA3 Compact" == 46534,
    "grandMA3 DIN-Rail node" == 46538
    }
  
  ---@enum ShowFileSegmentsMask
  local ShowFileSegmentsMask = {
    "DmxProtocols" == 8,
    "All" == 15,
    "OutputStations" == 4,
    "LocalSettings" == 2,
    "NoShowData" == 1,
    "Nothing" == 0
    }
  
  ---@enum FrameFormatClockSource
  local FrameFormatClockSource = {
    "30 fps" == 30,
    "25 fps" == 25,
    "24 fps" == 24,
    "60 fps" == 60,
    "Seconds" == 100,
    "<Clock Source>" == 0
    }
  
  ---@enum LayoutElementAlignmentV
  local LayoutElementAlignmentV = {
    "Top" == 1,
    "Bottom" == 2,
    "Above" == 3,
    "Center" == 0
    }
  
  ---@enum MIDIMode
  local MIDIMode = {
    "Through" == 2,
    "In" == 0,
    "Out" == 1
    }
  
  ---@enum TimecodeSelectionTarget
  local TimecodeSelectionTarget = {
    "TimeRanges" == 1,
    "Events" == 0
    }
  
  ---@enum VirtualKeyExecutionType
  local VirtualKeyExecutionType = {
    "Release" == 4,
    "Normal" == 0,
    "ClearImmediate" == 2,
    "Immediate" == 1,
    "Background" == 3
    }
  
  ---@enum MacroLineWait
  local MacroLineWait = {
    "Follow" == 0,
    "Go" == -1
    }
  
  ---@enum MultiLedBeamMode
  local MultiLedBeamMode = {
    "Separated Beams" == 0,
    "Single Beam Dynamic Gobo" == 2,
    "Single Beam Mean Color" == 1
    }
  
  ---@enum WingType
  local WingType = {
    "grandMA3 Master Module (MM)" == 0,
    "grandMA3 Fader Module Crossfader (MFX)" == 1,
    "grandMA3 Fader Module Encoder (MFE)" == 2,
    "grandMA3 TEST" == 3,
    "grandMA3 Compact" == 4
    }
  
  ---@enum DisplayIndex
  local DisplayIndex = {
    "None" == 4294967295
    }
  
  ---@enum GestureResult
  local GestureResult = {
    "CancelGesture" == 7,
    "TriggerGesturePassEvent" == 4,
    "EventProcessed" == 1,
    "FinishGesturePassEvent" == 6,
    "Ignore" == 0,
    "FinishGesture" == 5,
    "MayBeGesture" == 2,
    "TriggerGesture" == 3
    }
  
  ---@enum SelectedSelection
  local SelectedSelection = {
    "2" == 1,
    "1" == 0
    }
  
  ---@enum AxisSystem
  local AxisSystem = {
    "Stage" == 0,
    "Object" == 1
    }
  
  ---@enum LayoutType
  local LayoutType = {
    "Line" == 0,
    "Grid" == 1,
    "Camera" == 3,
    "Circle" == 2
    }
  
  ---@enum ImageMirror
  local ImageMirror = {
    "Horizontal" == 1,
    "Both" == 3,
    "Vertical" == 2,
    "None" == 0
    }
  
  ---@enum SelectedEnvironment
  local SelectedEnvironment = {
    "Normal" == 0,
    "Preview" == 1
    }
  
  ---@enum DisplayNone
  local DisplayNone = {
    "None" == 4294967295
    }
  
  ---@enum AssignmentButtonFunctionsWorld
  local AssignmentButtonFunctionsWorld = {
    "Black" == 2,
    "" == 0,
    "Empty" == 0,
    "SelectFixtures" == 116,
    "Flash" == 1
    }
  
  ---@enum ImageBackGroundMode
  local ImageBackGroundMode = {
    "Tile" == 3,
    "Bar" == 1,
    "Crop" == 2,
    "Center" == 4,
    "Stretch" == 0
    }
  
  ---@enum SyntaxResult
  local SyntaxResult = {
    "AbortBefore" == 4,
    "SyntaxOk" == 0,
    "ExecuteAfter" == 2,
    "SyntaxError" == -1,
    "ExecuteBefore" == 1,
    "Execute" == 3,
    "Ignore" == 5,
    "Erase" == 6
    }
  
  ---@enum TimerAction
  local TimerAction = {
    "Toggle" == 0,
    "Select" == 1
    }
  
  ---@enum PresetAction
  local PresetAction = {
    "Temp" == 5,
    "SelFix/At" == 0,
    "Toggle" == 3,
    "Flash" == 4,
    "At" == 1,
    "Go+" == 2
    }
  
  ---@enum GelSortType
  local GelSortType = {
    "Name" == 1,
    "Key" == 2,
    "None" == 0
    }
  
  ---@enum UndefinedMin
  local UndefinedMin = {
    "-" == -32768
    }
  
  ---@enum MibMode
  local MibMode = {
    "Defined" == 2,
    "Late" == 5,
    "UponGo" == 4,
    "None" == 1,
    "Default" == 0,
    "Early" == 3
    }
  
  ---@enum GrandKnob
  local GrandKnob = {
    "None" == 4294967295,
    "GrandKnob" == 100
    }
  
  ---@enum AssignmentProgExecButtonFunctions
  local AssignmentProgExecButtonFunctions = {
    "" == 0,
    "Empty" == 0,
    "On" == 7,
    "Toggle" == 14,
    "Off" == 8
    }
  
  ---@enum TotalReferenceUpdateStatus
  local TotalReferenceUpdateStatus = {
    "RecursionTest" == 6,
    "UpdatePresets" == 4,
    "SortHandles" == 3,
    "CollectCues" == 2,
    "CollectPresets" == 1,
    "Idle" == 0,
    "TrackingConversion" == 5
    }
  
  ---@enum TimeDisplayClockFormat
  local TimeDisplayClockFormat = {
    "251:23:45" == 4,
    "<Default>" == 0,
    "10.11:23:45" == 3
    }
  
  ---@enum TimerLinkType
  local TimerLinkType = {
    "Selected Go+" == 1,
    "LastGo Go+" == 3,
    "LastGo Toggle" == 4,
    "Selected Toggle" == 2,
    "Not Linked" == 0
    }
  
  ---@enum DmxSheetCellType
  local DmxSheetCellType = {
    "SelectedInverted" == 4,
    "Patched2" == 2,
    "DmxTest" == 8,
    "Selected" == 3,
    "NotRequested" == 6,
    "NotPatched" == 0,
    "PartlySelected" == 5,
    "Patched1" == 1,
    "Parked" == 7
    }
  
  ---@enum ContentSheetCueMode
  local ContentSheetCueMode = {
    "Next Cue" == 2,
    "Previous Cue" == 1,
    "Current Cue" == 0,
    "Manual" == 3
    }
  
  ---@enum MatricksShiftNone
  local MatricksShiftNone = {
    "No Shift" == 32768,
    "None" == 0
    }
  
  ---@enum FontSizeType
  local FontSizeType = {
    "Point" == 0,
    "Pixel" == 1
    }
  
  ---@enum CountdownAlertType
  local CountdownAlertType = {
    "Command" == 2,
    "Command & Pop-Up" == 3,
    "Pop-Up" == 1,
    "None" == 0
    }
  
  ---@enum TimerMode
  local TimerMode = {
    "Countdown" == 0,
    "Stopwatch" == 1
    }
  
  ---@enum PresetDisplayMode
  local PresetDisplayMode = {
    "Symbol" == 2,
    "Text and Symbol" == 0,
    "Text" == 1
    }
  
  ---@enum CueCopyDst
  local CueCopyDst = {
    "Keep" == 0,
    "Force Release" == 1,
    "Force Default" == 2
    }
  
  ---@enum MatricksInvert
  local MatricksInvert = {
    "On" == 1,
    "" == 0
    }
  
  ---@enum AssignmentRateButtonFunctions
  local AssignmentRateButtonFunctions = {
    "" == 0,
    "Flash" == 1,
    "Highlight" == 19,
    "On" == 7,
    "Off" == 8,
    "Lowlight" == 20,
    "Empty" == 0,
    "Toggle" == 14,
    "GoStep" == 23,
    "Solo" == 21,
    "Rate1" == 11,
    "Pause" == 18
    }
  
  ---@enum OnOffStatus
  local OnOffStatus = {
    "On" == 1,
    "Toggle" == 2,
    "Undefined" == 3,
    "Off" == 0
    }
  
  ---@enum CachedObjectSource
  local CachedObjectSource = {
    "Resource" == 0,
    "Library" == 1,
    "Showfile" == 2
    }
  
  ---@enum RowOrder
  local RowOrder = {
    "Down Up" == 1,
    "Up Down" == 0
    }
  
  ---@enum ProgLayerAuto
  local ProgLayerAuto = {
    "Accel" == 12,
    "Output" == 20,
    "Auto" == -1,
    "Measure" == 8,
    "Delay" == 3,
    "Width" == 15,
    "Decel" == 13,
    "CueAbs" == 17,
    "GridPos" == 7,
    "DMX" == 19,
    "Speed" == 4,
    "Fade" == 2,
    "CueRel" == 18,
    "Transition" == 14,
    "Phase" == 6,
    "Absolute" == 10,
    "SpeedMaster" == 5,
    "Relative" == 11
    }
  
  ---@enum AssignmentButtonFunctionsPlugin
  local AssignmentButtonFunctionsPlugin = {
    "HalfSpeed" == 26,
    "Toggle" == 14,
    "Flash" == 1,
    "Call" == 106,
    "Pause" == 18,
    "Top" == 15,
    "Off" == 8,
    "Rate1" == 11,
    "Load" == 17,
    ">>>" == 5,
    "Speed1" == 12,
    "" == 0,
    "On" == 7,
    "LearnSpeed" == 10,
    "Temp" == 13,
    "Black" == 2,
    "<<<" == 6,
    "Swap" == 25,
    "Go+" == 3,
    "DoubleSpeed" == 27,
    "Go-" == 4,
    "Goto" == 16,
    "Empty" == 0
    }
  
  ---@enum TimecodeSlot
  local TimecodeSlot = {
    "TCSlot 4" == 3,
    "TCSlot 3" == 2,
    "<Selected>" == 255,
    "TCSlot 6" == 5,
    "TCSlot 8" == 7,
    "TCSlot 2" == 1,
    "TCSlot 1" == 0,
    "TCSlot 5" == 4,
    "TCSlot 7" == 6
    }
  
  ---@enum GridContentFilterMode
  local GridContentFilterMode = {
    "Or" == 1,
    "And" == 0
    }
  
  ---@enum ScrollItemPlacementType
  local ScrollItemPlacementType = {
    "Begin" == 1,
    "End" == 2,
    "Auto" == 0
    }
  
  ---@enum AssignmentButtonFunctionsScreenConfig
  local AssignmentButtonFunctionsScreenConfig = {
    "" == 0,
    "Empty" == 0,
    "Call" == 106
    }
  
  ---@enum MatricksGroupNone
  local MatricksGroupNone = {
    "No Group" == -1,
    "None" == 0
    }
  
  ---@enum EncoderLinkValues
  local EncoderLinkValues = {
    "Feature" == 1,
    "Single" == 0
    }
  
  ---@enum TotalUpdateType
  local TotalUpdateType = {
    "Content" == 3,
    "OnlyNames" == 1,
    "References" == 2,
    "None" == 0
    }
  
  ---@enum VirtualKeyCode
  local VirtualKeyCode = {
    "TEMP" == 105,
    "ONPC_SCREEN6" == 131,
    "DOWN" == 8,
    "NUM8" == 75,
    "PLEASE" == 84,
    "PHASER" == 141,
    "OFF" == 47,
    "GOBACKFAST" == 44,
    "MA2" == 2,
    "UNKNOWN" == 0,
    "GROUP" == 58,
    "PAGE_UP" == 16,
    "X4" == 22,
    "DOUBLE_SPEED" == 113,
    "GOTO" == 55,
    "PREV_Z" == 117,
    "LOWLIGHT" == 109,
    "SELECT" == 54,
    "NUM2" == 69,
    "TIMECODE" == 138,
    "COPY" == 49,
    "PREV_Y" == 116,
    "X12" == 30,
    "ENCODER_INSIDE1" == 89,
    "EXEC" == 35,
    "X9" == 27,
    "RESET" == 5,
    "NUM1" == 68,
    "DOT" == 80,
    "FIX" == 134,
    "STOMP" == 52,
    "X1" == 19,
    "GRID" == 136,
    "NUM7" == 74,
    "SOLO" == 11,
    "ENCODER_INSIDE4" == 95,
    "FIXTURE" == 56,
    "UP" == 6,
    "EDIT" == 62,
    "MOVE" == 48,
    "SEQUENCE" == 59,
    "PAUSE" == 40,
    "CUE" == 60,
    "LEARN" == 43,
    "ENCODER_INSIDE5" == 97,
    "UPDATE" == 65,
    "ENCODER_INSIDE2" == 91,
    "ENCODER_INSIDE3" == 93,
    "DEF_PAUSE" == 38,
    "BLACK" == 102,
    "NUM3" == 70,
    "ENCODER_OUTSIDE5" == 98,
    "LIST" == 18,
    "TOP" == 107,
    "NUM4" == 71,
    "HALF_SPEED" == 112,
    "NUM6" == 73,
    "MA1" == 1,
    "BLIND" == 14,
    "LAYOUT" == 137,
    "CLONE" == 135,
    "XKEYS" == 15,
    "TOGGLE" == 106,
    "OOPS" == 86,
    "NEXT_Y" == 120,
    "THRU" == 78,
    "MACRO" == 142,
    "TIME" == 64,
    "MINUS" == 79,
    "PREV" == 3,
    "VIEW" == 139,
    "ESC" == 88,
    "PREV_X" == 115,
    "PREV_STEP" == 118,
    "GOFAST" == 45,
    "ASSIGN" == 63,
    "NEXT_Z" == 121,
    "CLEAR" == 87,
    "TOGGLE_MATRICKS" == 125,
    "ALIGN" == 51,
    "IF" == 81,
    "USER1" == 99,
    "NUM5" == 72,
    "PRESET" == 61,
    "X8" == 26,
    "ENCODER_OUTSIDE3" == 94,
    "X7" == 25,
    "X6" == 24,
    "STEP" == 123,
    "X5" == 23,
    "X3" == 21,
    "X2" == 20,
    "FULL" == 85,
    "PREVIEW" == 13,
    "ENCODER_OUTSIDE1" == 90,
    "ONPC_SCREEN5" == 130,
    "X15" == 33,
    "NEXT" == 4,
    "PAGE" == 143,
    "DMX" == 140,
    "HELP" == 53,
    "DEF_GOBACK" == 39,
    "X11" == 29,
    "X10" == 28,
    "ONPC_SCREEN4" == 129,
    "USER2" == 100,
    "KILL" == 103,
    "SLASH" == 83,
    "FLASH" == 101,
    "FADER" == 36,
    "X14" == 32,
    "ONPC_SCREEN7" == 132,
    "EXECUTOR" == 144,
    "PLUS" == 77,
    "PAGE_DOWN" == 17,
    "X13" == 31,
    "SELFIX" == 7,
    "AT" == 82,
    "SWAP" == 111,
    "LOAD" == 108,
    "FREEZE" == 12,
    "" == 0,
    "ENCODER_OUTSIDE2" == 92,
    "ENCODER_OUTSIDE4" == 96,
    "X16" == 34,
    "NUM9" == 76,
    "DEF_GO" == 37,
    "NEXT_STEP" == 122,
    "HIGHLIGHT" == 10,
    "NEXT_X" == 119,
    "GOBACK" == 41,
    "NUM0" == 67,
    "UNDO" == 86,
    "MENU" == 9,
    "ON" == 46,
    "ONPC_SCREEN3" == 128,
    "CHANNEL" == 57,
    "GO" == 42,
    "ASTERISK" == 133,
    "DELETE" == 50,
    "RATE1" == 104,
    "RESET_MATRICKS" == 126,
    "GOSTEP" == 110,
    "ONPC_SCREEN2" == 127,
    "RECORD" == 114,
    "STORE" == 66,
    "TOGGLE_STEP" == 124
    }
  
  ---@enum PathContentType
  local PathContentType = {
    "Mixed" == 2,
    "User" == 1,
    "System" == 0
    }
  
  ---@enum GridMergeMode
  local GridMergeMode = {
    "Append X" == 1,
    "Off" == 0
    }
  
  ---@enum TimeCursorScrollMode
  local TimeCursorScrollMode = {
    "Center" == 1,
    "Page" == 0
    }
  
  ---@enum ECPlay
  local ECPlay = {
    "false" == 0,
    "" == 1,
    "true" == 1,
    "on" == 1,
    "0" == 0,
    "1" == 1,
    "No" == 0,
    "off" == 0
    }
  
  ---@enum KeyAction
  local KeyAction = {
    "Hold" == 2,
    "ReleaseAfterHold" == 4,
    "Release" == 0,
    "Press" == 1,
    "DoublePress" == 3
    }
  
  ---@enum PhaserViewMode
  local PhaserViewMode = {
    "Sheet" == 3,
    "2D" == 1,
    "1D" == 2,
    "Auto" == 0
    }
  
  ---@enum TrackpadMode
  local TrackpadMode = {
    "Pan/Tilt" == 1,
    "Mouse" == 0
    }
  
  ---@enum SacnDataMode
  local SacnDataMode = {
    "Output Unicast" == 1,
    "Output Multicast" == 0,
    "Input Multicast" == 2,
    "Input Unicast" == 3
    }
  
  ---@enum NoName
  local NoName = {
    }

  ---@enum PrettyRDMSensorUnitPrefix
  local PrettyRDMSensorUnitPrefix = {
    "T" == 22,
    "Y" == 26,
    "Z" == 25,
    "da" == 17,
    "a" == 8,
    "c" == 2,
    "d" == 1,
    "" == 0,
    "f" == 7,
    "G" == 21,
    "h" == 18,
    "z" == 9,
    "k" == 19,
    "y" == 10,
    "m" == 3,
    "n" == 5,
    "p" == 6,
    "P" == 23,
    "micro" == 4,
    "E" == 24,
    "M" == 20
    }
  
  ---@enum TimecodeSlotShort
  local TimecodeSlotShort = {
    "TCSlot 4" == 3,
    "TCSlot 7" == 6,
    "TCSlot 6" == 5,
    "TCSlot 8" == 7,
    "TCSlot 1" == 0,
    "TCSlot 3" == 2,
    "TCSlot 5" == 4,
    "TCSlot 2" == 1
    }
  
  ---@enum BodyQuality3d
  local BodyQuality3d = {
    "Low" == 2,
    "Standard" == 4,
    "Ultra" == 6,
    "Simple" == 3,
    "Box" == 1,
    "High" == 5,
    "None" == 0
    }
  
  ---@enum SpecialExecutor
  local SpecialExecutor = {
    "XFade1Btn" == 2,
    "XFade2" == 1,
    "ProgBtn3" == 42,
    "SpeedBtn2" == 20,
    "RateBtn2" == 19,
    "ProgEncoder" == 39,
    "RateBtn1" == 9,
    "ExecEncoder" == 29,
    "ProgBtn1" == 40,
    "ExecBtn2" == 31,
    "XFade1" == 0,
    "XFade2Btn" == 3,
    "ProgBtn2" == 41,
    "None" == -1,
    "ExecBtn3" == 32,
    "GrandKnob" == 4,
    "ExecBtn1" == 30,
    "SpeedBtn1" == 10
    }
  
  ---@enum PluginPlacement
  local PluginPlacement = {
    "Multi" == 1,
    "ForceMulti" == 2,
    "Single" == 0
    }
  
  ---@enum GroupSelectionType
  local GroupSelectionType = {
    "Relative" == 0,
    "Absolute" == 1
    }
  
  ---@enum RDMSlotType
  local RDMSlotType = {
    "ST_SEC_FINE" == 1,
    "ST_SEC_SPEED" == 3,
    "ST_SEC_INDEX_ROTATE" == 7,
    "ST_SEC_TIMING" == 2,
    "ST_SEC_UNDEFINED" == 255,
    "ST_SEC_ROTATION" == 6,
    "ST_SEC_INDEX" == 5,
    "ST_SEC_CONTROL" == 4,
    "ST_PRIMARY" == 0
    }
  
  ---@enum CopyCueOnly
  local CopyCueOnly = {
    "On" == 1,
    "On (Default New)" == 2,
    "Off" == 0
    }
  
  ---@enum DMXValueReadoutMode
  local DMXValueReadoutMode = {
    "Decimal" == 1,
    "Percent" == 0,
    "Hex" == 2
    }
  
  ---@enum RDMPidValueDisplayInvert
  local RDMPidValueDisplayInvert = {
    "On" == 1,
    "Auto" == 2,
    "Off" == 0
    }
  
  ---@enum MatricksInvertStyle
  local MatricksInvertStyle = {
    "Pan" == 0,
    "P+T" == 2,
    "Tilt" == 1,
    "All" == 3
    }
  
  ---@enum RDMDataType
  local RDMDataType = {
    "DS_SIGNED_DWORD" == 8,
    "DS_SIGNED_WORD" == 6,
    "DS_MS" == 128,
    "DS_BIT_FIELD" == 1,
    "DS_ASCII" == 2,
    "DS_UNSIGNED_DWORD" == 7,
    "DS_UNSIGNED_WORD" == 5,
    "DS_SIGNED_BYTE" == 4,
    "DS_NOT_DEFINED" == 0,
    "DS_UNSIGNED_BYTE" == 3
    }
  
  ---@enum AssignmentFaderFunctionsNone
  local AssignmentFaderFunctionsNone = {
    "Empty" == 0,
    "" == 0
    }
  
  ---@enum RealtimeSection
  local RealtimeSection = {
    "Timecode" == 7,
    "DMXMix" == 2,
    "Output" == 11,
    "Highlight" == 9,
    "Playback" == 8,
    "DMXCompress" == 12,
    "Start" == 0,
    "GroupMaster" == 6,
    "Jobque" == 3,
    "DMXDecompress" == 1,
    "DMXTransfer" == 13,
    "CalcChannel" == 10
    }
  
  ---@enum MatrixWidthAuto
  local MatrixWidthAuto = {
    "No Width" == -1,
    "Auto" == 0
    }
  
  ---@enum MatricksWingsNone
  local MatricksWingsNone = {
    "No Wings" == -1,
    "None" == 0
    }
  
  ---@enum Yes
  local Yes = {
    "<Blank>" == 0,
    "" == 0,
    "Yes" == 1
    }
  
  ---@enum KeyFunctions
  local KeyFunctions = {
    "Learn" == 10,
    "Toggle" == 14,
    "Goto" == 16,
    "Pause" == 18,
    "GoFast" == 5,
    "Off" == 8,
    "Rate1" == 11,
    "Load" == 17,
    "Top" == 15,
    "Time" == 22,
    "Kill" == 29,
    "On" == 7,
    "Swap" == 25,
    "Speed1" == 12,
    "Step" == 23,
    "Solo" == 21,
    "HS" == 26,
    "GoBackFast" == 6,
    "Highlight" == 19,
    "Record" == 28,
    "DS" == 27,
    "Lowlight" == 20,
    "Temp" == 13,
    "Flash" == 1,
    "Select" == 24,
    "GoBack" == 4,
    "Go" == 3,
    "LearnCueTiming" == 9,
    "Black" == 2
    }
  
  ---@enum SpeedMaster
  local SpeedMaster = {
    "Speed5" == 4,
    "Speed8" == 7,
    "Speed12" == 11,
    "Speed10" == 9,
    "Speed13" == 12,
    "Speed11" == 10,
    "Speed15" == 14,
    "Speed6" == 5,
    "Speed1" == 0,
    "Speed14" == 13,
    "Speed7" == 6,
    "Speed4" == 3,
    "Speed3" == 2,
    "Speed9" == 8,
    "None" == 255,
    "Speed2" == 1,
    "BPM" == 15
    }
  
  ---@enum SpeedScale
  local SpeedScale = {
    "Mul4" == 2,
    "Div16" == -4,
    "Div2" == -1,
    "Mul8" == 3,
    "Mul16" == 4,
    "Div64" == -6,
    "One" == 0,
    "Mul64" == 6,
    "Mul128" == 7,
    "Mul2" == 1,
    "Div4" == -2,
    "Mul256" == 8,
    "Div32" == -5,
    "Div256" == -8,
    "Div8" == -3,
    "Div128" == -7,
    "Mul32" == 5
    }
  
  ---@enum MessagePriority
  local MessagePriority = {
    "Warnings" == 2,
    "Spam" == 1,
    "Errors" == 3,
    "Alerts" == 4,
    "Undefined" == 0
    }
  
  ---@enum OSCMode
  local OSCMode = {
    "UDP" == 0,
    "TCP" == 1
    }
  
  ---@enum RDMPidValueFactoryDefaults
  local RDMPidValueFactoryDefaults = {
    "False" == 0,
    "True" == 1
    }
  
  ---@enum AlignMath
  local AlignMath = {
    "Numerical" == 1,
    "Geometric" == 0
    }
  
  ---@enum PlaybackWindowExecFrom
  local PlaybackWindowExecFrom = {
    "66-70" == 14,
    "76-80" == 16,
    "51-55" == 11,
    "06-10" == 2,
    "16-20" == 4,
    "21-25" == 5,
    "None" == 0,
    "71-75" == 15,
    "01-05" == 1,
    "46-50" == 10,
    "36-40" == 8,
    "86-90" == 16,
    "81-85" == 15,
    "31-35" == 7,
    "26-30" == 6,
    "56-60" == 12,
    "11-15" == 3,
    "41-45" == 9,
    "61-65" == 13
    }
  
  ---@enum TimeDisplayFormat
  local TimeDisplayFormat = {
    "251h23m45" == 1,
    "10d11h23m45" == 0,
    "251:23:45" == 3,
    "10.11:23:45" == 2
    }
  
  ---@enum RealtimeCmdType
  local RealtimeCmdType = {
    "DCRemote" == 6,
    "Midi" == 7,
    "Encoder" == 2,
    "TimeCode" == 4,
    "SoundToLight" == 5,
    "Key" == 0,
    "Fader" == 1,
    "OwO" == 3,
    "PSN" == 8
    }
  
  ---@enum InfoAutoListRef
  local InfoAutoListRef = {
    "SelectedSequence" == 1,
    "SelectedMacro" == 2,
    "LastSelectedObject" == 3,
    "None" == 0
    }
  
  ---@enum CameraType
  local CameraType = {
    "Front/Right" == 8,
    "Left" == 3,
    "Back/Left" == 4,
    "Back/Right" == 6,
    "Top" == 9,
    "Front" == 1,
    "Right" == 7,
    "Front/Left" == 2,
    "Auto" == 0,
    "Back" == 5
    }
  
  ---@enum SCVirtualKeyCode
  local SCVirtualKeyCode = {
    "TEMP" == 105,
    "ONPC_SCREEN6" == 131,
    "DOWN" == 8,
    "NUM8" == 75,
    "PLEASE" == 84,
    "PHASER" == 141,
    "OFF" == 47,
    "GOBACKFAST" == 44,
    "MA2" == 2,
    "UNKNOWN" == 0,
    "GROUP" == 58,
    "PAGE_UP" == 16,
    "X4" == 22,
    "DOUBLE_SPEED" == 113,
    "GOTO" == 55,
    "PREV_Z" == 117,
    "LOWLIGHT" == 109,
    "SELECT" == 54,
    "NUM2" == 69,
    "TIMECODE" == 138,
    "COPY" == 49,
    "PREV_Y" == 116,
    "X12" == 30,
    "ENCODER_INSIDE1" == 89,
    "EXEC" == 35,
    "X9" == 27,
    "RESET" == 5,
    "NUM1" == 68,
    "DOT" == 80,
    "FIX" == 134,
    "STOMP" == 52,
    "X1" == 19,
    "GRID" == 136,
    "NUM7" == 74,
    "SOLO" == 11,
    "ENCODER_INSIDE4" == 95,
    "FIXTURE" == 56,
    "UP" == 6,
    "EDIT" == 62,
    "MOVE" == 48,
    "SEQUENCE" == 59,
    "PAUSE" == 40,
    "CUE" == 60,
    "LEARN" == 43,
    "ENCODER_INSIDE5" == 97,
    "UPDATE" == 65,
    "ENCODER_INSIDE2" == 91,
    "ENCODER_INSIDE3" == 93,
    "DEF_PAUSE" == 38,
    "BLACK" == 102,
    "NUM3" == 70,
    "ENCODER_OUTSIDE5" == 98,
    "LIST" == 18,
    "TOP" == 107,
    "NUM4" == 71,
    "HALF_SPEED" == 112,
    "NUM6" == 73,
    "MA1" == 1,
    "BLIND" == 14,
    "LAYOUT" == 137,
    "CLONE" == 135,
    "XKEYS" == 15,
    "TOGGLE" == 106,
    "OOPS" == 86,
    "NEXT_Y" == 120,
    "THRU" == 78,
    "MACRO" == 142,
    "TIME" == 64,
    "MINUS" == 79,
    "PREV" == 3,
    "VIEW" == 139,
    "ESC" == 88,
    "PREV_X" == 115,
    "PREV_STEP" == 118,
    "GOFAST" == 45,
    "ASSIGN" == 63,
    "NEXT_Z" == 121,
    "CLEAR" == 87,
    "TOGGLE_MATRICKS" == 125,
    "ALIGN" == 51,
    "IF" == 81,
    "USER1" == 99,
    "NUM5" == 72,
    "PRESET" == 61,
    "X8" == 26,
    "ENCODER_OUTSIDE3" == 94,
    "X7" == 25,
    "X6" == 24,
    "STEP" == 123,
    "X5" == 23,
    "X3" == 21,
    "X2" == 20,
    "FULL" == 85,
    "PREVIEW" == 13,
    "ENCODER_OUTSIDE1" == 90,
    "ONPC_SCREEN5" == 130,
    "X15" == 33,
    "NEXT" == 4,
    "PAGE" == 143,
    "DMX" == 140,
    "HELP" == 53,
    "DEF_GOBACK" == 39,
    "X11" == 29,
    "X10" == 28,
    "ONPC_SCREEN4" == 129,
    "USER2" == 100,
    "KILL" == 103,
    "SLASH" == 83,
    "FLASH" == 101,
    "FADER" == 36,
    "X14" == 32,
    "ONPC_SCREEN7" == 132,
    "EXECUTOR" == 144,
    "PLUS" == 77,
    "PAGE_DOWN" == 17,
    "X13" == 31,
    "SELFIX" == 7,
    "AT" == 82,
    "SWAP" == 111,
    "LOAD" == 108,
    "FREEZE" == 12,
    "" == 0,
    "ENCODER_OUTSIDE2" == 92,
    "ENCODER_OUTSIDE4" == 96,
    "X16" == 34,
    "NUM9" == 76,
    "DEF_GO" == 37,
    "NEXT_STEP" == 122,
    "HIGHLIGHT" == 10,
    "NEXT_X" == 119,
    "GOBACK" == 41,
    "NUM0" == 67,
    "UNDO" == 86,
    "MENU" == 9,
    "ON" == 46,
    "ONPC_SCREEN3" == 128,
    "CHANNEL" == 57,
    "GO" == 42,
    "ASTERISK" == 133,
    "DELETE" == 50,
    "RATE1" == 104,
    "RESET_MATRICKS" == 126,
    "GOSTEP" == 110,
    "ONPC_SCREEN2" == 127,
    "RECORD" == 114,
    "STORE" == 66,
    "TOGGLE_STEP" == 124
    }
  
  ---@enum ShowFileStatus
  local ShowFileStatus = {
    "ShowLoaded" == 2,
    "NoShow" == 1,
    "ShowDownloading" == 10,
    "ShowUploading" == 8,
    "ShowSaving" == 5,
    "ShowDownloadIgnore" == 12,
    "ShowMediaDownloading" == 11,
    "ShowDownloaded" == 3,
    "DataNegotiationMaster" == 6,
    "ShowMediaUploading" == 9,
    "DataNegotiationSlave" == 7,
    "DataNegotiationActive" == 4,
    "Undefined" == 0
    }
  
  ---@enum Roles
  local Roles = {
    "Edit" == 3,
    "Default" == 0,
    "DisplayShort" == 2,
    "ObjectNoOnly" == 7,
    "Display" == 1
    }
  
  ---@enum PathType
  local PathType = {
    "UserGobos" == 72,
    "MADir" == 3,
    "Keyboards" == 45,
    "Config" == 10,
    "UserFixtureTypeResources" == 71,
    "Usb" == 11,
    "Showfiles" == 17,
    "UpdateDir" == 6,
    "PluginLibrary" == 37,
    "UserCertificates" == 86,
    "ImageLibrary" == 56,
    "UserMacros" == 92,
    "GrandMA2Library" == 43,
    "SymbolImageLibrary" == 32,
    "RenderQuality" == 31,
    "UserViews" == 79,
    "CustomPluginLibrary" == 89,
    "UserAgendas" == 85,
    "UserDeviceConfig" == 69,
    "ExternalRoot" == 1,
    "UserOutputConfig" == 68,
    "Backupfiles" == 18,
    "AddonLibrary" == 35,
    "SoundLibrary" == 54,
    "NetworkKeys" == 60,
    "ScribbleLibrary" == 58,
    "UserUsers" == 77,
    "UserFixtures" == 70,
    "UserSequences" == 96,
    "UserCameras" == 81,
    "PresetLibrary" == 41,
    "UserDataPools" == 88,
    "UserExecConfigs" == 91,
    "UserExecutors" == 99,
    "UserRenderQuality" == 83,
    "MenuLibrary" == 36,
    "OSC" == 62,
    "UserSymbols" == 57,
    "Undo" == 13,
    "WebDaemon" == 7,
    "MvrLibrary" == 49,
    "UserLayouts" == 90,
    "Shared" == 9,
    "GoboImageLibrary" == 27,
    "UserPatch" == 102,
    "ViewButtonLibrary" == 80,
    "VideoLibrary" == 55,
    "VersionDir" == 4,
    "UserWorlds" == 97,
    "UserTimers" == 101,
    "UserTimecodes" == 100,
    "Resource" == 20,
    "ArtNet" == 64,
    "SACN" == 63,
    "MacroLibrary" == 38,
    "UserStages" == 103,
    "UserColorThemes" == 87,
    "UserMeshes" == 73,
    "InvalidCrashLogs" == 16,
    "UserKeyboardShortcuts" == 84,
    "Data" == 8,
    "UserRemotesMIDI" == 67,
    "UserDmxCurves" == 104,
    "UserFilters" == 98,
    "AppearanceLibrary" == 59,
    "Fonts" == 26,
    "UserRemotesDC" == 65,
    "UserGroups" == 95,
    "UserProfiles" == 78,
    "TemplateShowfiles" == 52,
    "UserPresets" == 94,
    "UserMvr" == 76,
    "UserScreenConfigurations" == 82,
    "FixtureLibrary" == 42,
    "QuickeyLibrary" == 39,
    "UserMeshImages" == 74,
    "UserMedia" == 53,
    "AgendaLibrary" == 34,
    "UserMaterials" == 75,
    "UserInOut" == 61,
    "UserRemotesDMX" == 66,
    "CrashLog" == 14,
    "MatricksLibrary" == 40,
    "GrandMA3Library" == 44,
    "Textures" == 25,
    "BinaryDir" == 0,
    "ColorTheme" == 23,
    "Shaders" == 24,
    "Software" == 47,
    "DemoShowfiles" == 19,
    "MaterialLibrary" == 30,
    "Library" == 51,
    "VizLibrary" == 48,
    "Language" == 22,
    "InstallationPackages" == 5,
    "GelLibrary" == 33,
    "GoboImageCache" == 28,
    "UploadedCrashLogs" == 15,
    "Temp" == 12,
    "ExternalPackages" == 2,
    "Mesh" == 29,
    "UserMatricks" == 93,
    "KeyboardShortcuts" == 46,
    "WebResource" == 21,
    "DmxCurvesLibrary" == 50
    }
  
  ---@enum MonthShort
  local MonthShort = {
    "Apr" == 3,
    "Feb" == 1,
    "Jul" == 6,
    "Jan" == 0,
    "Dec" == 11,
    "Oct" == 9,
    "Nov" == 10,
    "Aug" == 7,
    "May" == 4,
    "Sep" == 8,
    "Mar" == 2,
    "Jun" == 5
    }
  
  ---@enum AssignmentButtonFunctionsGroup
  local AssignmentButtonFunctionsGroup = {
    "Black" == 2,
    "" == 0,
    "Empty" == 0,
    "SelectFixtures" == 116,
    "Flash" == 1
    }
  
  ---@enum DatumMode
  local DatumMode = {
    "Full" == 0,
    "Date" == 1,
    "Time" == 2
    }
  
  ---@enum MasterReaction
  local MasterReaction = {
    "Grand" == 2,
    "Group" == 1,
    "None" == 0
    }
  
  ---@enum UserRights
  local UserRights = {
    "Admin" == 0,
    "Program" == 2,
    "Presets" == 3,
    "Setup" == 1,
    "Playback" == 4,
    "View" == 5,
    "None" == 6
    }
  
  ---@enum FixtureGraphicMode
  local FixtureGraphicMode = {
    "Flip" == 1,
    "Gobo" == 3,
    "Simple" == 2,
    "None" == 0
    }
  
  ---@enum ProgUpdateCueMode
  local ProgUpdateCueMode = {
    "LastGo" == 2,
    "Selected" == 1,
    "All" == 0
    }
  
  ---@enum StoreMode
  local StoreMode = {
    "Ask" == -1,
    "Remove" == 3,
    "CreateSecondCue" == 5,
    "Release" == 4,
    "Merge" == 2,
    "Abort" == 0,
    "Overwrite" == 1
    }
  
  ---@enum RDMSlotId
  local RDMSlotId = {
    "SD_FAN_CONTROL" == 1286,
    "SD_TILT" == 258,
    "SD_COLOR_ADD_WARM_WHITE" == 531,
    "SD_COLOR_HUE" == 534,
    "SD_LAMP_CONTROL" == 1281,
    "SD_COLOR_SUB_YELLOW" == 515,
    "SD_POWER_CONTROL" == 1285,
    "SD_COLOR_ADD_AMBER" == 529,
    "SD_INTENSITY_MASTER" == 2,
    "SD_COLOR_SUB_CYAN" == 514,
    "SD_COLOR_SCROLL" == 521,
    "SD_ROTO_GOBO_WHEEL" == 770,
    "SD_FIXTURE_CONTROL" == 1282,
    "SD_COLOR_ADD_COOL_WHITE" == 532,
    "SD_UNDEFINED" == 65535,
    "SD_EFFECTS_WHEEL" == 772,
    "SD_HEATER_CONTROL" == 1287,
    "SD_FIXTURE_SPEED" == 1283,
    "SD_COLOR_SUB_UV" == 533,
    "SD_COLOR_SATURATION" == 535,
    "SD_BARN_DOOR" == 1033,
    "SD_COLOR_ADD_WHITE" == 530,
    "SD_PAN" == 257,
    "SD_EDGE" == 1026,
    "SD_COLOR_SUB_MAGENTA" == 516,
    "SD_FROST" == 1027,
    "SD_PRISM_WHEEL" == 771,
    "SD_ZOOM" == 1029,
    "SD_BEAM_SIZE_IRIS" == 1025,
    "SD_STATIC_GOBO_WHEEL" == 769,
    "SD_COLOR_SEMAPHORE" == 528,
    "SD_SHUTTER_ROTATE" == 1031,
    "SD_MACRO" == 1284,
    "SD_COLOR_ADD_BLUE" == 519,
    "SD_COLOR_CORRECTION" == 520,
    "SD_COLOR_WHEEL" == 513,
    "SD_INTENSITY" == 1,
    "SD_FRAMING_SHUTTER" == 1030,
    "SD_FOUNTAIN_CONTROL" == 1288,
    "SD_DOUSER" == 1032,
    "SD_STROBE" == 1028,
    "SD_COLOR_ADD_GREEN" == 518,
    "SD_COLOR_ADD_RED" == 517
    }
  
  ---@enum FocusPriority
  local FocusPriority = {
    "InitialFocus" == 4,
    "CanHaveFocus" == 2,
    "WantsFocus" == 3,
    "Never" == 0,
    "TabOnly" == 1
    }
  
  ---@enum SpeedReadoutModeAuto
  local SpeedReadoutModeAuto = {
    "Hertz" == 0,
    "Seconds" == 2,
    "BPM" == 1,
    "Auto" == -1
    }
  
  ---@enum Update
  local Update = {
    "Original Content Only" == 0,
    "Add New Content" == 1
    }
  
  ---@enum ValueReadoutModeAuto
  local ValueReadoutModeAuto = {
    "Natural" == 9,
    "Hex16" == 7,
    "Physical" == 2,
    "Hex8" == 6,
    "Decimal8" == 3,
    "Percent" == 0,
    "Hex24" == 8,
    "Decimal24" == 5,
    "PercentFine" == 1,
    "Decimal16" == 4,
    "Auto" == -1
    }
  
  ---@enum None
  local None = {
    "None" == 4294967295,
    "" == 4294967295
    }
  
  ---@enum TrueFalse
  local TrueFalse = {
    "False" == 0,
    "True" == 1
    }
  
  ---@enum ValueRole
  local ValueRole = {
    "DisplayShort" == 2,
    "Default" == 0,
    "Display" == 1
    }
  
  ---@enum TestBlockType
  local TestBlockType = {
    "lua" == 3,
    "rt" == 2,
    "ui" == 0,
    "root" == 1
    }
  
  ---@enum RDMNotificationThresholdOperator
  local RDMNotificationThresholdOperator = {
    "" == 0,
    "Less" == 4,
    "Greate" == 3,
    "IsNot" == 2,
    "Is" == 1
    }
  
  ---@enum TrackpadPTInvertMode
  local TrackpadPTInvertMode = {
    "Tilt Invert" == 2,
    "Both" == 3,
    "Pan Invert" == 1,
    "Off" == 0
    }
  
  ---@enum EncoderFactor
  local EncoderFactor = {
    "Mul25" == 419430400,
    "Mul2.55" == 42781900,
    "One" == 16777216,
    "Mul50" == 838860800,
    "Div25" == 671088,
    "Div2" == 8388608,
    "Div50" == 335544,
    "Mul2" == 33554432,
    "Div2.55" == 6579300,
    "Div10" == 1677721,
    "Disabled" == 0,
    "Div5" == 3355443,
    "Mul10" == 167772160,
    "Mul5" == 83886080
    }
  
  ---@enum PresetFilterMode
  local PresetFilterMode = {
    "Input" == 0,
    "Both" == 2,
    "Output" == 1,
    "None" == -1
    }
  
  ---@enum ExecConfigType
  local ExecConfigType = {
    "Group" == 4,
    "Master" == 11,
    "World" == 3,
    "View" == 2,
    "Macro" == 1,
    "User" == 7,
    "SpeedMaster" == 12,
    "Sequence" == 0,
    "Plugin" == 6,
    "Timer" == 10,
    "Preset" == 5,
    "PlaybackMaster" == 13,
    "Sound" == 8,
    "ScreenConfig" == 9
    }
  
  ---@enum ExitCode
  local ExitCode = {
    "AutoPluginFailed" == 3,
    "Reboot" == 2,
    "Normal" == 0,
    "PowerDown" == 4,
    "GeneralError" == 5,
    "Restart" == 1
    }
  
  ---@enum ReleaseType
  local ReleaseType = {
    "Release" == 2,
    "Beta" == 1,
    "Alpha" == 0
    }
  
  ---@enum BeamModePatch
  local BeamModePatch = {
    "Line" == 1,
    "Simple" == 2
    }
  
  ---@enum ModalResult
  local ModalResult = {
    "Ok" == 1,
    "Confirm" == 3,
    "Cancel" == 2,
    "None" == 0
    }
  
  ---@enum PlaybackPriority
  local PlaybackPriority = {
    "Swap" == 2,
    "Low" == 7,
    "HTP" == 3,
    "Lowest" == 8,
    "Highest" == 4,
    "Super" == 0,
    "LTP" == 6,
    "High" == 5
    }
  
  ---@enum DynamicPresetPool
  local DynamicPresetPool = {
    "Dynamic" == 4294967295
    }
  
  ---@enum WingID
  local WingID = {
    "Wing6" == 6,
    "Wing2" == 2,
    "Wing1" == 1,
    "Wing4" == 4,
    "Wing3" == 3,
    "Wing5" == 5
    }
  
  ---@enum MibTiming
  local MibTiming = {
    "Default" == 9223372036854775807
    }
  
  ---@enum MibModeSequence
  local MibModeSequence = {
    "UponGo" == 4,
    "None" == 1,
    "Late" == 5,
    "Early" == 3
    }
  
  ---@enum VideoFileSource
  local VideoFileSource = {
    "File" == 0,
    "NDI" == 1
    }
  
  ---@enum DeskLightChannel
  local DeskLightChannel = {
    "LedEncoder" == 2,
    "ScreenLetter" == 8,
    "ScreenSmall" == 9,
    "LedOther" == 6,
    "LedFader" == 3,
    "ScreenExternal" == 10,
    "LedExec" == 4,
    "DeskLights" == 1,
    "LedKeyboard" == 5,
    "ScreenBig" == 7
    }
  
  ---@enum DebugUsbDataSection
  local DebugUsbDataSection = {
    "Midi" == 3,
    "Encoder" == 9,
    "Software" == 15,
    "Smpte" == 4,
    "Fader" == 10,
    "Sync" == 12,
    "Analog" == 6,
    "Digital" == 7,
    "Led" == 11,
    "All" == 0,
    "Button" == 8,
    "Text" == 17,
    "Ups" == 5,
    "HeartBeat" == 14,
    "Capabilities" == 19,
    "NotifierLayer" == 16,
    "Protocol" == 13,
    "DmxIn" == 1,
    "RTC" == 18,
    "DmxOut" == 2
    }
  
  ---@enum FaderEnable
  local FaderEnable = {
    "Disabled" == 2,
    "Toggle" == 0,
    "AlwaysOn" == 1
    }
  
  ---@enum AgendaTool
  local AgendaTool = {
    "Store" == 1,
    "Edit" == 7,
    "Select" == 0,
    "Call" == 6,
    "Copy" == 4,
    "Paste" == 5,
    "Cut" == 3,
    "Delete" == 2
    }
  
  ---@enum AgendaViewMode
  local AgendaViewMode = {
    "Day" == 4,
    "Year" == 1,
    "Week" == 3,
    "Month" == 2,
    "Sheet" == 0
    }
  
  ---@enum ActionMode
  local ActionMode = {
    "OffMode" == 1,
    "SelectMode" == 2,
    "ViewOnly" == 0
    }
  
  ---@enum SignalSlot
  local SignalSlot = {
    "Slot 7" == 6,
    "Off" == 4294967295,
    "Slot 3" == 2,
    "Slot 1" == 0,
    "Slot 4" == 3,
    "Slot 6" == 5,
    "Slot 5" == 4,
    "Slot 2" == 1,
    "Slot 8" == 7
    }
  
  ---@enum RDMSensorUnit
  local RDMSensorUnit = {
    "UNITS_CENTIGRADE" == 1,
    "UNITS_VOLTS_DC" == 2,
    "UNITS_KILOGRAMMES_PER_METER_CUBED" == 15,
    "UNITS_METERS" == 12,
    "UNITS_SECOND" == 21,
    "UNITS_OHM" == 9,
    "UNITS_METERS_SQUARED" == 13,
    "UNITS_WATT" == 10,
    "UNITS_AMPERE_AC_RMS" == 7,
    "UNITS_IRE" == 27,
    "UNITS_METERS_CUBED" == 14,
    "UNITS_VOLTS_AC_RMS" == 4,
    "UNITS_MS" == 128,
    "UNITS_STERADIAN" == 23,
    "UNITS_LUMEN" == 25,
    "UNITS_PASCAL" == 20,
    "UNITS_VOLTS_AC_PEAK" == 3,
    "UNITS_NEWTON" == 18,
    "UNITS_NONE" == 0,
    "UNITS_JOULE" == 19,
    "UNITS_AMPERE_DC" == 5,
    "UNITS_DEGREE" == 22,
    "UNITS_HERTZ" == 8,
    "UNITS_CANDELA" == 24,
    "UNITS_LUX" == 26,
    "UNITS_METERS_PER_SECOND" == 16,
    "UNITS_METERS_PER_SECOND_SQUARED" == 17,
    "UNITS_BYTE" == 28,
    "UNITS_AMPERE_AC_PEAK" == 6,
    "UNITS_KILOGRAM" == 11
    }
  
  ---@enum SequenceCountdown
  local SequenceCountdown = {
    "Duration" == 1,
    "Off" == 0,
    "All" == 2
    }
  
  ---@enum HostSubType
  local HostSubType = {
    "onPCRackUnit" == 97,
    "TrackingServer+Dongle" == 77,
    "MediaServer+Dongle" == 79,
    "TrackingServer" == 78,
    "Light" == 22,
    "IONode" == 75,
    "MAkerStation" == 98,
    "Medium" == 40,
    "Node2Port" == 63,
    "Visualizer" == 74,
    "XLarge" == 42,
    "Wing-MFE" == 92,
    "onPC4Port" == 61,
    "onPC8PortDIN" == 72,
    "onPC8Port" == 62,
    "Wing-onPCFader" == 96,
    "Wing-MFX" == 91,
    "IONodeDIN" == 76,
    "onPC2PortDIN" == 70,
    "MediaServer" == 80,
    "Wing-onPC" == 93,
    "onPC2Port" == 60,
    "Wing-onPCXT" == 95,
    "Vis+Dongle" == 73,
    "LightCRV" == 23,
    "Compact" == 24,
    "Wing-Extension" == 94,
    "Node2PortWM" == 66,
    "FullSize" == 20,
    "Wing-MM" == 90,
    "FullSizeCRV" == 21,
    "onPC4PortDIN" == 71,
    "Large" == 41,
    "Node8PortDIN" == 69,
    "Node4PortDIN" == 68,
    "Node4Port" == 64,
    "Recovery" == 1,
    "RPU" == 26,
    "Node8Port" == 65,
    "Node2PortDIN" == 67,
    "CompactXT" == 25,
    "Undefined" == 0
    }
  
  ---@enum TimecodeTool
  local TimecodeTool = {
    "Delete" == 3,
    "Select" == 1,
    "Resize" == 5,
    "Add" == 2,
    "Move" == 4,
    "Operate" == 0
    }
  
  ---@enum SeqRestartMode
  local SeqRestartMode = {
    "Next Cue" == 2,
    "Current Cue" == 1,
    "First Cue" == 0
    }
  
  ---@enum ScrollType
  local ScrollType = {
    "Horizontal" == 1,
    "Vertical" == 0
    }
  
  ---@enum ValueLayer
  local ValueLayer = {
    "Relative" == 11,
    "Delay" == 3,
    "Absolute" == 10,
    "Fade" == 2
    }
  
  ---@enum LayoutFitType
  local LayoutFitType = {
    "Both" == 2,
    "Elements" == 0,
    "Canvas" == 1
    }
  
  ---@enum TrackLayerAuto
  local TrackLayerAuto = {
    "Accel" == 12,
    "Auto" == -1,
    "Measure" == 8,
    "Delay" == 3,
    "Speed" == 4,
    "Fade" == 2,
    "Width" == 15,
    "Transition" == 14,
    "Decel" == 13,
    "GridPos" == 7,
    "Phase" == 6,
    "Absolute" == 10,
    "SpeedMaster" == 5,
    "Relative" == 11
    }
  
  ---@enum AttriebuteEncoderResolution
  local AttriebuteEncoderResolution = {
    "Coarse" == 16777216,
    "Native" == -16777216,
    "Fine" == 1677721,
    "Increment" == 167772
    }
  
  ---@enum TimecodeSlotOff
  local TimecodeSlotOff = {
    "Off" == 255
    }
  
  ---@enum RestartOption
  local RestartOption = {
    "Reset on Go+" == 1,
    "Continue on Go+" == 0
    }
  
  ---@enum ProgLayer
  local ProgLayer = {
    "Accel" == 12,
    "Output" == 20,
    "Measure" == 8,
    "Delay" == 3,
    "Width" == 15,
    "Decel" == 13,
    "CueAbs" == 17,
    "GridPos" == 7,
    "DMX" == 19,
    "Speed" == 4,
    "Fade" == 2,
    "CueRel" == 18,
    "Relative" == 11,
    "Phase" == 6,
    "Absolute" == 10,
    "SpeedMaster" == 5,
    "Transition" == 14
    }
  
  ---@enum DisplayNumber
  local DisplayNumber = {
    "Executors4" == 11,
    "Small7" == 6,
    "Executors2" == 9,
    "Small6" == 5,
    "None" == 4294967295,
    "Extern5" == 4,
    "Intern3" == 2,
    "Encoders" == 7,
    "Intern2" == 1,
    "Intern1" == 0,
    "Executors1" == 8,
    "Executors5" == 12,
    "Extern4" == 3,
    "Executors3" == 10,
    "TouchMapper" == 14,
    "Executors6" == 13
    }
  
  ---@enum RDMPidValueOnOff
  local RDMPidValueOnOff = {
    "On" == 1,
    "Off" == 0
    }
  
  ---@enum InfoLinkMode
  local InfoLinkMode = {
    "CurrentChild" == 1,
    "NextChild" == 2,
    "Object" == 0
    }
  
  ---@enum AgendaMode
  local AgendaMode = {
    "Dawn" == 1,
    "Sunset" == 3,
    "Absolute" == 0,
    "Sunrise" == 2,
    "Dusk" == 4
    }
  
  ---@enum DmxCurveEditTool
  local DmxCurveEditTool = {
    "MoveArea" == 0,
    "MovePoint" == 4,
    "Select" == 1,
    "AddAbsolute" == 2,
    "MoveSpline" == 5,
    "Delete" == 3
    }
  
  ---@enum WeekDay
  local WeekDay = {
    "Sunday" == 6,
    "Monday" == 0,
    "Wednesday" == 2,
    "Saturday" == 5,
    "Friday" == 4,
    "Tuesday" == 1,
    "Thursday" == 3
    }
  
  ---@enum AssignmentBlindButtonFunctions
  local AssignmentBlindButtonFunctions = {
    "" == 0,
    "Flash" == 1,
    "On" == 7,
    "Toggle" == 14,
    "Empty" == 0,
    "Off" == 8
    }
  
  ---@enum FaderFunctions
  local FaderFunctions = {
    "Master" == 32,
    "Solo" == 41,
    "Highlight" == 39,
    "XFadeB" == 35,
    "Speed" == 38,
    "XFade" == 33,
    "Lowlight" == 40,
    "Time" == 42,
    "XFadeA" == 34,
    "Rate" == 37,
    "Temp" == 36
    }
  
  ---@enum LampType
  local LampType = {
    "LED" == 3,
    "Tungsten" == 1,
    "Halogen" == 2,
    "Discharge" == 0
    }
  
  ---@enum AssignType
  local AssignType = {
    "Group" == 5,
    "Quickey" == 16,
    "Video" == 14,
    "Fixture" == 12,
    "MAtricks" == 13,
    "User" == 10,
    "Timer" == 17,
    "Sound" == 9,
    "ScreenConfig" == 11,
    "Master" == 8,
    "World" == 6,
    "Macro" == 2,
    "Sequence" == 7,
    "View" == 1,
    "Empty" == 0,
    "Plugin" == 3,
    "Menu" == 4,
    "Preset" == 15
    }
  
  ---@enum DispView
  local DispView = {
    "Details" == 8,
    "CPU Temp" == 4,
    "Sys Temp" == 6,
    "GPU Temp" == 5,
    "Fan" == 7,
    "Timing" == 1,
    "Memory" == 3,
    "Realtime" == 0,
    "CPU" == 2,
    "HDD" == 9
    }
  
  ---@enum FrameFormat
  local FrameFormat = {
    "30 fps" == 30,
    "25 fps" == 25,
    "24 fps" == 24,
    "60 fps" == 60,
    "Seconds" == 0
    }
  
  ---@enum PhysicalUnit
  local PhysicalUnit = {
    "Current" == 10,
    "Acceleration" == 17,
    "Area" == 14,
    "Percent" == 1,
    "WaveLength" == 20,
    "Mass" == 3,
    "Volume" == 15,
    "None" == 0,
    "Frequency" == 9,
    "AngularAccc" == 19,
    "Voltage" == 11,
    "Power" == 12,
    "Speed" == 16,
    "Angle" == 7,
    "Time" == 4,
    "Force" == 8,
    "Temperature" == 5,
    "ColorComponent" == 21,
    "Length" == 2,
    "Energy" == 13,
    "LuminousIntensity" == 6,
    "AngularSpeed" == 18
    }
  
  ---@enum FixtureInvert
  local FixtureInvert = {
    "<Blank>" == 0,
    "" == 0,
    "No" == 1,
    "off" == 0,
    "true" == 1,
    "Inverted" == 1,
    "on" == 1,
    "0" == 0,
    "1" == 1,
    "Yes" == 1,
    "false" == 0
    }
  
  ---@enum ColorSample
  local ColorSample = {
    "CES09" == 8,
    "CES94" == 93,
    "CES51" == 50,
    "CES23" == 22,
    "CES35" == 34,
    "CES11" == 10,
    "CES22" == 21,
    "CES21" == 20,
    "CES61" == 60,
    "CES80" == 79,
    "CES85" == 84,
    "CES31" == 30,
    "CES97" == 96,
    "CES79" == 78,
    "CES01" == 0,
    "CES53" == 52,
    "CES60" == 59,
    "CES29" == 28,
    "CES36" == 35,
    "CES76" == 75,
    "CES66" == 65,
    "CES16" == 15,
    "CES26" == 25,
    "CES75" == 74,
    "CES39" == 38,
    "CES83" == 82,
    "CES25" == 24,
    "CES98" == 97,
    "CES30" == 29,
    "CES69" == 68,
    "CES46" == 45,
    "CES95" == 94,
    "CES34" == 33,
    "CES93" == 92,
    "CES92" == 91,
    "CES91" == 90,
    "CES84" == 83,
    "CES06" == 5,
    "CES17" == 16,
    "CES90" == 89,
    "CES87" == 86,
    "CES86" == 85,
    "CES41" == 40,
    "CES73" == 72,
    "CES88" == 87,
    "CES99" == 98,
    "CES08" == 7,
    "CES49" == 48,
    "CES82" == 81,
    "CES24" == 23,
    "CES67" == 66,
    "CES02" == 1,
    "CES81" == 80,
    "CES58" == 57,
    "CES59" == 58,
    "CES64" == 63,
    "CES37" == 36,
    "CES50" == 49,
    "CES77" == 76,
    "CES74" == 73,
    "CES43" == 42,
    "CES57" == 56,
    "CES07" == 6,
    "CES62" == 61,
    "CES15" == 14,
    "CES70" == 69,
    "CES96" == 95,
    "CES40" == 39,
    "CES89" == 88,
    "CES44" == 43,
    "CES54" == 53,
    "CES65" == 64,
    "CES71" == 70,
    "CES38" == 37,
    "CES72" == 71,
    "CES55" == 54,
    "CES42" == 41,
    "CES27" == 26,
    "CES52" == 51,
    "CES78" == 77,
    "CES18" == 17,
    "CES05" == 4,
    "CES63" == 62,
    "CES04" == 3,
    "CES47" == 46,
    "CES20" == 19,
    "CES14" == 13,
    "CES45" == 44,
    "CES33" == 32,
    "CES10" == 9,
    "CES68" == 67,
    "CES13" == 12,
    "CES48" == 47,
    "CES32" == 31,
    "CES12" == 11,
    "CES03" == 2,
    "CES28" == 27,
    "CES56" == 55,
    "CES19" == 18
    }
  
  ---@enum WheelMode
  local WheelMode = {
    "Incremental" == 1,
    "Prop.+" == 2,
    "Additive" == 0,
    "Prop.-" == 3
    }
  
  ---@enum Patched
  local Patched = {
    "" == -1
    }
  
  ---@enum PhaserTransformations
  local PhaserTransformations = {
    "MirrorTimeMiddle" == 2,
    "SquashToOne" == 4,
    "MirrorTimeStart" == 3,
    "MirrorValues" == 1,
    "None" == 0
    }
  
  ---@enum RotationMode
  local RotationMode = {
    "Group" == 1,
    "Single" == 0
    }
  
  ---@enum UseLeftOrRight
  local UseLeftOrRight = {
    "Use Other" == 1,
    "Use My" == 0
    }
  
  ---@enum TCViewMode
  local TCViewMode = {
    "Both" == 2,
    "Timeline" == 1,
    "Text" == 0
    }
  
  ---@enum AssignmentHighlightSoloButtonFunctions
  local AssignmentHighlightSoloButtonFunctions = {
    "" == 0,
    "Flash" == 1,
    "Toggle" == 14,
    "On" == 7,
    "Temp" == 13,
    "Empty" == 0,
    "Off" == 8
    }
  
  ---@enum ColorDisplayMode
  local ColorDisplayMode = {
    "CMY" == 2,
    "RGB" == 1
    }
  
  ---@enum RDMPID
  local RDMPID = {
    "STATUS_ID_DESCRIPTION" == 49,
    "SENSOR_DEFINITION" == 512,
    "REAL_TIME_CLOCK" == 1539,
    "LAMP_STATE" == 1027,
    "IDENTIFY_DEVICE" == 4096,
    "DISC_UN_MUTE" == 3,
    "PARAMETER_DESCRIPTION" == 81,
    "DEVICE_INFO" == 96,
    "COMMS_STATUS" == 21,
    "LAMP_STRIKES" == 1026,
    "PERFORM_SELFTEST" == 4128,
    "DEVICE_HOURS" == 1024,
    "STATUS_MESSAGES" == 48,
    "PRODUCT_DETAIL_ID_LIST" == 112,
    "SOFTWARE_VERSION_LABEL" == 192,
    "DMX_START_ADDRESS" == 240,
    "LANGUAGE_CAPABILITIES" == 160,
    "FACTORY_DEFAULTS" == 144,
    "DEVICE_LABEL" == 130,
    "PAN_INVERT" == 1536,
    "TILT_INVERT" == 1537,
    "SUPPORTED_PARAMETERS" == 80,
    "SUB_DEVICE_STATUS_REPORT_THRESHOLD" == 51,
    "CAPTURE_PRESET" == 4144,
    "PROXIED_DEVICES" == 16,
    "DISC_UNIQUE_BRANCH" == 1,
    "RECORD_SENSORS" == 514,
    "PROXIED_DEVICE_COUNT" == 17,
    "SENSOR_VALUE" == 513,
    "SLOT_INFO" == 288,
    "LANGUAGE" == 176,
    "BOOT_SOFTWARE_VERSION_ID" == 193,
    "SELF_TEST_DESCRIPTION" == 4129,
    "PRESET_PLAYBACK" == 4145,
    "PAN_TILT_SWAP" == 1538,
    "QUEUED_MESSAGE" == 32,
    "None" == 0,
    "POWER_STATE" == 4112,
    "DEFAULT_SLOT_VALUE" == 290,
    "SLOT_DESCRIPTION" == 289,
    "DISPLAY_LEVEL" == 1281,
    "LAMP_ON_MODE" == 1028,
    "BOOT_SOFTWARE_VERSION_LABEL" == 194,
    "DEVICE_POWER_CYCLES" == 1029,
    "DISC_MUTE" == 2,
    "DMX_PERSONALITY_DESCRIPTION" == 225,
    "CLEAR_STATUS_ID" == 50,
    "DMX_PERSONALITY" == 224,
    "DEVICE_MODEL_DESCRIPTION" == 128,
    "MANUFACTURER_LABEL" == 129,
    "LAMP_HOURS" == 1025,
    "DISPLAY_INVERT" == 1280,
    "RESET_DEVICE" == 4097
    }
  
  ---@enum MibPreferenceLevel
  local MibPreferenceLevel = {
    "Bad(25)" == 25,
    "Normal" == 50,
    "Never" == 0,
    "Worst" == 1,
    "Bad" == 25,
    "Worst(1)" == 1,
    "Good" == 75,
    "Never(0)" == 0,
    "Best(100)" == 100,
    "Good(75)" == 75,
    "Normal(50)" == 50,
    "Best" == 100
    }
  
  ---@enum DMXBreak
  local DMXBreak = {
    "Overwrite" == -1
    }
  
  ---@enum TrackEditApplyFor
  local TrackEditApplyFor = {
    "Selected Part(s)" == 0,
    "All Cues/Parts" == 2,
    "All Parts in sel. Cue(s)" == 1
    }
  
  ---@enum PhaserValueFields
  local PhaserValueFields = {
    "Accel" == 3,
    "Decel" == 4,
    "Trans" == 5,
    "Relative" == 2,
    "Absolute" == 1,
    "Width" == 6,
    "Integrated" == 0
    }
  
  ---@enum ConnectionLimitConsole
  local ConnectionLimitConsole = {
    "2" == 2,
    "1" == 1
    }
  
  ---@enum RemoteResolution
  local RemoteResolution = {
    "24bit" == 3,
    "16bit" == 2,
    "8bit" == 1
    }
  
  ---@enum RDMProductDetail
  local RDMProductDetail = {
    "PRODUCT_DETAIL_VIDEO" == 512,
    "PRODUCT_DETAIL_FILM" == 514,
    "PRODUCT_DETAIL_MHR_BALLAST" == 1032,
    "PRODUCT_DETAIL_LN2" == 772,
    "PRODUCT_DETAIL_SINE" == 1026,
    "PRODUCT_DETAIL_RELAY_ELECTRONIC" == 1037,
    "PRODUCT_DETAIL_FOGGER_MINERALOIL" == 769,
    "PRODUCT_DETAIL_LASER" == 8,
    "PRODUCT_DETAIL_CONTACTOR" == 1039,
    "PRODUCT_DETAIL_NOT DECLARED" == 0,
    "PRODUCT_DETAIL_METAL_HALIDE" == 2,
    "PRODUCT_DETAIL_KABUKI_DROP" == 1282,
    "PRODUCT_DETAIL_PROTOCOL_CONVERTOR" == 1793,
    "PRODUCT_DETAIL_DC" == 1028,
    "PRODUCT_DETAIL_RELAY_MECHANICAL" == 1036,
    "PRODUCT_DETAIL_MOTOR_CONTROL" == 1285,
    "Manufacturer Specific" == 32768,
    "PRODUCT_DETAIL_PWM" == 1027,
    "PRODUCT_DETAIL_FLAME_OTHER" == 775,
    "PRODUCT_DETAIL_FOGGER_GLYCOL" == 768,
    "PRODUCT_DETAIL_FLASHTUBE" == 9,
    "PRODUCT_DETAIL_COLORCHANGE" == 258,
    "PRODUCT_DETAIL_DAMPER_CONTROL" == 1286,
    "PRODUCT_DETAIL_SPLITTER" == 1536,
    "PRODUCT_DETAIL_LED" == 4,
    "PRODUCT_DETAIL_WIND" == 779,
    "PRODUCT_DETAIL_OTHER_ROTATOR" == 1281,
    "PRODUCT_DETAIL_LINESET" == 1284,
    "PRODUCT_DETAIL_ELECTROLUMINESCENT" == 7,
    "PRODUCT_DETAIL_PHASE_CONTROL" == 1024,
    "PRODUCT_DETAIL_HFBALLAST" == 1029,
    "PRODUCT_DETAIL_HFHV_NEONBALLAST" == 1030,
    "PRODUCT_DETAIL_ETHERNET_NODE" == 1537,
    "PRODUCT_DETAIL_OTHER" == 32767,
    "PRODUCT_DETAIL_ANALOG_DEMULTIPLEX" == 1794,
    "PRODUCT_DETAIL_FADER" == 2049,
    "PRODUCT_DETAIL_DATAPATCH" == 1539,
    "PRODUCT_DETAIL_EFFECTS_DISC" == 263,
    "PRODUCT_DETAIL_WATER_JET" == 778,
    "PRODUCT_DETAIL_MERGE" == 1538,
    "PRODUCT_DETAIL_BARNDOOR_SHUTTER" == 262,
    "PRODUCT_DETAIL_PROFILE_SHUTTER" == 261,
    "PRODUCT_DETAIL_IRIS_DOUSER" == 259,
    "PRODUCT_DETAIL_COLORSCROLLER" == 256,
    "PRODUCT_DETAIL_BITANGLE_MODULATION" == 1033,
    "PRODUCT_DETAIL_CONFETTI" == 780,
    "PRODUCT_DETAIL_FLAME_PROPANE" == 774,
    "PRODUCT_DETAIL_ROUTER" == 2048,
    "PRODUCT_DETAIL_CHANGEOVER_AUTO" == 2305,
    "PRODUCT_DETAIL_MIRRORBALL_ROTATOR" == 1280,
    "PRODUCT_DETAIL_OLEFACTORY_STIMULATOR" == 776,
    "PRODUCT_DETAIL_INCANDESCENT" == 3,
    "PRODUCT_DETAIL_CURTAIN" == 1283,
    "PRODUCT_DETAIL_MIXER" == 2050,
    "PRODUCT_DETAIL_WIRELESS_LINK" == 1540,
    "PRODUCT_DETAIL_COLDCATHODE" == 6,
    "PRODUCT_DETAIL_TEST" == 2306,
    "PRODUCT_DETAIL_ANALOG_MULTIPLEX" == 1795,
    "PRODUCT_DETAIL_BUBBLE" == 773,
    "PRODUCT_DETAIL_SWITCH_PANEL" == 1796,
    "PRODUCT_DETAIL_FREQUENCY_MODULATION" == 1034,
    "PRODUCT_DETAIL_SWITCH_ELECTRONIC" == 1038,
    "PRODUCT_DETAIL_HFHV_EL" == 1031,
    "PRODUCT_DETAIL_HIGHFREQUENCY_12V" == 1035,
    "PRODUCT_DETAIL_FLUROESCENT" == 5,
    "PRODUCT_DETAIL_GFI_RCD" == 2560,
    "PRODUCT_DETAIL_SNOW" == 777,
    "PRODUCT_DETAIL_SLIDE" == 513,
    "PRODUCT_DETAIL_REVERSE_PHASE_CONTROL" == 1025,
    "PRODUCT_DETAIL_GOBO_ROTATOR" == 264,
    "PRODUCT_DETAIL_ARC" == 1,
    "PRODUCT_DETAIL_DIMMING_SHUTTER" == 260,
    "PRODUCT_DETAIL_CHANGEOVER_MANUAL" == 2304,
    "PRODUCT_DETAIL_FOGGER_WATER" == 770,
    "PRODUCT_DETAIL_HAZARD" == 781,
    "PRODUCT_DETAIL_COLORWHEEL" == 257,
    "PRODUCT_DETAIL_CONTROLLABLE_BREAKER" == 2562,
    "PRODUCT_DETAIL_LCDGATE" == 516,
    "PRODUCT_DETAIL_C02" == 771,
    "PRODUCT_DETAIL_BATTERY" == 2561,
    "PRODUCT_DETAIL_OILWHEEL" == 515
    }
  
  ---@enum PhaserFields
  local PhaserFields = {
    "AbsPreset" == 0,
    "RelPreset" == 1,
    "Phase" == 5,
    "GridPos" == 6,
    "Measure" == 7,
    "Delay" == 3,
    "Speed" == 4,
    "Fade" == 2
    }
  
  ---@enum PresetIsPlayback
  local PresetIsPlayback = {
    "On" == 1,
    "Auto" == 0
    }
  
  ---@enum StoreSource
  local StoreSource = {
    "DMX" == 2,
    "Output" == 1,
    "Programmer" == 0
    }
  
  ---@enum ConnectorType
  local ConnectorType = {
    "CEE_16A_2P" == 55,
    "DVI" == 37,
    "MDIN6" == 11,
    "HDMI" == 38,
    "MDIN5" == 10,
    "Powerlock_660A" == 65,
    "EDAC120" == 29,
    "RJ11" == 16,
    "EDAC90" == 28,
    "HD15" == 22,
    "EDAC56" == 27,
    "NAC3FCA" == 68,
    "CENT36" == 34,
    "HAN_16" == 75,
    "DIN5" == 25,
    "CEE_16A_2P_110" == 56,
    "Powerlock_800A" == 66,
    "DB9" == 17,
    "CEE_32A" == 57,
    "Edison" == 53,
    "KRN" == 3,
    "Powerlock_400A" == 64,
    "STJ" == 4,
    "IEC_60320_C13_14" == 52,
    "DB37" == 20,
    "SCDUP" == 42,
    "CACOM" == 46,
    "SC" == 43,
    "N_CON" == 48,
    "MDIN4" == 9,
    "RCA" == 6,
    "XLR3" == 12,
    "F_CON" == 49,
    "DL96" == 30,
    "CEE_32A_2P" == 58,
    "CEE_32A_2P_110" == 59,
    "CEE_125A" == 61,
    "TL_ST" == 40,
    "BNC" == 0,
    "XLR5" == 14,
    "Camlock" == 67,
    "DB15" == 18,
    "EDAC20" == 26,
    "ST" == 44,
    "USB" == 47,
    "PS2" == 39,
    "Powerlock" == 62,
    "DB25" == 19,
    "Stagepin" == 79,
    "RJ45" == 15,
    "DB50" == 21,
    "DIN3" == 24,
    "L15_30" == 78,
    "HD25" == 23,
    "TBLK" == 1,
    "Socapex_7" == 73,
    "Socapex_9" == 74,
    "TAG" == 2,
    "Socapex_16" == 72,
    "SVIDEO" == 8,
    "XLR4" == 13,
    "HUBBEL_6_4" == 80,
    "SCART" == 7,
    "CEE_7_7" == 51,
    "CENT24" == 35,
    "NL4" == 45,
    "SCSI68" == 31,
    "LCDUP" == 41,
    "L6_20" == 77,
    "DIN56905" == 81,
    "PowerCONTRUE1TOP" == 71,
    "IEE488" == 32,
    "DisplayPort" == 36,
    "CENT50" == 33,
    "Eieland" == 54,
    "Powerlock_120A" == 63,
    "PowerconTRUE1" == 70,
    "CEE_63A" == 60,
    "NAC3FCB" == 69,
    "HAN_4" == 76,
    "IEC_60320_C7_C8" == 50,
    "MSTJ" == 5
    }
  
  ---@enum AssignmentButtonFunctionsSoundFile
  local AssignmentButtonFunctionsSoundFile = {
    "" == 0,
    "Go+" == 3,
    "Toggle" == 14,
    "On" == 7,
    "Pause" == 18,
    "Empty" == 0,
    "Off" == 8
    }
  
  ---@enum DriveType
  local DriveType = {
    "RemoteDrive" == 4,
    "OldVersion" == 3,
    "Internal" == 1,
    "Removeable" == 2,
    "Invalid" == 0
    }
  
  ---@enum RDMSensorUnitPrefix
  local RDMSensorUnitPrefix = {
    "PREFIX_GIGA" == 21,
    "PREFIX_MICRO" == 4,
    "PREFIX_PETA" == 23,
    "PREFIX_ZEPTO" == 9,
    "PREFIX_MEGA" == 20,
    "PREFIX_NANO" == 5,
    "PREFIX_YOTTA" == 26,
    "PREFIX_CENTI" == 2,
    "PREFIX_EXA" == 24,
    "PREFIX_DECI" == 1,
    "PREFIX_ZETTA" == 25,
    "PREFIX_MILLI" == 3,
    "PREFIX_YOCTO" == 10,
    "PREFIX_TERRA" == 22,
    "PREFIX_HECTO" == 18,
    "PREFIX_PICO" == 6,
    "PREFIX_KILO" == 19,
    "PREFIX_FEMPTO" == 7,
    "PREFIX_ATTO" == 8,
    "PREFIX_NONE" == 0,
    "PREFIX_DECA" == 17
    }
  
  ---@enum PresetModeDefault
  local PresetModeDefault = {
    "Universal" == 3,
    "Global" == 2,
    "Auto" == 0,
    "Selective" == 1,
    "ForceGlobal" == 5
    }
  
  ---@enum ClockSources
  local ClockSources = {
    "Timecode" == 1,
    "Time Zone Clock" == 2,
    "Session Time" == 0,
    "Timer" == 3
    }
  
  ---@enum IgnoreFT
  local IgnoreFT = {
    "Follow FT" == 4294967295,
    "" == 4294967295,
    "Ignore FT" == 4294967294
    }
  
  ---@enum LayoutOutputSelection
  local LayoutOutputSelection = {
    "DMX" == 1,
    "Output" == 2,
    "Value" == 0
    }
  
  ---@enum BodyQuality3dPatch
  local BodyQuality3dPatch = {
    "Box" == 1,
    "Standard" == 4,
    "Ultra" == 6
    }
  
  ---@enum ECRec
  local ECRec = {
    "false" == 0,
    "" == 1,
    "true" == 1,
    "on" == 1,
    "0" == 0,
    "1" == 1,
    "No" == 0,
    "off" == 0
    }
  
  ---@enum LayoutSizePolicy
  local LayoutSizePolicy = {
    "Content" == 2,
    "Fixed" == 0,
    "Stretch" == 1
    }
  
  ---@enum GridColumnFilterCollect
  local GridColumnFilterCollect = {
    "Condensed" == 1,
    "Full" == 0
    }
  
  ---@enum PhaserMode1D
  local PhaserMode1D = {
    "Value" == 0,
    "Transition" == 1
    }
  
  ---@enum PlaybacksOff
  local PlaybacksOff = {
    "Keep Playbacks" == 0,
    "Playbacks Off" == 1
    }
  
  ---@enum AssignmentFaderFunctions
  local AssignmentFaderFunctions = {
    "" == 0,
    "X" == 33,
    "Speed" == 38,
    "Rate" == 37,
    "Time" == 42,
    "Empty" == 0,
    "Master" == 32,
    "XA" == 34,
    "XB" == 35,
    "Temp" == 36
    }
  
  ---@enum LoopMode
  local LoopMode = {
    "Pause" == 1,
    "Loop" == 0,
    "Off" == 2
    }
  
  ---@enum ResolutionLimit
  local ResolutionLimit = {
    "Unlimited" == 0,
    "480p" == 1,
    "1080p" == 3,
    "720p" == 2
    }
  
  ---@enum DmxCurveModes
  local DmxCurveModes = {
    "Custom" == 2,
    "Switch" == 1,
    "MinMax" == 0
    }
  
  ---@enum DimmerWheelResolution
  local DimmerWheelResolution = {
    "Coarse" == 1,
    "Fine" == 2,
    "Normal" == 0
    }
  
  ---@enum FixtureTypeXYZStatus
  local FixtureTypeXYZStatus = {
    "No" == 0,
    "Yes" == 2,
    "Partial" == 1
    }
  
  ---@enum AssignmentGrandMasterButtonFunctions
  local AssignmentGrandMasterButtonFunctions = {
    "Black" == 2,
    "" == 0,
    "Empty" == 0,
    "Flash" == 1
    }
  
  ---@enum EncoderType
  local EncoderType = {
    "Inside1" == 5,
    "WheelMaster" == 0,
    "Outside3" == 10,
    "Outside1" == 6,
    "PanTrackpad" == 3,
    "Outside2" == 8,
    "TiltTrackpad" == 4,
    "ColorPicker" == 1,
    "PanTiltFollow" == 2,
    "Outside5" == 14,
    "Outside4" == 12,
    "Inside5" == 13,
    "Executor" == 16,
    "Inside4" == 11,
    "Inside3" == 9,
    "Inside2" == 7
    }
  
  ---@enum ColumnOrder
  local ColumnOrder = {
    "Left Right" == 0,
    "Right Left" == 1
    }
  
  ---@enum AssignmentButtonFunctionsUser
  local AssignmentButtonFunctionsUser = {
    "LogIn" == 70,
    "" == 0,
    "Empty" == 0
    }
  
  ---@enum GridSortOrder
  local GridSortOrder = {
    "Desc" == 2,
    "Asc" == 1,
    "None" == 0
    }
  
  ---@enum BeamMode
  local BeamMode = {
    "Line" == 1,
    "Standard" == 2,
    "High Fancy" == 4,
    "High" == 3,
    "No Beam" == 0
    }
  
  ---@enum ScrollParamEntity
  local ScrollParamEntity = {
    "Item" == 0,
    "Area" == 1
    }
  
  ---@enum CalculatorMode
  local CalculatorMode = {
    "Dec16" == 10,
    "Hex24" == 14,
    "JointTime" == 16,
    "Percent" == 15,
    "Dec24" == 11,
    "Seconds" == 5,
    "fps24" == 17,
    "fps30" == 19,
    "Hex16" == 13,
    "fps25" == 18,
    "Hex8" == 12,
    "SpeedHz" == 6,
    "fps60" == 20,
    "Dec8" == 9,
    "SpeedSec" == 8,
    "Hex" == 2,
    "SpeedBPM" == 7,
    "Decimal" == 1,
    "Double" == 0
    }
  
  ---@enum PhaserBars
  local PhaserBars = {
    "PhaserBar" == 1,
    "2DBar" == 0,
    "PresetBar" == 2
    }
  
  ---@enum Index
  local Index = {
    "Illegal" == -1
    }
  
  ---@enum AxisGroupType
  local AxisGroupType = {
    "XZ" == 1,
    "YZ" == 2,
    "XY" == 0
    }
  
  ---@enum TCTextMode
  local TCTextMode = {
    "Tracks" == 1,
    "Selected" == 2,
    "All" == 0,
    "Markers" == 3
    }
  
  ---@enum FalloffType
  local FalloffType = {
    "Linear" == 1,
    "None" == 0,
    "Correct" == 2
    }
  
  ---@enum StoremodeRadio
  local StoremodeRadio = {
    "Ask" == -1,
    "Remove" == 3,
    "Release" == 4,
    "Merge" == 2,
    "Overwrite" == 1
    }
  
  ---@enum SpecialCycle
  local SpecialCycle = {
    "If" == 3,
    "Time" == 1,
    "None" == 0,
    "Channel" == 2
    }
  
  ---@enum MibEnableMode
  local MibEnableMode = {
    "Force Early" == 2,
    "Force Late" == 4,
    "Enabled" == 0,
    "Never" == 1,
    "Force UponGo" == 3
    }
  
  ---@enum CueCopySrc
  local CueCopySrc = {
    "Content" == 0,
    "Status" == 1,
    "Look" == 2
    }
  
  ---@enum ConnectionLimitOnPC
  local ConnectionLimitOnPC = {
    "4" == 4,
    "5" == 5,
    "1" == 1,
    "2" == 2,
    "3" == 3
    }
  
  ---@enum MatricksTabs
  local MatricksTabs = {
    "X" == 0,
    "Shuffle" == 3,
    "Z" == 2,
    "Y" == 1
    }
  
  ---@enum YesNo
  local YesNo = {
    "false" == 0,
    "true" == 1,
    "on" == 1,
    "Yes" == 1,
    "0" == 0,
    "1" == 1,
    "No" == 0,
    "off" == 0
    }
  
  ---@enum AssignmentButtonFunctionsView
  local AssignmentButtonFunctionsView = {
    "" == 0,
    "Empty" == 0,
    "Go+" == 3
    }
  
  ---@enum OffCueTrigger
  local OffCueTrigger = {
    "" == 5,
    "No Trigger" == 5,
    "Time" == 1,
    "Follow" == 2,
    "Go" == 0,
    "BPM" == 4,
    "Sound" == 3
    }
  
  ---@enum EmptyAsZeroFID
  local EmptyAsZeroFID = {
    "None" == 0,
    "" == 0
    }
  
  ---@enum PlaybackSourceSubTypes
  local PlaybackSourceSubTypes = {
    "MIB" == 5,
    "" == 0,
    "MIBFade" == 6,
    "UpGoing" == 3,
    "Blocked" == 2,
    "Tracked" == 1,
    "DownGoing" == 4
    }
  
  ---@enum ActiveDisplay
  local ActiveDisplay = {
    "Wave" == 0,
    "Sound" == 1,
    "Beat" == 2
    }
  
  ---@enum PrettyRDMSensorUnit
  local PrettyRDMSensorUnit = {
    "lx" == 26,
    "A (DC)" == 5,
    "Hz" == 8,
    "m/(s²)" == 17,
    "°C" == 1,
    "A (AC RMS)" == 7,
    "°" == 22,
    "kg/(m²)" == 15,
    "m²" == 13,
    "W" == 10,
    "cd" == 24,
    "m³" == 14,
    "V (DC)" == 2,
    "sr" == 23,
    "UNITS_MS" == 128,
    "" == 0,
    "m/s" == 16,
    "V (AC P-P)" == 3,
    "Ω" == 9,
    "lm" == 25,
    "J" == 19,
    "kg" == 11,
    "V (AC RMS)" == 4,
    "m" == 12,
    "N" == 18,
    "IRE" == 27,
    "A (AC P-P)" == 6,
    "B" == 28,
    "P" == 20,
    "s" == 21
    }
  
  ---@enum SheetMode
  local SheetMode = {
    "Fixture" == 0,
    "Channel" == 1
    }
  
  ---@enum AssignmentTimerFunctions
  local AssignmentTimerFunctions = {
    "" == 0,
    "Go+" == 3,
    "Empty" == 0,
    "Pause" == 18,
    "Toggle" == 14,
    "Top" == 15,
    "Off" == 8
    }
  
  ---@enum PhaseValueNone
  local PhaseValueNone = {
    "90°" == 4194304,
    "180°" == 8388608,
    "360°" == 16777216,
    "270°" == 12582912,
    "None" == 2147483647
    }
  
  ---@enum ColorEncoderFunction
  local ColorEncoderFunction = {
    "HSB" == 1,
    "RGB" == 2,
    "CIE" == 4,
    "Auto" == 0,
    "CMY" == 3
    }
  
  ---@enum TCDuration
  local TCDuration = {
    "To End" == 0
    }
  
  ---@enum TimeDefault
  local TimeDefault = {
    "Default" == 9223372036854775807
    }
  
  ---@enum MasterPriority
  local MasterPriority = {
    "Low" == 2,
    "VeryLow" == 1,
    "Normal" == 3,
    "High" == 4,
    "Never" == 0
    }
  
  ---@enum AlignmentV
  local AlignmentV = {
    "Bottom" == 2,
    "Center" == 0,
    "Top" == 1
    }
  
  ---@enum BuildType
  local BuildType = {
    "Debug" == 1,
    "Asan" == 2,
    "Release" == 0
    }
  
  ---@enum GridTool
  local GridTool = {
    "Compress" == 5,
    "Rotate" == 2,
    "Linearize" == 0,
    "Transpose" == 1,
    "Flip" == 3,
    "Align" == 4
    }
  
  ---@enum CuePartTextures
  local CuePartTextures = {
    "IconCooking" == 0
    }
  
  ---@enum ScrollParamValueType
  local ScrollParamValueType = {
    "Relative" == 0,
    "Absolute" == 1
    }
  
  ---@enum EmptyAsZero
  local EmptyAsZero = {
    "" == 0
    }
  
  ---@enum AssignmentButtonFunctionsSequence
  local AssignmentButtonFunctionsSequence = {
    "HalfSpeed" == 26,
    "Toggle" == 14,
    "Go+" == 3,
    "Pause" == 18,
    "SelectFixtures" == 116,
    "Top" == 15,
    "Off" == 8,
    "Rate1" == 11,
    "Load" == 17,
    ">>>" == 5,
    "Kill" == 29,
    "Speed1" == 12,
    "" == 0,
    "On" == 7,
    "LearnSpeed" == 10,
    "Temp" == 13,
    "Swap" == 25,
    "Go-" == 4,
    "<<<" == 6,
    "Flash" == 1,
    "Select" == 24,
    "DoubleSpeed" == 27,
    "Goto" == 16,
    "Empty" == 0,
    "Black" == 2
    }
  
  ---@enum TimecodeSelectLastEventMode
  local TimecodeSelectLastEventMode = {
    "Track" == 1,
    "All" == 2,
    "Off" == 0
    }
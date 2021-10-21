/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 47B8A18F
/// @DnDArgument : "expr" "60"
/// @DnDArgument : "var" "spawn_rate"
spawn_rate = 60;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 6EA96408
/// @DnDArgument : "steps" "spawn_rate"
alarm_set(0, spawn_rate);
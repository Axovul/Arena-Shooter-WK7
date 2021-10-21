/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 3B4C624B
/// @DnDArgument : "var" "xx"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "max" "room_width"
var xx = (random_range(0, room_width));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 6448714F
/// @DnDArgument : "var" "yy"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "max" "room_height"
var yy = (random_range(0, room_height));

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 68883DC5
/// @DnDArgument : "xpos" "xx"
/// @DnDArgument : "ypos" "yy"
/// @DnDArgument : "objectid" "oEnemyspawn"
/// @DnDArgument : "layer" ""EnemyLayer""
/// @DnDSaveInfo : "objectid" "oEnemyspawn"
instance_create_layer(xx, yy, "EnemyLayer", oEnemyspawn);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 0C1374CE
/// @DnDArgument : "steps" "spawn_rate"
alarm_set(0, spawn_rate);
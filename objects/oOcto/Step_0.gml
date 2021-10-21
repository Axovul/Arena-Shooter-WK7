/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 6494F775
/// @DnDArgument : "obj" "oFalcon"
/// @DnDSaveInfo : "obj" "oFalcon"
var l6494F775_0 = false;
l6494F775_0 = instance_exists(oFalcon);
if(l6494F775_0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
	/// @DnDVersion : 1
	/// @DnDHash : 42468E65
	/// @DnDParent : 6494F775
	/// @DnDArgument : "x" "oFalcon.x"
	/// @DnDArgument : "y" "oFalcon.y"
	direction = point_direction(x, y, oFalcon.x, oFalcon.y);

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 300326EC
	/// @DnDParent : 6494F775
	/// @DnDArgument : "speed" "spd"
	speed = spd;
}

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 251FD8A5
/// @DnDArgument : "angle" "direction"
image_angle = direction;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 72D21674
/// @DnDArgument : "var" "hp"
/// @DnDArgument : "op" "3"
if(hp <= 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 18CBF019
	/// @DnDApplyTo : {oScore}
	/// @DnDParent : 72D21674
	/// @DnDArgument : "expr" "5"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "thescore"
	with(oScore) {
	thescore += 5;
	
	}

	/// @DnDAction : YoYo Games.Audio.Audio_Set_Pitch
	/// @DnDVersion : 1
	/// @DnDHash : 7160B8A8
	/// @DnDParent : 72D21674
	/// @DnDArgument : "sound" "sDeath"
	/// @DnDArgument : "pitch" "random_range(0.8, 1.2)"
	/// @DnDSaveInfo : "sound" "sDeath"
	audio_sound_pitch(sDeath, random_range(0.8, 1.2));

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 719340AC
	/// @DnDParent : 72D21674
	/// @DnDArgument : "soundid" "sDeath"
	/// @DnDSaveInfo : "soundid" "sDeath"
	audio_play_sound(sDeath, 0, 0);

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 2FE7A869
	/// @DnDParent : 72D21674
	instance_destroy();
}
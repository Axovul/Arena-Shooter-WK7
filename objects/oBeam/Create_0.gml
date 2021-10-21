/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 409634A2
/// @DnDArgument : "key" "ord("Q")"
var l409634A2_0;
l409634A2_0 = keyboard_check(ord("Q"));
if (l409634A2_0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
	/// @DnDVersion : 1
	/// @DnDHash : 2940D156
	/// @DnDParent : 409634A2
	/// @DnDArgument : "x" "mouse_x"
	/// @DnDArgument : "y" "mouse_y"
	direction = point_direction(x, y, mouse_x, mouse_y);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 66CB91E3
	/// @DnDParent : 409634A2
	/// @DnDArgument : "expr" "random_range(-4,4)"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "direction"
	direction += random_range(-4,4);

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 13227B12
	/// @DnDParent : 409634A2
	speed = 0;

	/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
	/// @DnDVersion : 1
	/// @DnDHash : 0D56CFD1
	/// @DnDParent : 409634A2
	/// @DnDArgument : "angle" "direction"
	image_angle = direction;
}
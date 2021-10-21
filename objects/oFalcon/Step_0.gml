/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 59CEDA27
/// @DnDArgument : "key" "ord("D")"
var l59CEDA27_0;
l59CEDA27_0 = keyboard_check(ord("D"));
if (l59CEDA27_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 76BC84E2
	/// @DnDParent : 59CEDA27
	/// @DnDArgument : "expr" "4"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "x"
	x += 4;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 31F2B23A
/// @DnDArgument : "key" "ord("A")"
var l31F2B23A_0;
l31F2B23A_0 = keyboard_check(ord("A"));
if (l31F2B23A_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 35F31E39
	/// @DnDParent : 31F2B23A
	/// @DnDArgument : "expr" "-4"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "x"
	x += -4;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 0D6F32AA
/// @DnDArgument : "key" "ord("W")"
var l0D6F32AA_0;
l0D6F32AA_0 = keyboard_check(ord("W"));
if (l0D6F32AA_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 271C5026
	/// @DnDParent : 0D6F32AA
	/// @DnDArgument : "expr" "-4"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "y"
	y += -4;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 3822C4CF
/// @DnDArgument : "key" "ord("S")"
var l3822C4CF_0;
l3822C4CF_0 = keyboard_check(ord("S"));
if (l3822C4CF_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7BA5937D
	/// @DnDParent : 3822C4CF
	/// @DnDArgument : "expr" "4"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "y"
	y += 4;
}

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 3CC4040F
/// @DnDArgument : "var" "dir"
/// @DnDArgument : "value" "point_direction(x,y,mouse_x,mouse_y)"
var dir = point_direction(x,y,mouse_x,mouse_y);

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 5FB354F3
/// @DnDArgument : "angle" "dir"
image_angle = dir;

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Down
/// @DnDVersion : 1.1
/// @DnDHash : 3090D6FD
var l3090D6FD_0;
l3090D6FD_0 = mouse_check_button(mb_left);
if (l3090D6FD_0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 54570606
	/// @DnDParent : 3090D6FD
	/// @DnDArgument : "var" "cooldown"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "1"
	if(cooldown < 1)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 5927F1D3
		/// @DnDParent : 54570606
		/// @DnDArgument : "xpos" "x"
		/// @DnDArgument : "ypos" "y"
		/// @DnDArgument : "objectid" "oBullet"
		/// @DnDArgument : "layer" ""BulletLayer""
		/// @DnDSaveInfo : "objectid" "oBullet"
		instance_create_layer(x, y, "BulletLayer", oBullet);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3A36D7C8
		/// @DnDParent : 54570606
		/// @DnDArgument : "expr" "6"
		/// @DnDArgument : "var" "cooldown"
		cooldown = 6;
	}
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 45E24EC1
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "cooldown"
cooldown += -1;

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
/// @DnDVersion : 1
/// @DnDHash : 175F2F52
/// @DnDArgument : "key" "ord("Q")"
var l175F2F52_0;
l175F2F52_0 = keyboard_check_pressed(ord("Q"));
if (l175F2F52_0)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 590E2D77
	/// @DnDParent : 175F2F52
	/// @DnDArgument : "xpos" "x"
	/// @DnDArgument : "ypos" "y"
	/// @DnDArgument : "objectid" "oBeam"
	/// @DnDArgument : "layer" ""BulletLayer""
	/// @DnDSaveInfo : "objectid" "oBeam"
	instance_create_layer(x, y, "BulletLayer", oBeam);
}
/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4BA0C30F
/// @DnDApplyTo : other
/// @DnDArgument : "var" "isHit"
/// @DnDArgument : "value" "false"
with(other) var l4BA0C30F_0 = isHit == false;
if(l4BA0C30F_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2F72342E
	/// @DnDParent : 4BA0C30F
	/// @DnDArgument : "expr" "-damage"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "other.hp"
	other.hp += -damage;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1ECF9A80
	/// @DnDApplyTo : other
	/// @DnDParent : 4BA0C30F
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "isHit"
	with(other) {
	isHit = true;
	
	}

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 13D20E7F
	/// @DnDApplyTo : other
	/// @DnDParent : 4BA0C30F
	/// @DnDArgument : "steps" "20"
	/// @DnDArgument : "alarm" "1"
	with(other) {
	alarm_set(1, 20);
	
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7BBF4FF0
	/// @DnDApplyTo : other
	/// @DnDParent : 4BA0C30F
	/// @DnDArgument : "expr" "-image_xscale"
	/// @DnDArgument : "var" "image_xscale"
	with(other) {
	image_xscale = -image_xscale;
	
	}

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 5ADE0836
	/// @DnDApplyTo : other
	/// @DnDParent : 4BA0C30F
	/// @DnDArgument : "speed" "obj_Attack.image_xscale * 6"
	/// @DnDArgument : "type" "1"
	with(other) hspeed = obj_Attack.image_xscale * 6;
}
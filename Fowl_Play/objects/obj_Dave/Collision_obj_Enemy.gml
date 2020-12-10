/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 13D2B741
/// @DnDArgument : "var" "vsp"
/// @DnDArgument : "op" "2"
if(vsp > 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 304ED569
	/// @DnDParent : 13D2B741
	/// @DnDArgument : "expr" "-17"
	/// @DnDArgument : "var" "vsp"
	vsp = -17;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 010D4F96
	/// @DnDParent : 13D2B741
	/// @DnDArgument : "expr" "jumpsmax"
	/// @DnDArgument : "var" "jumps"
	jumps = jumpsmax;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 18C98DFB
else
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 68B98056
	/// @DnDParent : 18C98DFB
	/// @DnDArgument : "expr" "isHit"
	/// @DnDArgument : "not" "1"
	if(!(isHit))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0EE2A9C6
		/// @DnDParent : 68B98056
		/// @DnDArgument : "expr" "-other.damage"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "health"
		health += -other.damage;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3035AB00
		/// @DnDParent : 68B98056
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "isHit"
		isHit = true;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 56481CD4
		/// @DnDParent : 68B98056
		/// @DnDArgument : "expr" "-image_xscale * 4"
		/// @DnDArgument : "var" "hsp"
		hsp = -image_xscale * 4;
	
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 44DD5F00
		/// @DnDParent : 68B98056
		/// @DnDArgument : "steps" "15"
		alarm_set(0, 15);
	}
}
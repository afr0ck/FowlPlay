/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 09BE48BF
/// @DnDArgument : "expr" "obj_Dave.image_xscale"
/// @DnDArgument : "var" "image_xscale"
image_xscale = obj_Dave.image_xscale;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4F15476A
/// @DnDArgument : "expr" "obj_Dave.x + 64 * obj_Dave.image_xscale"
/// @DnDArgument : "var" "x"
x = obj_Dave.x + 64 * obj_Dave.image_xscale;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3D629653
/// @DnDApplyTo : {obj_Dave}
/// @DnDArgument : "expr" "true"
/// @DnDArgument : "var" "isAttacking"
with(obj_Dave) {
isAttacking = true;

}

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 51D6F9E7
/// @DnDArgument : "steps" "15"
alarm_set(0, 15);
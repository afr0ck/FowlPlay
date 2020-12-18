/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 4EC72468
/// @DnDArgument : "steps" "15"
alarm_set(0, 15);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 072A8726
/// @DnDApplyTo : {obj_Dave}
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "var" "isAttacking"
with(obj_Dave) {
isAttacking = false;

}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 3A61DF4B
instance_destroy();
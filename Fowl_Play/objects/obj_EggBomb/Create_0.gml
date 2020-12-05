/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 11023852
/// @DnDArgument : "obj" "obj_Dave"
/// @DnDSaveInfo : "obj" "obj_Dave"
var l11023852_0 = false;
l11023852_0 = instance_exists(obj_Dave);
if(l11023852_0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
	/// @DnDVersion : 1
	/// @DnDHash : 07177801
	/// @DnDParent : 11023852
	/// @DnDArgument : "x" "obj_Dave.x"
	/// @DnDArgument : "y" "obj_Dave.y"
	direction = point_direction(x, y, obj_Dave.x, obj_Dave.y);

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 4A448C1E
	/// @DnDParent : 11023852
	/// @DnDArgument : "speed" "6"
	speed = 6;
}
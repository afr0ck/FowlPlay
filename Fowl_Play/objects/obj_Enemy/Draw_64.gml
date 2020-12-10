/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 69FAF52A
/// @DnDInput : 2
/// @DnDArgument : "expr" "camera_get_view_y(view_camera[0])"
/// @DnDArgument : "expr_1" "camera_get_view_x(view_camera[0])"
/// @DnDArgument : "var" "camOffSetY"
/// @DnDArgument : "var_1" "camOffSetX"
camOffSetY = camera_get_view_y(view_camera[0]);
camOffSetX = camera_get_view_x(view_camera[0]);

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 6DBE7B7A
/// @DnDArgument : "expr" "isHit"
if(isHit)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5F8FC0B7
	/// @DnDParent : 6DBE7B7A
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "drawHealth"
	drawHealth = true;

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 1E8C0314
	/// @DnDParent : 6DBE7B7A
	/// @DnDArgument : "steps" "60"
	alarm_set(0, 60);

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 040A3635
	/// @DnDParent : 6DBE7B7A
	/// @DnDArgument : "expr" "drawHealth"
	if(drawHealth)
	{
		/// @DnDAction : YoYo Games.Drawing.Draw_Healthbar
		/// @DnDVersion : 1
		/// @DnDHash : 5AE8FED1
		/// @DnDParent : 040A3635
		/// @DnDArgument : "x1" "-40 - camOffSetX"
		/// @DnDArgument : "x1_relative" "1"
		/// @DnDArgument : "y1" "-60 - camOffSetY"
		/// @DnDArgument : "y1_relative" "1"
		/// @DnDArgument : "x2" "45 - camOffSetX"
		/// @DnDArgument : "x2_relative" "1"
		/// @DnDArgument : "y2" "-70 - camOffSetY"
		/// @DnDArgument : "y2_relative" "1"
		/// @DnDArgument : "value" "hp"
		/// @DnDArgument : "backcol" "$FF000000"
		/// @DnDArgument : "barcol" "$FF000000"
		/// @DnDArgument : "mincol" "$FF0000FF"
		/// @DnDArgument : "maxcol" "$FF00FF00"
		draw_healthbar(x + -40 - camOffSetX, y + -60 - camOffSetY, x + 45 - camOffSetX, y + -70 - camOffSetY, hp, $FF000000 & $FFFFFF, $FF0000FF & $FFFFFF, $FF00FF00 & $FFFFFF, 0, (($FF000000>>24) != 0), (($FF000000>>24) != 0));
	}
}
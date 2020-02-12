/// @DnDAction : YoYo Games.Random.Choose
/// @DnDVersion : 1
/// @DnDHash : 6547DE68
/// @DnDInput : 2
/// @DnDArgument : "var" "choice"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "option_1" "1"
var choice = choose(0, 1);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3CF783E4
/// @DnDArgument : "var" "choice"
if(choice == 0)
{
	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 1C28979A
	/// @DnDParent : 3CF783E4
	/// @DnDArgument : "var" "xx"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "max" "500"
	xx = floor(random_range(0, 500 + 1));

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 500CF280
	/// @DnDParent : 3CF783E4
	/// @DnDArgument : "xpos" "xx"
	/// @DnDArgument : "objectid" "obj_large"
	/// @DnDSaveInfo : "objectid" "f31a86df-3c50-4ac4-a870-daaf539c71a1"
	instance_create_layer(xx, 0, "Instances", obj_large);
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 31B1467B
else
{

}

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 01FAAA4B
/// @DnDArgument : "var" "yy"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "max" "500"
yy = floor(random_range(0, 500 + 1));

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 59902EC3
/// @DnDArgument : "ypos" "yy"
/// @DnDArgument : "objectid" "obj_large"
/// @DnDSaveInfo : "objectid" "f31a86df-3c50-4ac4-a870-daaf539c71a1"
instance_create_layer(0, yy, "Instances", obj_large);
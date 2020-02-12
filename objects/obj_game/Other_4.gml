/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 14A1458B
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "rm_game"
if(room == rm_game)
{
	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 62CFEFFC
	/// @DnDParent : 14A1458B
	/// @DnDArgument : "steps" "120"
	alarm_set(0, 120);

	/// @DnDAction : YoYo Games.Loops.Repeat
	/// @DnDVersion : 1
	/// @DnDHash : 6552FF6C
	/// @DnDParent : 14A1458B
	/// @DnDArgument : "times" "6"
	repeat(6)
	{
		/// @DnDAction : YoYo Games.Random.Choose
		/// @DnDVersion : 1
		/// @DnDHash : 6AEA346C
		/// @DnDInput : 2
		/// @DnDParent : 6552FF6C
		/// @DnDArgument : "var" "choice"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "option_1" "1"
		var choice = choose(0, 1);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5E428FC0
		/// @DnDParent : 6552FF6C
		/// @DnDArgument : "var" "choice"
		if(choice == 0)
		{
			/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 682E732D
			/// @DnDParent : 5E428FC0
			/// @DnDArgument : "var" "xx"
			/// @DnDArgument : "type" "1"
			/// @DnDArgument : "max" "room_width*0.3"
			xx = floor(random_range(0, room_width*0.3 + 1));
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 287A9381
		/// @DnDParent : 6552FF6C
		else
		{
		
		}
	
		/// @DnDAction : YoYo Games.Random.Get_Random_Number
		/// @DnDVersion : 1
		/// @DnDHash : 05FA473F
		/// @DnDParent : 6552FF6C
		/// @DnDArgument : "var" "xx"
		/// @DnDArgument : "type" "1"
		/// @DnDArgument : "min" "room_width*0.7"
		/// @DnDArgument : "max" "room_width"
		xx = floor(random_range(room_width*0.7, room_width + 1));
	
		/// @DnDAction : YoYo Games.Random.Choose
		/// @DnDVersion : 1
		/// @DnDHash : 1078917A
		/// @DnDInput : 2
		/// @DnDParent : 6552FF6C
		/// @DnDArgument : "var" "choice"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "option_1" "1"
		var choice = choose(0, 1);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 10FD35C5
		/// @DnDParent : 6552FF6C
		/// @DnDArgument : "var" "choice"
		if(choice == 0)
		{
			/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 308B7939
			/// @DnDParent : 10FD35C5
			/// @DnDArgument : "var" "yy"
			/// @DnDArgument : "type" "1"
			/// @DnDArgument : "max" "room_height*0.3"
			yy = floor(random_range(0, room_height*0.3 + 1));
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 51250494
		/// @DnDParent : 6552FF6C
		else
		{
		
		}
	
		/// @DnDAction : YoYo Games.Random.Get_Random_Number
		/// @DnDVersion : 1
		/// @DnDHash : 6C131E3E
		/// @DnDParent : 6552FF6C
		/// @DnDArgument : "var" "yy"
		/// @DnDArgument : "type" "1"
		/// @DnDArgument : "min" "room_height*0.7"
		/// @DnDArgument : "max" "room_height"
		yy = floor(random_range(room_height*0.7, room_height + 1));
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 6ABF0EFC
		/// @DnDParent : 6552FF6C
		/// @DnDArgument : "xpos" "xx"
		/// @DnDArgument : "ypos" "yy"
		/// @DnDArgument : "objectid" "obj_large"
		/// @DnDSaveInfo : "objectid" "f31a86df-3c50-4ac4-a870-daaf539c71a1"
		instance_create_layer(xx, yy, "Instances", obj_large);
	}
}
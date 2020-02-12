/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 4B7A934D
/// @DnDApplyTo : abb4599c-47ef-4505-9101-17b3d917b4b7
with(obj_game) {
	/// @DnDAction : YoYo Games.Instance Variables.Set_Score
	/// @DnDVersion : 1
	/// @DnDHash : 12EDD435
	/// @DnDParent : 4B7A934D
	/// @DnDArgument : "score" "10"
	/// @DnDArgument : "score_relative" "1"
	if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
	__dnd_score += real(10);
}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 64980548
instance_destroy();

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 2483DD3F
/// @DnDArgument : "soundid" "snd_fart"
/// @DnDSaveInfo : "soundid" "0b245944-3791-4821-b5f2-d43e2d137a74"
audio_play_sound(snd_fart, 0, 0);

/// @DnDAction : YoYo Games.Loops.Repeat
/// @DnDVersion : 1
/// @DnDHash : 55891C5E
/// @DnDArgument : "times" "20"
repeat(20)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 2AC8E45E
	/// @DnDParent : 55891C5E
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_debris"
	/// @DnDSaveInfo : "objectid" "41b715aa-85f6-4d56-8e49-c946b5b9f440"
	instance_create_layer(x + 0, y + 0, "Instances", obj_debris);
}

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 4FD806FE
/// @DnDApplyTo : other
with(other) {
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 6D7124E8
	/// @DnDParent : 4FD806FE
	instance_destroy();

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6AEB048D
	/// @DnDParent : 4FD806FE
	/// @DnDArgument : "var" "sprite_index"
	/// @DnDArgument : "value" "spri_large"
	if(sprite_index == spri_large)
	{
		/// @DnDAction : YoYo Games.Loops.Repeat
		/// @DnDVersion : 1
		/// @DnDHash : 5E5CBBF4
		/// @DnDParent : 6AEB048D
		/// @DnDArgument : "times" "2"
		repeat(2)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 240AC33A
			/// @DnDParent : 5E5CBBF4
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "var" "newasteroid"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "objectid" "obj_large"
			/// @DnDSaveInfo : "objectid" "f31a86df-3c50-4ac4-a870-daaf539c71a1"
			var newasteroid = instance_create_layer(x + 0, y + 0, "Instances", obj_large);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 74DE5C49
			/// @DnDParent : 5E5CBBF4
			/// @DnDArgument : "expr" "spri_med"
			/// @DnDArgument : "var" "newasteroid.sprite_index"
			newasteroid.sprite_index = spri_med;
		}
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 41045D47
	/// @DnDParent : 4FD806FE
	/// @DnDArgument : "var" "sprite_index"
	/// @DnDArgument : "value" "spri_med"
	if(sprite_index == spri_med)
	{
		/// @DnDAction : YoYo Games.Loops.Repeat
		/// @DnDVersion : 1
		/// @DnDHash : 4869D154
		/// @DnDParent : 41045D47
		/// @DnDArgument : "times" "2"
		repeat(2)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 12F48E84
			/// @DnDParent : 4869D154
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "var" "newasteroid2"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "objectid" "obj_large"
			/// @DnDSaveInfo : "objectid" "f31a86df-3c50-4ac4-a870-daaf539c71a1"
			var newasteroid2 = instance_create_layer(x + 0, y + 0, "Instances", obj_large);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 01C810FF
			/// @DnDParent : 4869D154
			/// @DnDArgument : "expr" "spri_small"
			/// @DnDArgument : "var" "newasteroid2.sprite_index"
			newasteroid2.sprite_index = spri_small;
		}
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6AB2A0D1
	/// @DnDParent : 4FD806FE
	/// @DnDArgument : "var" "sprite_index"
	/// @DnDArgument : "value" "spri_small"
	if(sprite_index == spri_small)
	{
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 4D431898
		/// @DnDParent : 6AB2A0D1
		instance_destroy();
	}
}
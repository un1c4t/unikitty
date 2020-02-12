/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1BDF943B
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "rm_game"
if(room == rm_game)
{
	/// @DnDAction : YoYo Games.Instance Variables.If_Score
	/// @DnDVersion : 1
	/// @DnDHash : 5F11825C
	/// @DnDParent : 1BDF943B
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "1000"
	if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
	if(__dnd_score >= 1000)
	{
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 1306AEE1
		/// @DnDParent : 5F11825C
		/// @DnDArgument : "room" "rm_win"
		/// @DnDSaveInfo : "room" "91cb327b-9869-4cde-984c-fd80ff9ad3c8"
		room_goto(rm_win);
	}

	/// @DnDAction : YoYo Games.Instance Variables.If_Lives
	/// @DnDVersion : 1
	/// @DnDHash : 2B16CB8D
	/// @DnDParent : 1BDF943B
	/// @DnDArgument : "op" "3"
	/// @DnDArgument : "value" "-1"
	if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
	if(__dnd_lives <= -1)
	{
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 5E5ADE69
		/// @DnDParent : 2B16CB8D
		/// @DnDArgument : "room" "rm_gameover"
		/// @DnDSaveInfo : "room" "2eea4400-d117-49d8-92df-63c1c5248b57"
		room_goto(rm_gameover);
	
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 7D4ABBB1
		/// @DnDParent : 2B16CB8D
		/// @DnDArgument : "soundid" "snd_sadtrombone"
		/// @DnDSaveInfo : "soundid" "638e0c70-febb-49fe-ba4e-9d88e40b5b5f"
		audio_play_sound(snd_sadtrombone, 0, 0);
	}
}
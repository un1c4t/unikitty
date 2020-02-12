/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 5C213751
/// @DnDArgument : "expr" "room"
var l5C213751_0 = room;
switch(l5C213751_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 646F9F8B
	/// @DnDParent : 5C213751
	/// @DnDArgument : "const" "rm_start"
	case rm_start:
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 2B94F0C1
		/// @DnDParent : 646F9F8B
		/// @DnDArgument : "room" "rm_game"
		/// @DnDSaveInfo : "room" "311a71a2-e0a2-4f6c-8352-d25c994c30d9"
		room_goto(rm_game);
	
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 3EAD55AF
		/// @DnDParent : 646F9F8B
		/// @DnDArgument : "soundid" "snd_mmm"
		/// @DnDSaveInfo : "soundid" "b82404b5-3865-4412-a06a-eb33189b2e36"
		audio_play_sound(snd_mmm, 0, 0);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 168C3CD7
	/// @DnDParent : 5C213751
	/// @DnDArgument : "const" "rm_win"
	case rm_win:
		/// @DnDAction : YoYo Games.Game.Restart_Game
		/// @DnDVersion : 1
		/// @DnDHash : 6CE4DEB7
		/// @DnDParent : 168C3CD7
		game_restart();
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 7D073A38
	/// @DnDParent : 5C213751
	/// @DnDArgument : "const" "rm_gameover"
	case rm_gameover:
		/// @DnDAction : YoYo Games.Game.Restart_Game
		/// @DnDVersion : 1
		/// @DnDHash : 7B285390
		/// @DnDParent : 7D073A38
		game_restart();
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 76D6ABA9
	/// @DnDParent : 5C213751
	/// @DnDArgument : "const" "rm_game"
	case rm_game:
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 3A61D7C3
		/// @DnDParent : 76D6ABA9
		/// @DnDArgument : "xpos" "250"
		/// @DnDArgument : "ypos" "250"
		/// @DnDArgument : "objectid" "obj_triship"
		/// @DnDSaveInfo : "objectid" "bfa58ada-b258-4583-bed8-1b048101b3ff"
		instance_create_layer(250, 250, "Instances", obj_triship);
		break;
}
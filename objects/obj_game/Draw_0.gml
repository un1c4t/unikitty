/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 1B4C9A6B
/// @DnDArgument : "expr" "room"
var l1B4C9A6B_0 = room;
switch(l1B4C9A6B_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 4D527341
	/// @DnDParent : 1B4C9A6B
	/// @DnDArgument : "const" "rm_win"
	case rm_win:
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 44E9C714
		/// @DnDParent : 4D527341
		/// @DnDArgument : "halign" "fa_center"
		draw_set_halign(fa_center);
		draw_set_valign(fa_top);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 2DE1FA42
		/// @DnDParent : 4D527341
		/// @DnDArgument : "color" "$FF99FFB7"
		draw_set_colour($FF99FFB7 & $ffffff);
		var l2DE1FA42_0=($FF99FFB7 >> 24);
		draw_set_alpha(l2DE1FA42_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 7EAF8437
		/// @DnDParent : 4D527341
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "150"
		/// @DnDArgument : "xscale" "3"
		/// @DnDArgument : "yscale" "3"
		/// @DnDArgument : "caption" ""You Win!!""
		draw_text_transformed(250, 150, string("You Win!!") + "", 3, 3, 0);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 6719CA2B
		/// @DnDParent : 4D527341
		draw_set_colour($FFFFFFFF & $ffffff);
		var l6719CA2B_0=($FFFFFFFF >> 24);
		draw_set_alpha(l6719CA2B_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Score
		/// @DnDVersion : 1
		/// @DnDHash : 445960C5
		/// @DnDParent : 4D527341
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "250"
		/// @DnDArgument : "caption" ""Final Score: ""
		if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
		draw_text(250, 250, string("Final Score: ") + string(__dnd_score));
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 2FE303C5
		/// @DnDParent : 4D527341
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "300"
		/// @DnDArgument : "caption" "">>press ENTER to restart<<""
		draw_text(250, 300, string(">>press ENTER to restart<<") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 4FFE32C5
		/// @DnDParent : 4D527341
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 13F335AB
	/// @DnDParent : 1B4C9A6B
	/// @DnDArgument : "const" "rm_game"
	case rm_game:
		/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Lives
		/// @DnDVersion : 1
		/// @DnDHash : 230A3B63
		/// @DnDParent : 13F335AB
		/// @DnDArgument : "x" "20"
		/// @DnDArgument : "y" "40"
		/// @DnDArgument : "sprite" "spri_hearts"
		/// @DnDSaveInfo : "sprite" "1f355b85-dc77-4c02-8f63-7f3cad352ce2"
		var l230A3B63_0 = sprite_get_width(spri_hearts);
		var l230A3B63_1 = 0;
		if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
		for(var l230A3B63_2 = __dnd_lives; l230A3B63_2 > 0; --l230A3B63_2) {
			draw_sprite(spri_hearts, 0, 20 + l230A3B63_1, 40);
			l230A3B63_1 += l230A3B63_0;
		}
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Score
		/// @DnDVersion : 1
		/// @DnDHash : 35E42E3B
		/// @DnDParent : 13F335AB
		/// @DnDArgument : "x" "20"
		/// @DnDArgument : "y" "20"
		if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
		draw_text(20, 20, string("Score: ") + string(__dnd_score));
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 7F258F0B
	/// @DnDParent : 1B4C9A6B
	/// @DnDArgument : "const" "rm_start"
	case rm_start:
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 1E1852B5
		/// @DnDParent : 7F258F0B
		/// @DnDArgument : "halign" "fa_center"
		draw_set_halign(fa_center);
		draw_set_valign(fa_top);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 1628AC37
		/// @DnDParent : 7F258F0B
		/// @DnDArgument : "color" "$FFFFCCE9"
		draw_set_colour($FFFFCCE9 & $ffffff);
		var l1628AC37_0=($FFFFCCE9 >> 24);
		draw_set_alpha(l1628AC37_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 7A606759
		/// @DnDParent : 7F258F0B
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "100"
		/// @DnDArgument : "xscale" "3"
		/// @DnDArgument : "yscale" "3"
		/// @DnDArgument : "caption" ""ASTEROIDS""
		draw_text_transformed(250, 100, string("ASTEROIDS") + "", 3, 3, 0);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 4C9E12B9
		/// @DnDParent : 7F258F0B
		draw_set_colour($FFFFFFFF & $ffffff);
		var l4C9E12B9_0=($FFFFFFFF >> 24);
		draw_set_alpha(l4C9E12B9_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 36DFAE17
		/// @DnDParent : 7F258F0B
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "200"
		/// @DnDArgument : "caption" ""score 1000 points to win""
		draw_text(250, 200, string("score 1000 points to win") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 27CD45EA
		/// @DnDParent : 7F258F0B
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "230"
		/// @DnDArgument : "caption" ""move with arrow keys""
		draw_text(250, 230, string("move with arrow keys") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 358C1AA3
		/// @DnDParent : 7F258F0B
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "260"
		/// @DnDArgument : "caption" ""SPACE to shoot""
		draw_text(250, 260, string("SPACE to shoot") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 6B61B153
		/// @DnDParent : 7F258F0B
		/// @DnDArgument : "color" "$FFFFCCE9"
		draw_set_colour($FFFFCCE9 & $ffffff);
		var l6B61B153_0=($FFFFCCE9 >> 24);
		draw_set_alpha(l6B61B153_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 687DA6F4
		/// @DnDParent : 7F258F0B
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "350"
		/// @DnDArgument : "caption" "">>press ENTER to start<<""
		draw_text(250, 350, string(">>press ENTER to start<<") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 3C0D823B
		/// @DnDParent : 7F258F0B
		draw_set_colour($FFFFFFFF & $ffffff);
		var l3C0D823B_0=($FFFFFFFF >> 24);
		draw_set_alpha(l3C0D823B_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 4F14311C
		/// @DnDParent : 7F258F0B
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 47C86864
	/// @DnDParent : 1B4C9A6B
	/// @DnDArgument : "const" "rm_gameover"
	case rm_gameover:
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 124BA2ED
		/// @DnDParent : 47C86864
		/// @DnDArgument : "halign" "fa_center"
		draw_set_halign(fa_center);
		draw_set_valign(fa_top);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 4E41BB3E
		/// @DnDParent : 47C86864
		/// @DnDArgument : "color" "$FF630AFF"
		draw_set_colour($FF630AFF & $ffffff);
		var l4E41BB3E_0=($FF630AFF >> 24);
		draw_set_alpha(l4E41BB3E_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 6358C8D8
		/// @DnDParent : 47C86864
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "150"
		/// @DnDArgument : "xscale" "3"
		/// @DnDArgument : "yscale" "3"
		/// @DnDArgument : "caption" ""Game Over""
		draw_text_transformed(250, 150, string("Game Over") + "", 3, 3, 0);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 4F2C8698
		/// @DnDParent : 47C86864
		draw_set_colour($FFFFFFFF & $ffffff);
		var l4F2C8698_0=($FFFFFFFF >> 24);
		draw_set_alpha(l4F2C8698_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Score
		/// @DnDVersion : 1
		/// @DnDHash : 1B5260BB
		/// @DnDParent : 47C86864
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "250"
		/// @DnDArgument : "caption" ""Final Score: ""
		if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
		draw_text(250, 250, string("Final Score: ") + string(__dnd_score));
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 4D772E33
		/// @DnDParent : 47C86864
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "300"
		/// @DnDArgument : "caption" "">>press ENTER to restart<<""
		draw_text(250, 300, string(">>press ENTER to restart<<") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 6114BAD8
		/// @DnDParent : 47C86864
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
		break;
}
/// @DnDAction : YoYo Games.Random.Choose
/// @DnDVersion : 1
/// @DnDHash : 68A42E3D
/// @DnDInput : 3
/// @DnDArgument : "var" "sprite_index"
/// @DnDArgument : "option" "spri_large"
/// @DnDArgument : "option_1" "spri_med"
/// @DnDArgument : "option_2" "spri_small"
sprite_index = choose(spri_large, spri_med, spri_small);

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 44741552
/// @DnDArgument : "var" "direction"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "max" "359"
direction = floor(random_range(0, 359 + 1));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 0C4356B8
/// @DnDArgument : "var" "image_angle"
/// @DnDArgument : "max" "359"
image_angle = (random_range(0, 359));

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 48DE9DF0
/// @DnDArgument : "speed" "1"
speed = 1;
/// @description Spawns both players in the map
/// @param P1x
/// @param P1y
/// @param ropeLength


// Returns [player1, player2, rope]
var boyChar = instance_create_layer(argument0, argument1, get_layer_depth(0), obj_player)
var girlChar = instance_create_layer(argument0, argument1, get_layer_depth(0), obj_player)
var rope = instance_create_layer(0, 0, get_layer_depth(1), obj_rope)

boyChar.c_left = ord("A")
boyChar.c_right = ord("D")
boyChar.c_jump = ord("W")
boyChar.image_xscale = 2
boyChar.image_yscale = 3
boyChar.attached_obj[0] = girlChar
boyChar.rope_obj[0] = rope
boyChar.groundSpeed = 4
boyChar.jumpSpeed = 17
boyChar.accelVal = 0.3
boyChar.canPushWall = true

girlChar.c_left = ord("J")
girlChar.c_right = ord("L")
girlChar.c_jump = ord("I")
girlChar.image_xscale = 1.5
girlChar.image_yscale = 2
girlChar.attached_obj[0] = boyChar
girlChar.rope_obj[0] = rope
girlChar.groundSpeed = 7
girlChar.jumpSpeed = 20
girlChar.accelVal = 0.5
girlChar.anim_default = spr_player_default_g

rope.obj1 = boyChar
rope.obj2 = girlChar
rope.maxLength = argument2

return [boyChar, girlChar, rope]
/// @description Spawns both players in the map
/// @param P1x
/// @param P1y
/// @param P2x
/// @param P2y
/// @param ropeLength

// Returns [player1, player2, rope]
var obj2 = instance_create_layer(argument0, argument1, get_layer_depth(0), obj_player)
var obj1 = instance_create_layer(argument0, argument1, get_layer_depth(0), obj_player)
var rope = instance_create_layer(0, 0, get_layer_depth(1), obj_rope)

obj1.c_left = ord("A")
obj1.c_right = ord("D")
obj1.c_jump = ord("W")
obj1.image_xscale = 2
obj1.image_yscale = 3
obj1.collision_type = 1
obj1.attached_obj = obj2
obj1.rope_obj = rope

obj2.c_left = ord("J")
obj2.c_right = ord("L")
obj2.c_jump = ord("I")
obj2.image_xscale = 1.5
obj2.image_yscale = 2
obj2.collision_type = 2
obj2.rope_obj = rope

rope.obj1 = obj1
rope.obj2 = obj2
rope.maxLength = argument2

return [obj1, obj2, rope]
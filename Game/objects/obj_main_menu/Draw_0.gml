draw_set_font(ft_title);
draw_set_halign(fa_center);
var c = c_white;
var c1 = c_gray;
var c2 = c_black;
var c3 = c_white;
draw_text_transformed_color(
	room_width/2, 200, "SOUL CHAIN", 3, 3, 0,
	c,c1,c2,c3,1
	);
draw_set_font(ft_time);
draw_text_transformed_color(
	room_width/2, 800, "PRESS ENTER TO START", 1, 1, 0,
	c,c1,c2,c3,1
	);
draw_set_halign(fa_left);


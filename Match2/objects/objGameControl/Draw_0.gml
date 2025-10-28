// draw event of objGameControl

draw_set_font(global.fontScore);
draw_set_halign(fa_center)
draw_set_valign(fa_top)
 draw_set_colour(c_white);
 
draw_text(room_width-300,10,FormatScore(global.myScore));

draw_set_font(fntOpenSans)
draw_text(50,4,"FPS");
draw_text(50,40,string(fps_real));

draw_text(room_width-100,100,"Chain Bonus");
draw_text(room_width-100,135,string(chainbonus));

draw_text(room_width-100,200,"Level");
draw_text(room_width-100,235,string(global.level));

// test draw speed ----- it is fast  :)
/*for (var i=0; i < 300; i++)
{
	draw_text(random_range(1,1000),random_range(1,800),FormatScore(global.myScore));
}
*/
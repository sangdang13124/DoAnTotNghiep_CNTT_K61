draw_self();
draw_set_font(fo_text);
draw_sprite(object_get_sprite( CRAFTS[Number][0]),0,x,y);
draw_text(x , y -48 ,NeedResource[0]);
draw_text(x , y -64 ,NeedResource[1]);
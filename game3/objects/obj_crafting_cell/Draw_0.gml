
/// Draw event of obj_crafting_cell
draw_self();
draw_sprite(object_get_sprite( CRAFTS[Number][0]),0,x,y);
if (hovered) {
    // Hiển thị công thức khi di chuột
    var x_offset = -40;
    var y_offset = 15;
    
    draw_set_font(fo_text);
  // Vẽ sprite và số lượng của nguyên liệu đầu tiên
    draw_sprite(spr_log, 0, x + x_offset, y + y_offset - 48);
    draw_text(x + x_offset+10 , y + y_offset - 48, string(NeedResource[0]));

    // Vẽ sprite và số lượng của nguyên liệu thứ hai
    draw_sprite(spr_rock, 0, x + x_offset, y + y_offset - 64);
    draw_text(x + x_offset + 10, y + y_offset - 64, string(NeedResource[1]));
	
}







/// Draw event of obj_crafting_cell
draw_self();
draw_sprite(object_get_sprite( CRAFTS1[Number][0]),0,x,y);
if (hovered) {
    // Hiển thị công thức khi di chuột
    var x_offset = -40;
    var y_offset = 15;
    
    draw_set_font(fo_text);
  // Vẽ sprite và số lượng của nguyên liệu đầu tiên
    draw_sprite(spr_tomato, 0, x + x_offset, y + y_offset - 48);
    draw_text(x + x_offset+10 , y + y_offset - 48, string(NeedResource[0]));

    // Vẽ sprite và số lượng của nguyên liệu thứ hai
    draw_sprite(spr_potato, 0, x + x_offset, y + y_offset - 64);
    draw_text(x + x_offset + 10, y + y_offset - 64, string(NeedResource[1]));
	
	 // Vẽ sprite và số lượng của nguyên liệu thứ hai
    draw_sprite(spr_carrot, 0, x + x_offset, y + y_offset - 80);
    draw_text(x + x_offset + 10, y + y_offset - 80, string(NeedResource[1]));
	
	 // Vẽ sprite và số lượng của nguyên liệu thứ hai
    draw_sprite(spr_corn, 0, x + x_offset, y + y_offset - 96);
    draw_text(x + x_offset + 10, y + y_offset - 96, string(NeedResource[1]));
	
}






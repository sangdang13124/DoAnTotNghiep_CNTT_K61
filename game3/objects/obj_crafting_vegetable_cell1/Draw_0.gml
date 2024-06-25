/// Draw event of obj_crafting_cell
draw_self();
draw_sprite(object_get_sprite(CRAFTS3[Number][0]), 0, x, y);

if (hovered) {
    // Hiển thị công thức khi di chuột
    var x_offset = 0; // Để vị trí cố định
    var y_offset = 0;
    var white_bg_width = 100; // Chiều rộng của sprite trắng (tùy chỉnh)
    var white_bg_height = 100; // Chiều cao của sprite trắng (tùy chỉnh)

    // Vẽ sprite trắng tại vị trí cố định
    draw_sprite(spr_white_bg, 0, global.white_bg_x + x_offset, global.white_bg_y + y_offset - white_bg_height / 2);

    draw_set_font(fo_text);
    
    var text_x_offset = global.white_bg_x + x_offset + 10;
    var text_y_offset = global.white_bg_y + y_offset - white_bg_height / 2 + 10;

    // Kiểm tra và vẽ nguyên liệu đầu tiên 
    if (NeedResource[0] > 0) {
        draw_sprite(spr_carrot, 0, text_x_offset, text_y_offset);
        draw_text(text_x_offset + 20, text_y_offset, string(NeedResource[0]));
        text_y_offset += 20;
    }

    // Kiểm tra và vẽ nguyên liệu thứ hai 
    if (NeedResource[1] > 0) {
        draw_sprite(spr_chilli, 0, text_x_offset, text_y_offset);
        draw_text(text_x_offset + 20, text_y_offset, string(NeedResource[1]));
        text_y_offset += 20;
    }

    // Kiểm tra và vẽ nguyên liệu thứ ba 
    if (NeedResource[2] > 0) {
        draw_sprite(spr_artichoke1, 0, text_x_offset, text_y_offset);
        draw_text(text_x_offset + 20, text_y_offset, string(NeedResource[2]));
        text_y_offset += 20;
    }

    // Kiểm tra và vẽ nguyên liệu thứ tư 
    if (NeedResource[3] > 0) {
        draw_sprite(spr_tomato, 0, text_x_offset, text_y_offset);
        draw_text(text_x_offset + 20, text_y_offset, string(NeedResource[3]));
    }
}

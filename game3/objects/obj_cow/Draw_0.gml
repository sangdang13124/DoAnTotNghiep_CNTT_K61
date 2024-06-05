// Sự kiện Draw của obj_bo:
draw_self();
// Vẽ biểu tượng trạng thái
if (state == "full") {
    draw_sprite(spr_heart_full, 0, x, y - sprite_height / 2 - 10);
} else if (state == "hungry") {
    draw_sprite(spr_heart_broken, 0, x, y - sprite_height / 2 - 10);
}

/*
switch (move_direction) {
    case 1: // Lên
        draw_sprite_ext(spr_bo_up, 0, x, y, 1, 1, 0, c_white, 1);
      
        break;
    case 2: // Xuống
      draw_sprite_ext(spr_bo_down, 0, x, y, 1, 1, 0, c_white, 1);

        break;
    case 3: // Trái
      draw_sprite_ext(spr_bo_left, 0, x, y, 1, 1, 0, c_white, 1);

        break;
    case 4: // Phải
      draw_sprite_ext(spr_bo_right, 0, x, y, 1, 1, 0, c_white, 1);

        break;
    default: // Mặc định
       draw_sprite_ext(spr_bo_up, 0, x, y, 1, 1, 0, c_white, 1);

        break;
}


/// @description Draw event for obj_fish_trap

// Vẽ bản thân đối tượng bẫy cá
draw_self();

// Kiểm tra nếu bẫy đang ở trong điểm bẫy
if (in_trap_point) {
    // Vẽ trái tim phía trên đầu khi trong điểm bẫy với animation
    var heart_frame = (current_time div 400) mod sprite_get_number(heart_sprite);
    draw_sprite(heart_sprite, heart_frame, x, y - sprite_height - 10);
}

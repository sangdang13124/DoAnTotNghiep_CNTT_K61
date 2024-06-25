/// @description Step event for obj_fish_trap

// Kiểm tra va chạm với obj_trap_point
if (place_meeting(x, y, obj_trap_point)) {
    if (!trap_started) {
        trap_started = true;
        trap_timer = 600; // 10 giây (60 FPS * 10)
    }
    in_trap_point = true;
} else {
    trap_started = false;
    trap_timer = 0;
    in_trap_point = false;
}

// Nếu bẫy đã bắt đầu và bộ đếm thời gian chưa hết
if (trap_started && trap_timer > 0) {
    trap_timer -= 1;
    if (trap_timer <= 0) {
        heart_sprite = spr_heart_red; // Đổi trái tim xanh thành đỏ
    }
}

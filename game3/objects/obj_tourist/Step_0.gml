// Sự kiện Bước cho obj_tourist

if (!reached_initial_target) {
    // Kiểm tra nếu người du lịch đã gần vị trí mục tiêu ban đầu
    if (point_distance(x, y, target_x, target_y) < 2) {
        speed = 0; // Dừng người du lịch khi gần đến mục tiêu
        x = target_x; // Đảm bảo vị trí x chính xác
        y = target_y; // Đảm bảo vị trí y chính xác
        reached_initial_target = true; // Đánh dấu rằng đã đến vị trí mục tiêu ban đầu
        alarm[0] = 30; // Thiết lập alarm để bắt đầu di chuyển ngẫu nhiên sau 30 frames
    }
} else {
    // Di chuyển ngẫu nhiên khi đã đến vị trí mục tiêu ban đầu
    if (move_timer > 0) {
        move_timer--;
    } else {
        // Chọn hướng ngẫu nhiên
        direction = choose(0, 90, 180, 270); // Chọn một trong các hướng: lên, phải, xuống, trái
        move_timer = irandom_range(30, 60); // Thời gian di chuyển trong khoảng 30 đến 60 frames
        speed = 0.5; // Tốc độ di chuyển ngẫu nhiên
    }
}

/// step obj_chicken
// Sự kiện Step của obj_chicken:
// Giảm bộ đếm thời gian di chuyển
move_timer -= 1;

if (move_timer <= 0) {
    // Chọn hướng di chuyển ngẫu nhiên mới
    move_direction = irandom(4);
    move_timer = move_delay;
}

// Di chuyển gà dựa trên hướng di chuyển đã chọn
switch (move_direction) {
    case 1: // Lên
        if (place_free(x, y - move_speed) && y - move_speed >= obj_chickenhouse.y + 20) {
            y -= move_speed;
        }
        sprite_index = spr_chicken_up; // Cập nhật sprite cho hướng lên
        break;
    case 2: // Xuống
        if (place_free(x, y + move_speed) && y + move_speed <= obj_chickenhouse.y + obj_chickenhouse.sprite_height - 20) {
            y += move_speed;
        }
        sprite_index = spr_chicken_down; // Cập nhật sprite cho hướng xuống
        break;
    case 3: // Trái
        if (place_free(x - move_speed, y) && x - move_speed >= obj_chickenhouse.x + 20) {
            x -= move_speed;
        }
        sprite_index = spr_chicken_left; // Cập nhật sprite cho hướng trái
        break;
    case 4: // Phải
        if (place_free(x + move_speed, y) && x + move_speed <= obj_chickenhouse.x + obj_chickenhouse.sprite_width - 20) {
            x += move_speed;
        }
        sprite_index = spr_chicken_right; // Cập nhật sprite cho hướng phải
        break;
    default: // Không di chuyển
        move_direction = 0;
        break;
}

// Đặt tốc độ animation
image_speed = 0.5; 

// Giảm bộ đếm thời gian trạng thái
state_timer -= 1;

if (state_timer <= 0) {
    if (state == "full") {
        state = "egg";
        state_timer = 0; // Không cần đếm thời gian nữa
    }
}

// Kiểm tra va chạm với đối tượng `obj_chicken_feed`
if (state == "hungry" && place_meeting(x, y, obj_chicken_feed)) { // Chỉ ăn khi đói
    // Trở lại trạng thái no
    state = "full";
    state_timer = 300; // 10 giây
    // Xóa đối tượng `obj_worm` sau khi ăn
    with (instance_nearest(x, y, obj_chicken_feed)) {
        instance_destroy();
    }
}

/// @description Update alpha transparency based on player's position and collision
// obj_tree Step Event

// Kiểm tra va chạm với obj_player
if (place_meeting(x, y, obj_player)) {
    // Kiểm tra nếu obj_player ở phía sau obj_tree
    if (obj_player.y > y) {
        image_alpha = 1; // Làm mờ đi 50% khi `obj_player` ở phía sau
    } else {
        image_alpha = 0.5; // Không làm mờ khi `obj_player` không ở phía sau
    }
} else {
    image_alpha = 1; // Không làm mờ khi không có va chạm
}


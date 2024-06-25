/// Mouse Left Pressed event in obj_beehouse

// Đếm số lượng ong hiện tại
var bee_count = instance_number(obj_bee);

// Kiểm tra nếu đủ điều kiện cấp độ và số lượng ong
if (global.level >= 2 && bee_count < min(5, global.level - 1)) {
    if (global.money >= 100) {
        global.money -= 100;

        var bee_x = x + sprite_width / 2;
        var bee_y = y + sprite_height / 2;
        
        var new_bee = instance_create_layer(bee_x, bee_y, "Instances", obj_bee);
        show_message("Bạn đã mua 1 con ong!");
    } else {
        show_message("Bạn không đủ tiền để mua ong!");
    }
} else if (global.level < 2) {
    show_message("Bạn không đủ cấp độ để mua ong! Cần cấp độ 2 trở lên.");
} else {
    show_message("Bạn đã đạt giới hạn số lượng ong tối đa!");
}

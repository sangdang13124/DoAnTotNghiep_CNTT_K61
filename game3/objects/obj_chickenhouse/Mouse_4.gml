/// left pressed cuar obj_chickenhouse
/// Mouse Left Pressed event in obj_chickenhouse

// Đếm số lượng gà hiện tại
var chicken_count = instance_number(obj_chicken);

// Kiểm tra nếu đủ điều kiện cấp độ và số lượng gà
if (global.level >= 2 && chicken_count < min(5, global.level - 1)) {
    if (global.money >= 50) {
        global.money -= 50;

        var chicken_x = x + sprite_width / 2;
        var chicken_y = y + sprite_height / 2;
        
        var new_chicken = instance_create_layer(chicken_x, chicken_y, "Instances", obj_chicken);
        show_message("Bạn đã mua 1 con gà!");
    } else {
        show_message("Bạn không đủ tiền để mua gà!");
    }
} else if (global.level < 2) {
    show_message("Bạn không đủ cấp độ để mua gà! Cần cấp độ 2 trở lên.");
} else {
    show_message("Bạn đã đạt giới hạn số lượng gà tối đa!");
}

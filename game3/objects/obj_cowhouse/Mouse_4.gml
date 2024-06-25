/// Mouse Left Pressed event in obj_cowhouse


// Đếm số lượng bò hiện tại
var cow_count = instance_number(obj_cow);

// Kiểm tra nếu đủ điều kiện cấp độ và số lượng bò
if (global.level >= 2 && cow_count < min(5, global.level - 1)) {
    if (global.money >= 100) {
        global.money -= 100;

        var cow_x = x + sprite_width / 2;
        var cow_y = y + sprite_height / 2;
        
        var new_cow = instance_create_layer(cow_x, cow_y, "Instances", obj_cow);
        show_message("Bạn đã mua 1 con bò!");
    } else {
        show_message("Bạn không đủ tiền để mua bò!");
    }
} else if (global.level < 2) {
    show_message("Bạn không đủ cấp độ để mua bò! Cần cấp độ 2 trở lên.");
} else {
    show_message("Bạn đã đạt giới hạn số lượng bò tối đa!");
}

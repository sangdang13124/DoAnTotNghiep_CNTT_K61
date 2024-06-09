/// Mouse Left Pressed event in obj_cowhouse
if (global.money >= 100) {
    global.money -= 100;
    var cow_x = x + sprite_width / 2;
    var cow_y = y + sprite_height / 2;
    var new_cow = instance_create_layer(cow_x, cow_y, "Instances", obj_cow);
    
    show_message("Bạn đã mua 1 con bò!");
} else {
    show_message("Bạn không đủ tiền để mua bò!");
}

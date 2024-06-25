/// @description Mouse Left Pressed event for obj_fish_trap

if (trap_started && trap_timer <= 0 && in_trap_point) {
    var rand = irandom(100); // Tạo một số ngẫu nhiên từ 0 đến 100

    if (rand < 60) {
        // Tạo ra obj_fish với xác suất 60%
        instance_create_layer(x, y, "Instances", obj_fish);
    } else if (rand < 90) {
        // Tạo ra obj_fish1 với xác suất 30% (60% đến 90%)
        instance_create_layer(x, y, "Instances", obj_fish1);
    } else if (rand < 97) {
        // Tạo ra obj_fish2 với xác suất 7% (90% đến 97%)
        instance_create_layer(x, y, "Instances", obj_fish2);
    } else {
        // Tạo ra obj_squid với xác suất 3% (97% đến 100%)
        instance_create_layer(x, y, "Instances", obj_squid);
    }

    instance_destroy(); // Phá hủy bẫy sau khi thu hoạch cá
}

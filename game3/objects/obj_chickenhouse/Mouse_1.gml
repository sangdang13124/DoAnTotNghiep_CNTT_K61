/// right obj_chickenhouse
/// Mouse Right Pressed event in obj_chickenhouse
// Tạo danh sách các con gà trong vùng chuồng gà
var chickens = [];
with (obj_chicken) {
    if (x >= other.x && x <= other.x + other.sprite_width && y >= other.y && y <= other.y + other.sprite_height) {
        array_push(chickens, id);
    }
}

// Duyệt qua danh sách các con gà và thu hoạch trứng nếu có thể
if (array_length(chickens) > 0) {
    for (var i = 0; i < array_length(chickens); i++) {
        var chicken = chickens[i];
        if (chicken.state == "egg") {
            instance_create_layer(chicken.x, chicken.y, "Instances", obj_egg);
            chicken.state = "hungry"; // Sau khi thu hoạch trứng, gà sẽ đói trở lại
            chicken.state_timer = 0;
        }
    }
}

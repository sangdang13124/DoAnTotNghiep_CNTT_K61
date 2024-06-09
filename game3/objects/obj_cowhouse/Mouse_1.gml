/// Mouse Right Pressed event in obj_cowhouse
// Tạo danh sách các con bò trong vùng chuồng bò
var cows = [];
with (obj_cow) {
    if (x >= other.x && x <= other.x + other.sprite_width && y >= other.y && y <= other.y + other.sprite_height) {
        array_push(cows, id);
    }
}

// Duyệt qua danh sách các con bò và thu hoạch sữa nếu có thể
if (array_length(cows) > 0) {
    for (var i = 0; i < array_length(cows); i++) {
        var cow = cows[i];
        if (cow.state == "milk") {
            instance_create_layer(cow.x, cow.y, "Instances", obj_milk);
            cow.state = "hungry"; // Sau khi thu hoạch sữa, bò sẽ đói trở lại
            cow.state_timer = 0;
        }
    }
}

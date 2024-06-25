/// @description Insert description here
// You can write your code in this editor
/// Mouse Right Pressed event in obj_beehouse

// Tạo danh sách các con ong trong vùng chuồng ong
var bees = [];
with (obj_bee) {
    if (x >= other.x && x <= other.x + other.sprite_width && y >= other.y && y <= other.y + other.sprite_height) {
        array_push(bees, id);
    }
}

// Duyệt qua danh sách các con ong và thu hoạch mật nếu có thể
if (array_length(bees) > 0) {
    for (var i = 0; i < array_length(bees); i++) {
        var bee = bees[i];
        if (bee.state == "honey") {
            // Sinh obj_honey ở phía dưới obj_beehouse
            var honey_x = other.x + other.sprite_width / 2;
            var honey_y = other.y + other.sprite_height;
            instance_create_layer(honey_x, honey_y, "Instances", obj_honey);
            
            // Đặt trạng thái của ong thành đói sau khi thu hoạch mật
            bee.state = "hungry";
            bee.state_timer = 0;
        }
    }
}

// Collision Event with obj_door for obj_key

// Kích thước của cửa
var door_width = 64;
var door_height = 64;

// Vị trí trung tâm của cửa
var door_center_x = other.x + door_width / 2;
var door_center_y = other.y + door_height / 2;

// Vị trí hiện tại của chìa khóa
var key_x = x + sprite_width / 2;
var key_y = y + sprite_height / 2;

// Kiểm tra nếu chìa khóa nằm trong vùng trung tâm của cửa
if (abs(door_center_x - key_x) <= door_width / 4 && abs(door_center_y - key_y) <= door_height / 4) {
    // Phát âm thanh mở cửa
    audio_play_sound(snd_door_open, 1, false); 

    // Tạo hiệu ứng mở cửa tại vị trí của cửa
    instance_create_layer(other.x, other.y, "Instances", obj_door_open_effect); 

    // Hủy đối tượng chìa khóa và cửa
    with (other) {
        instance_destroy(); // Hủy đối tượng cửa (obj_door)
    }
    instance_destroy(); // Hủy đối tượng chìa khóa (obj_key)
}

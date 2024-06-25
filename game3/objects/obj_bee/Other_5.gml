/// @description Insert description here
// You can write your code in this editor
// Sự kiện Game End của obj_bee hoặc đối tượng chính quản lý trò chơi
with (obj_flower) {
    if (targeted_by != noone && instance_exists(targeted_by)) {
        var bee = targeted_by;
        bee.target_flower = noone; // Giải phóng mục tiêu hoa của ong nếu trò chơi kết thúc
    }
}

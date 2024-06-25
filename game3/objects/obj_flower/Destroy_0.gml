/// @description Insert description here
// You can write your code in this editor
// Sự kiện Destroy của obj_flower
if (targeted_by != noone && instance_exists(targeted_by)) {
    var bee = targeted_by;
    bee.target_flower = noone; // Giải phóng mục tiêu hoa của ong nếu hoa bị phá hủy
}

/// @description Insert description here
// You can write your code in this editor

/// Collision Event with obj_player
if (other.object_index == obj_player) {
    global.money += money_increase; // Tăng số tiền toàn cầu
    instance_destroy(); // Hủy đối tượng obj_money sau khi tăng tiền
}
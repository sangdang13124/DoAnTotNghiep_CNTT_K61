/// @description Insert description here
// You can write your code in this editor
// Event Step for obj_xp
if (instance_exists(obj_player)) {
    var target_x = obj_player.x;
    var target_y = obj_player.y;

     direction = point_direction(x, y, target_x, target_y);
    motion_set(direction, speed);
}

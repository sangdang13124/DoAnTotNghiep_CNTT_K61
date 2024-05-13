/// @description Insert description here
// You can write your code in this editor
if distance_to_object(obj_player)<10 {
	if obj_player.Item == obj_axe {
		if obj_player.image_index = 1{
			Health1 -=1;
			if Health1 <= 0{
				instance_destroy();
				instance_create_depth(x,y,0,obj_log);
				
			}
		}
	}
}
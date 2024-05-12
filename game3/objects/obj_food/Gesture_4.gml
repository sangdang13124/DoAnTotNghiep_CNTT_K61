/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
if collision_point(x,y,obj_player,0,1){
	obj_player.Hunger += Hunger;
	obj_player.Thirst += Thirst;
	obj_player.Health1 += Health1;
	obj_player.Hunger = clamp(obj_player.Hunger,0,1000); 
	obj_player.Thirst = clamp(obj_player.Thirst,0,1000)
	obj_player.Health1 = clamp(obj_player.Health1,0,1000)
	instance_destroy();
}

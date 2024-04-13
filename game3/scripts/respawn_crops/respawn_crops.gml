// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function respawn_crop(argument0, argument1, argument2, argument3) {

	var xx = argument0*cellSize;
	var yy = argument1*cellSize;

	//Create the instance
	var inst = instance_create_layer(xx+(cellSize/2), yy+(cellSize/2), "Instances", obj_crops);
	ds_crops_instances[# argument0, argument1] = inst;
	show_debug_message("Respawned a " + ds_crops_types[# 2, argument2]);

	//Give the crop its characteristics
	with(inst){
		cropType = argument2;
		daysOld = argument3;
		growthStageDuration = crops.ds_crops_types[# 0, cropType];
	}

	return inst;


}
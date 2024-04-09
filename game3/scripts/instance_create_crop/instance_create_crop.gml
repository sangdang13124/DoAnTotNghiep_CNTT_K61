// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function instance_create_crop(argument0, argument1, argument2) {
var cs = crops.cellSize;
var gx = argument0 div cs;
var gy = argument1 div cs;

var i_grid = crops.ds_crops_instance;

var cell = i_grid[# gx,gy];
if(cell == 0){
	
var xx = gx*cs;
var yy = gy*cs;
//check id soil
var lay_id = layer_get_id("T_Soil");
var map_id = layer_tilemap_get_id(lay_id);
var data = tilemap_get_at_pixel(map_id,argument0,argument1);

if(data == 0){
	show_debug_message("there is not soil here");
	return false;
}else{
	show_debug_message("there is soil here");
}
	//Create the instance
	var inst = instance_create_layer(xx+(cs/2), yy+(cs/2), "Instances", obj_crops);
    i_grid[# gx, gy]=inst;
	//Give the crop its characteristics
	with(inst){
		cropType = argument2;
		growthStageDuration = crops.ds_crops_types[# 0, cropType];
	}

	return inst;
}else {
	show_debug_message("Da co vat the");
	return false;
}
}
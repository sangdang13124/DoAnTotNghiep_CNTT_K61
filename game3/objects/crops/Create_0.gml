/// @description Insert description here
// You can write your code in this editor


ds_crops_instances = -1;

ds_crops_types=-1;

ds_crops_data = ds_grid_create(4,1);

ds_grid_clear(ds_crops_data,-1);

enum crop{
	tomato,
	potato,
	carrot,
	artichoke,
	chilli,
	gourd,
	corn
}

create_crop_type(1,10,"tomato");//tomato
create_crop_type(2,20,"potato");//potato
create_crop_type(3,30,"carrot");//carrot
create_crop_type(4,40,"artichoke");//artichoke
create_crop_type(5,50,"chili");//chilli
create_crop_type(6,60,"ground");//gourd
create_crop_type(7,70,"corn");//corn

planting =false;
selectCrop =0 ;
mx =0;
my =0;

cellSize = 32;
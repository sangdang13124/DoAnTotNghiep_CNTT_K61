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

create_crop_type(3,10,"tomato");//tomato
create_crop_type(3,10,"potato");//potato
create_crop_type(3,10,"carrot");//carrot
create_crop_type(3,10,"artichoke");//artichoke
create_crop_type(3,10,"chili");//chilli
create_crop_type(3.5,10,"ground");//gourd
create_crop_type(3.5,10,"corn");//corn

planting =false;
selectCrop =0 ;
mx =0;
my =0;

cellSize = 32;



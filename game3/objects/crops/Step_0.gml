/// @description Insert description here
// You can write your code in this editor
if(room != Room6){ planting = false; exit; }

if(keyboard_check_pressed(ord("P"))){ planting = !planting } 

if(planting){
	mx = mouse_x;
	my = mouse_y;
	
	if(mouse_wheel_up()) selectCrop += 1; 
	if(mouse_wheel_down()) selectCrop -= 1; 
	
	if(selectCrop > sprite_get_number(spr_crops_picked)-1) { selectCrop = 0; }
	else if (selectCrop < 0) { selectCrop = sprite_get_number(spr_crops_picked)-1; }
	
	if(mouse_check_button_pressed(mb_left)){
		instance_create_crop(mx, my, selectCrop);
	}
}


if(instance_exists(obj_crops) and keyboard_check_pressed(ord("G"))){
	with(obj_crops){
	if(growthStage < maxGrowthStage){
	daysOld +=1;
	//sinh truong ngay day tien
	var firstGrowth = 0 ;
	if(daysOld > 0){firstGrowth = 1;}
	growthStage = firstGrowth + (daysOld div growthStageDuration);
	}else{
		growthStage = maxGrowthStage;
		fullyGrown = true ;
		alarm[1] = 1;
	}
}
	
}	


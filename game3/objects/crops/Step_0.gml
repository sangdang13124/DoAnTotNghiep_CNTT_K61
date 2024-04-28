// You can write your code in this editor
if(room != Room6){ planting = false; exit; }

if (instance_exists(obj_crops)) {
    if (keyboard_check_pressed(ord("T"))) {
        var mouse_tile_x = mouse_x div cellSize;
        var mouse_tile_y = mouse_y div cellSize;
        
        // Kiểm tra xem cây tại vị trí của chuột đã đạt đến giai đoạn tăng trưởng tối đa chưa
        if (ds_crops_instances[# mouse_tile_x, mouse_tile_y] != 0 && obj_crops.growthStage = obj_crops.maxGrowthStage) {
            // Gọi hàm xóa cây trồng và thu hoạch tại vị trí của chuột
            delete_crop_and_harvest(mouse_tile_x, mouse_tile_y);
        }
    }
}


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




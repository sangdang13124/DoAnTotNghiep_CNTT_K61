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

// Trong sự kiện "Step" của đối tượng hoặc sự kiện khác phù hợp
// Phần xử lý xóa cây khi bấm nút "T"
// Trong sự kiện "Step" của đối tượng hoặc sự kiện khác phù hợp
if (keyboard_check_pressed(ord("T"))) {
    var mouse_tile_x = mouse_x div cellSize; // Tính toán vị trí ô của chuột trên trục x
    var mouse_tile_y = mouse_y div cellSize; // Tính toán vị trí ô của chuột trên trục y
    
    // Kiểm tra xem cây tại vị trí của chuột đã đạt tới giai đoạn tăng trưởng tối đa chưa
    if (instance_exists(obj_crops) && obj_crops.growthStage == obj_crops.maxGrowthStage) {
        // Gọi hàm xóa cây trồng ở vị trí của chuột
        delete_crop_at_position(mouse_tile_x, mouse_tile_y);
		
		// Tạo một thể hiện mới của đối tượng "coin" tại vị trí của cây trồng đã xóa
        instance_create_depth(mouse_tile_x * cellSize+10, mouse_tile_y * cellSize+10, 0, oCoin);
    }
}



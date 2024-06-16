// obj_xp Collision with obj_player Event
global.xp += 1;

if (global.xp >= global.next_level_xp) {
	
    global.xp -= global.next_level_xp;
    global.level += 1;
    global.next_level_xp = ceil(global.next_level_xp * 1.5);
}

// Lưu dữ liệu mỗi khi cập nhật
saveLevelData();

instance_destroy();  // Chỉ hủy obj_xp

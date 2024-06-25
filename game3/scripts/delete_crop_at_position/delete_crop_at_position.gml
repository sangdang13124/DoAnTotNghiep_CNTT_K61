
/// Xóa cây trồng ở vị trí (x, y) và thu hoạch
function delete_crop_and_harvest(x, y) {
    // Kiểm tra xem có instance của cây trồng ở vị trí (x, y) không
    if (ds_crops_instances[# x, y] != 0) {
        // Xác định instance của cây trồng ở vị trí (x, y)
        var crop_instance = ds_crops_instances[# x, y];
        
        // Thu hoạch cây trồng nếu nó đã đạt đến giai đoạn tăng trưởng tối đa
     if (crop_instance.growthStage = crop_instance.maxGrowthStage) {
            // Tạo một thể hiện mới của đối tượng tương ứng với loại cây được thu hoạch
            switch (crop_instance.cropType) {
                case crop.tomato:
                    instance_create_depth(x * cellSize + 10, y * cellSize + 10, 0, obj_tomato);
					 instance_create_layer(mouse_x, mouse_y, "Instances", obj_xp);
                    break;
                case crop.potato:
                    instance_create_depth(x * cellSize + 10, y * cellSize + 10, 0, obj_potato);
					 instance_create_layer(mouse_x, mouse_y, "Instances", obj_xp);
                    break;
                case crop.carrot:
                    instance_create_depth(x * cellSize + 10, y * cellSize + 10, 0, obj_carrot);
					 instance_create_layer(mouse_x, mouse_y, "Instances", obj_xp);
                    break;
                case crop.artichoke:
                    instance_create_depth(x * cellSize + 10, y * cellSize + 10, 0, obj_artichoke);
					 instance_create_layer(mouse_x, mouse_y, "Instances", obj_xp);
                    break;
                case crop.chilli:
                    instance_create_depth(x * cellSize + 10, y * cellSize + 10, 0, obj_chilli);
					 instance_create_layer(mouse_x, mouse_y, "Instances", obj_xp);
                    break;
                case crop.gourd:
                    instance_create_depth(x * cellSize + 10, y * cellSize + 10, 0, obj_gourd);
					 instance_create_layer(mouse_x, mouse_y, "Instances", obj_xp);
                    break;
                case crop.corn:
                    instance_create_depth(x * cellSize + 10, y * cellSize + 10, 0, obj_corn);
					 instance_create_layer(mouse_x, mouse_y, "Instances", obj_xp);
                    break;
                default:
                    // Xử lý trường hợp không xác định
                    break;
            }
        }
        
        // Xóa instance của cây trồng trên màn hình
        instance_destroy(crop_instance);
        
        // Xóa dữ liệu cây trồng trong ds_crops_instances
        ds_crops_instances[# x, y] = 0;
        
        // Xóa dữ liệu cây trồng trong ds_crops_data nếu có
        var inst_num = ds_grid_height(ds_crops_data);
        for (var i = 0; i < inst_num; i++) {
            if (ds_crops_data[# 0, i] == x && ds_crops_data[# 1, i] == y) {
                for (var j = i + 1; j < inst_num; j++) {
                    ds_crops_data[# 0, j - 1] = ds_crops_data[# 0, j];
                    ds_crops_data[# 1, j - 1] = ds_crops_data[# 1, j];
                    ds_crops_data[# 2, j - 1] = ds_crops_data[# 2, j];
                    ds_crops_data[# 3, j - 1] = ds_crops_data[# 3, j];
                }
                ds_grid_resize(ds_crops_data, 4, inst_num - 1);
                break;
            }
        }
    }
}
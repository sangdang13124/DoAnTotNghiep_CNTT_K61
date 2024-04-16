/// Xóa cây trồng ở vị trí (x, y)
function delete_crop_at_position(x, y) {
    // Kiểm tra xem có instance của cây trồng ở vị trí (x, y) không
    if (ds_crops_instances[# x, y] != 0) {
        // Xác định instance của cây trồng ở vị trí (x, y)
        var crop_instance = ds_crops_instances[# x, y];
        
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

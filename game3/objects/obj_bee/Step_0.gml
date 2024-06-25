// Sự kiện Step của obj_bee

move_timer -= 1;

if (move_timer <= 0) {
    move_direction = irandom(4);
    move_timer = move_delay;
}

// Kiểm tra trạng thái ong
if (state == "hungry") {
    if (target_flower == noone || !instance_exists(target_flower) || target_flower.targeted_by != id) {
        // Nếu không có hoa mục tiêu hoặc hoa mục tiêu đã bị nhắm đến bởi ong khác
        if (target_flower != noone && instance_exists(target_flower)) {
            target_flower.targeted_by = noone; // Giải phóng hoa trước đó nếu có
        }
        target_flower = noone; // Đảm bảo rằng target_flower là noone nếu không tìm thấy đối tượng
        if (instance_exists(obj_flower)) {
            // Tìm hoa gần nhất chưa bị nhắm đến
            var nearest_flower = instance_nearest(x, y, obj_flower);
            if (nearest_flower != noone && nearest_flower.targeted_by == noone) {
                target_flower = nearest_flower;
                target_flower.targeted_by = id; // Đánh dấu hoa này bị nhắm đến bởi ong hiện tại
            }
        }
    }

    if (target_flower != noone) {
        var target_x = target_flower.x;
        var target_y = target_flower.y;

        if (point_distance(x, y, target_x, target_y) < 2) {
            with (target_flower) {
                instance_destroy(); // Xóa hoa
				instance_create_layer(x, y, "Instances", obj_sunflower_seed);
            }
            target_flower = noone;
            state = "full";
            state_timer = 300; // 10 giây
            returning_home = true;
        } else {
            // Di chuyển đến hoa
            var angle = point_direction(x, y, target_x, target_y);
            x += lengthdir_x(move_speed, angle);
            y += lengthdir_y(move_speed, angle);
            
            // Lật hình ảnh của obj_bee nếu hoa đang ở bên phải
            if (target_x > x) {
                image_xscale = 1; // Không cần lật lại khi bên phải
            } else {
                image_xscale = -1; // Lật hình ảnh khi bên trái
            }
        }
    }
}

if (returning_home) {
    var home_x = obj_beehouse.x + obj_beehouse.sprite_width / 2;
    var home_y = obj_beehouse.y + obj_beehouse.sprite_height / 2;

    if (point_distance(x, y, home_x, home_y) < 2) {
        state = "honey";
        returning_home = false;
    } else {
        var angle = point_direction(x, y, home_x, home_y);
        x += lengthdir_x(move_speed, angle);
        y += lengthdir_y(move_speed, angle);
        
        // Lật hình ảnh của obj_bee khi trở về tổ
        if (home_x > x) {
            image_xscale = 1; // Không cần lật lại khi bên phải
        } else {
            image_xscale = -1; // Lật hình ảnh khi bên trái
        }
    }
}

// Giảm bộ đếm thời gian trạng thái
state_timer -= 1;

if (state_timer <= 0) {
    if (state == "full") {
        state = "honey";
        state_timer = 0; // Không cần đếm thời gian nữa
    }
}

// Đặt tốc độ animation
image_speed = 0.5;

/// Step event for oEnemybullet39

// Dừng nếu màn hình pause


switch(state) {
    case 0:
        // Trạng thái đợi kẻ thù bắn
        if instance_exists(obj_player) {
            dir = point_direction(x, y, obj_player.x, obj_player.y);
        }
        
        // Đặt độ sâu để làm cho bản thân tôi rõ hơn
        depth = -y - 50;
        break;

    case 1:
        // Tính toán vị trí theo đường vòng cung
        var t = (x - xstart) / (target_x - xstart);
        y = initial_y + (t * (target_y - initial_y)) + (arc_height * sin(t * pi));
        
        // Di chuyển viên đạn
        xspd = lengthdir_x(spd, dir);
        x += xspd;

        // Cập nhật độ sâu
        depth = -10000;

        // Kiểm tra nếu viên đạn đến vị trí đã chọn
        if distance_to_point(target_x, target_y) < 5 {
            instance_create_layer(x, y, "Instances", obj_wave);  // Tạo hiệu ứng sóng âm
            instance_destroy();  // Xóa viên đạn
        }
        break;
}

// Xóa nếu ra khỏi giới hạn phòng
var _pad = 16;
if bbox_right < -_pad || bbox_left > room_width + _pad || bbox_bottom < -_pad || bbox_top > room_height + _pad {
    instance_destroy();
}

// Xóa nếu va chạm người chơi
if hitConfirm == true && playerDestroy == true {
    instance_destroy();
}

// Xóa nếu va chạm với tường
//if place_meeting(x, y, oSolidwall) {
   // instance_destroy();
//}

/// step event của oUsung

// Tạm dừng bản thân
if (screen_pause()) { exit; }

// Mệnh lệnh
var _wallCollisions = true;
var _getDamage = true;

// Trạng thái
switch (state) {
    // Trạng thái rượt đuổi
    case 0:    
        // Chuyển sang trạng thái chụp
        var _camLeft = camera_get_view_x(view_camera[0]);
        var _camRight = _camLeft + camera_get_view_width(view_camera[0]);
        var _camTop = camera_get_view_y(view_camera[0]);
        var _camBottom = _camTop + camera_get_view_height(view_camera[0]);
        
        // Chỉ thêm vào bộ đếm thời gian nếu trên màn hình
        if (bbox_right > _camLeft && bbox_left < _camRight && bbox_bottom > _camTop && bbox_top < _camBottom) {
            shootTimer++;
        }

        if (shootTimer > cooldowmTime) {
            // Đi đến trạng thái bắn
            state = 1;
            // Đặt lại bộ đếm thời gian để chụp cũng có thể sử dụng nó
            shootTimer = 0;
        }
        break;

    // Trạng thái tạm dừng và bắn
    case 1:
        if (instance_exists(obj_player)) {
            dir = point_direction(x, y, obj_player.x, obj_player.y);
        }
        spd = 0;  // Đặt đúng tốc độ
        image_index = 5;  // Dừng hoạt hình

        // Tạo dấu X tại vị trí hiện tại của người chơi
        if (shootTimer == 0) {
            var marker = instance_create_layer(obj_player.x, obj_player.y, "Instances", obj_marker);
            marker.image_index = spr_dau;
            // Đặt thời gian sống cho marker (1 giây)
            marker.lifetime = 60;
        }

        // Bắn viên đạn
        shootTimer++;
        if (shootTimer == 1) {
            bulletInst = instance_create_depth(x + bulletXoff * face, y, depth + bulletYoff, oEnemybullet39);
            bulletInst.target_x = obj_player.x;  // Đánh dấu vị trí người chơi
            bulletInst.target_y = obj_player.y;
            bulletInst.marker_id = marker;  // Lưu trữ ID của marker
        }

        if (shootTimer <= windupTimer && instance_exists(bulletInst)) {
            bulletInst.x = x + bulletXoff * face;
            bulletInst.y = y + bulletYoff;
        }

        if (shootTimer == windupTimer && instance_exists(bulletInst)) {
            bulletInst.state = 1;
        }

        if (shootTimer > windupTimer + recoverTimer) {
            state = 0;
            shootTimer = 0;
        }
        break;
}

// Chuyển đổi mặt theo hướng nhìn
face = (dir > 90 && dir < 270) ? -1 : 1;

// Va chạm
if (_wallCollisions) {
    if (place_meeting(x + xspd, y, oWall)) { xspd = 0; }
    if (place_meeting(x, y + yspd, oWall)) { yspd = 0; }
    if (place_meeting(x + xspd, y, oEnemyParent)) { xspd = 0; }
    if (place_meeting(x, y + yspd, oEnemyParent)) { yspd = 0; }
}

// Di chuyển
x += xspd;
y += yspd;
depth = -y;

// Nhận sát thương và chết
if (_getDamage) {
    event_inherited();
}
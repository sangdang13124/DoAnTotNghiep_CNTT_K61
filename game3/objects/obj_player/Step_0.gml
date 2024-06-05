/// Nhận đầu vào
rightKey = global.rightKey;
leftKey = global.leftKey;
upKey = global.upKey;
downKey = global.downKey;
shootKey = global.shootKey;
swapKeyPressed = global.swapKeyPressed;
startKeyPressed = global.startKeyPressed;

/// Menu dừng màn hình
if startKeyPressed {
    if !instance_exists(oPauseMenu) {
        instance_create_depth(0, 0, 0, oPauseMenu);
    } else {
        instance_destroy(oPauseMenu);
    }    
}

// Cập nhật hình ảnh cho phòng
// Dừng màn hình
if screen_pause() { exit; };

/// Chuyển động của người chơi
/// Nhận thiệt hại
if get_damaged(oDamagePlayer, true) {
    instance_create_depth(0, 0, 0, oHitCreen);
    create_screen_pause(25);
    screen_shake(4);
}

/// Chết / thua game
if hp <= 0 {
    instance_create_depth(0, 0, -10000, oGamerOverScreen);
    create_animated_vfx(oAnimatedVFX, x, y, 0, 0);
    instance_destroy();
}

#region
var _horizkey = rightKey - leftKey;
var _vertKey = downKey - upKey;
moveDir = point_direction(0, 0, _horizkey, _vertKey);

var _spd = 0;
var _inputLevel = point_distance(0, 0, _horizkey, _vertKey);
_inputLevel = clamp(_inputLevel, 0, 1);
_spd = moveSpd * _inputLevel;
xspd = lengthdir_x(_spd, moveDir);
yspd = lengthdir_y(_spd, moveDir);

if (keyboard_check_pressed(vk_f3) && dashCooldownCounter <= 0) {
    dashCounter = dashTime;
    dashDir = moveDir;
    dashCooldownCounter = dashCooldown;
    dashDistance = 2 * 32; // 2 ô, giả sử mỗi ô có kích thước 32 pixels
    dashStepX = lengthdir_x(dashDistance / dashTime, dashDir);
    dashStepY = lengthdir_y(dashDistance / dashTime, dashDir);
}

/// Lướt
if (dashCounter > 0) {
    // Tạo bóng mờ mỗi bước di chuyển
    instance_create_depth(x, y, depth + 1, objTrail);
    
    // Di chuyển nhân vật dần dần
    var newX = x + dashStepX;
    var newY = y + dashStepY;
    
    // Kiểm tra va chạm với oWall
    if (!place_meeting(newX, newY, oWall)) {
        x = newX;
        y = newY;
        dashCounter--;
    } else {
        // Nếu va chạm với oWall, hủy lướt ngay lập tức
        dashCounter = 0;
        dashCooldownCounter = 0;
    }
} else {
    dashCooldownCounter--;
}






/// Va chạm
if place_meeting(x + xspd, y, oWall) {
    xspd = 0;
}
if place_meeting(x, y + yspd, oWall) {
    yspd = 0;
}

/// Di chuyển người chơi
x += xspd;
y += yspd;
// Độ sâu
depth = -bbox_bottom;
#endregion

/// Trao đổi vũ khí

// Sprite control
#region
/// Player aiming
centerY = y + centerYOffset;
aimDir = point_direction(x, centerY, mouse_x, mouse_y);

/// Đảm bảo người chơi đang đi đúng hướng
face = round(aimDir / 90);
if face == 4 { face = 0; };


// Kiểm tra và đặt sprite
if xspd == 0 && yspd == 0 {
    if aimDir >= 45 && aimDir < 135 {
        sprite_index = sPlayerUp1;
    } else if aimDir >= 135 && aimDir < 225 {
        sprite_index = sPlayerLeft1;
    } else if aimDir >= 225 && aimDir < 315 {
        sprite_index = sPlayerDown1;
    } else {
        sprite_index = sPlayerRight1;
    }
    image_speed = 0.6; // Đảm bảo rằng animation chạy với tốc độ chậm khi đứng yên
} else {
    mask_index = sprite[3];
    sprite_index = sprite[face];
    image_speed = 1; // Đặt tốc độ animation bình thường khi di chuyển
}
#endregion

#region
var _playerWeapons = global.PlayerWeapons;
if swapKeyPressed {
    /// Thay đổi lựa chọn và trao đổi vòng
    selectedWeapon++;
    if selectedWeapon >= array_length(_playerWeapons) {
        selectedWeapon = 0;
    }
}
/// Đặt vũ khí mới
weapon = _playerWeapons[selectedWeapon];
#endregion

/// Shoot the weapon
if shootTimer > 0 { shootTimer--; }
if shootKey && shootTimer <= 0 && (global.PlayerAmmo[selectedWeapon] > 0 || weapon == global.WeaponList.black) {
    if weapon != global.WeaponList.black {
        global.PlayerAmmo[selectedWeapon]--;
    }
    shootTimer = weapon.cooldowm;
    screen_shake(1);

    var _xOffset = lengthdir_x(weapon.length + weaponOffsetDist, aimDir);
    var _yOffset = lengthdir_y(weapon.length + weaponOffsetDist, aimDir);
    
    var _spread = weapon.spread;
    var _spreadDiv = _spread / (max(weapon.bulletNum - 1, 1));
    
    var _weaponTipX = x + _xOffset;
    var _weaponTipY = centerY + _yOffset;
    
    create_animated_vfx(sPlash, _weaponTipX, _weaponTipY, depth - 10, aimDir);
    audio_play_sound(Sound1, 10, false);
    
    for (var i = 0; i < weapon.bulletNum; i++) {
        var _bulletInst = instance_create_depth(_weaponTipX + i * 3, _weaponTipY, depth - 100, weapon.bulletObj);
        with (_bulletInst) {
            dir = other.aimDir - _spread / 2 + _spreadDiv * i;
        }
    }
}
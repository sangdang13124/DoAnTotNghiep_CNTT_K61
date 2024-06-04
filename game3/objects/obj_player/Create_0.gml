if instance_number(obj_player) > 1 {instance_destroy();};


///thiết lập thiệt hại

get_damaged_create(100,true);



///các biến chuyển động
moveDir = 0;
moveSpd = 2;
xspd = 0;
yspd =0;
//dirFix=true;
cursor_sprite=tamban;
window_set_cursor(cr_none);

#region
centerYOffset=-5;
///set in step event
centerY = y + centerYOffset;
weaponOffsetDist = 4;
aimDir= 0;


// Vị trí con trỏ chuột

face = 3 ;
sprite[0] = sPlayerRight;
sprite[1] = sPlayerUp;
sprite[2] = sPlayerLeft;
sprite[3] = sPlayerDown;
#endregion

////thông tin vũ khí
shootTimer=0;

///thêm vũ khí vào kho vũ khí của người chơi
array_push(global.PlayerWeapons, global.WeaponList.black); array_push(global.PlayerAmmo,5);


 
selectedWeapon = 0 ;
weapon= global.PlayerWeapons[selectedWeapon];

Item = noone;
ItemSprite = noone;
ItemPrevSprite = ItemSprite;

//speed1 = 40;
Health1 = 1000;
Hunger = 1000;
Thirst = 1000;

alarm[4] = 2 ;
alarm[5] = 2;


// Biến lướt
// obj_player Create Event
moveSpd = 2; // Tốc độ di chuyển bình thường của người chơi
dashTime = 20; // Thời gian lướt (số bước)
dashCooldown = 10; // Thời gian hồi chiêu lướt
dashCounter = 0; // Bộ đếm thời gian lướt ban đầu
dashCooldownCounter = 0; // Bộ đếm thời gian hồi chiêu ban đầu
dashDistance = 4 * 32; // Khoảng cách lướt (2 ô, giả sử mỗi ô có kích thước 32 pixels)
dashStepX = 0; // Bước lướt theo trục X
dashStepY = 0; // Bước lướt theo trục Y
dashDir = 0; // Hướng lướt
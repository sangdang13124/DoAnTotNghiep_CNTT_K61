if instance_number(oPlayer) > 1 {instance_destroy();};


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
//////hiển thị trên cùng
deth = -90000;

///theo doi mau cua nguoi choi
playerHP = 0;
playerMaxHp=0;
// quan li quai vat
global.enemyRoomMax = 1000;
global.activeEnemyMax = 100;
global.totaEnemiesSpawned = 0;
global.enemyKillCount = 1000;


///tien
// Sự kiện Create của obj_controller:
global.money = 1000; // Số tiền khởi đầu của người chơi

if (!variable_global_exists("level")) {
    global.level = 1;
}
if (!variable_global_exists("xp")) {
    global.xp = 0;
}
if (!variable_global_exists("next_level_xp")) {
    global.next_level_xp = 6;
}




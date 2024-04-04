
///dung man hinh
if screen_pause() {exit;};
///sinh quai
var _camLeft = camera_get_view_x(view_camera[0]);
var _camRight = _camLeft + camera_get_view_width(view_camera[0]);
var _camTop = camera_get_view_y(view_camera[0]);
var _camBottom = _camTop + camera_get_view_height(view_camera[0]);
//chỉ thêm vào bộ đếm thời gian nếu trên màn hình (khi enemy khong co tren man hinh thi se khong ban nguoi choi)
if bbox_right > _camLeft && bbox_left < _camRight && bbox_bottom>_camTop && bbox_top< _camBottom
{
timer++;
}


///đặt lại thời gian khi đạt đến giới hạn quai vat
if instance_number(oEnemyParent) >= global.activeEnemyMax || global.totaEnemiesSpawned>= global.enemyRoomMax
{
	timer = 0;
}
if timer >= spawnTime && !place_meeting(x ,y , oMonsterZbBoss)
{
	///tạo kẻ thù
var _inst = instance_create_depth(x,y,depth-1,oMonsterZbBoss);
with(_inst)
{
	///lam cho quai vat vo hinh
	image_alpha=0;
	
state=-1;	
	
}
///thoi gian hoi
timer=0;
	
}
///lấy tọa độ cam
var _camX = camera_get_view_x(view_camera[0]);
var _camY = camera_get_view_y(view_camera[0]);

////ve ra thanh mau
var _border =8;
var _hudX =_camX+_border;
var _hudY =_camY+_border;
if instance_exists(oPlayer)
{

draw_sprite( sHealthbar , 0, _hudX, _hudY);

for(var i=0 ; i< playerMaxHp ; i++)
{
///hiển thị hp hiện tại
var _img =1;
if i+1 <= playerHP {_img=2;};

var _sep=3;
draw_sprite(sHealthbar,_img,_hudX+_sep*i,_hudY);
  }
  var _offset=8;
  var _Offset = _offset;
  if oPlayer.aimDir < 360 && oPlayer.aimDir > 270{_Offset = -_Offset;}
   if oPlayer.aimDir < 135 && oPlayer.aimDir > 45{_Offset = -_Offset;}
  var _ammoX =oPlayer.x+  _Offset;
  var _ammoY =oPlayer.y+  _offset;
  draw_text_transformed(_ammoX,_ammoY,string(global.PlayerAmmo[oPlayer.selectedWeapon]),0.5,0.5,0);
  
}
// ve ra so quai bi giet
var _enemyCountOffset = 24 ;
var _ecHudX=_hudX;
var _ecHudY =_hudY+_enemyCountOffset;
///vẽ nền
draw_sprite(sEnemyCountHud,0,_ecHudX,_ecHudY);

///ve chu
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(Font1);
//số lần tiêu diệt kẻ thù hiện tại
  draw_text_transformed(_ecHudX+30,_ecHudY+5,string(global.enemyKillCount),0.4,0.4,0);
  // tong so ke dich
 draw_text_transformed(_ecHudX+50,_ecHudY+5,"/"+string(global.enemyRoomMax),0.4,0.4,0);
 
///ve ra so dan
//var _playerammo = global.PlayerAmmo;
//for (var i=0;i<array_length(_playerammo) ; i++)
//{
//	draw_text(_ecHudX,_ecHudY+32+16*i,string(_playerammo[i]));
//}

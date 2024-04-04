function check_for_playerBee(){
var _dir = distance_to_object(oPlayer);
//// vao pham vi tan cong cua quai vat  va ngoai pahm vi quuai vat tan cong

if ((_dir <= alert_dis) or alert)and _dir>attack_dis{
	
//quai vat tan cong
alert = true;


///ramdom duong duoi cua quai vat
if calc_path_time-- <=0{
	calc_path_time =calc_path_delay;

var _player = instance_find(oPlayer, 0);
if _player != noone {
    var _found_player = mp_grid_path(global.mp_gird, path, x, y, _player.x, _player.y, choose(0, 1));

if _found_player{
	path_start(path,move_spd,path_action_stop,false);
	
}
	
	
}
}
}else{
///ket thuc tim duong va tan cong
if _dir <=attack_dis{
	path_end();


}		
}
}
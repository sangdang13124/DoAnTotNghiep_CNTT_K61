/// step
if place_meeting(x,y,obj_player) && !instance_exists(Object42)
{
var inst =instance_create_depth(0,0,-900000,Object42);
inst.target_x=target_x;
inst.target_y=target_y;
inst.target_rm=target_rm;



}
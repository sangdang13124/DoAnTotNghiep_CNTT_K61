var _camX = camera_get_view_x(view_camera[0]);
var _camW = camera_get_view_width(view_camera[0]);
var _camY = camera_get_view_y(view_camera[0]);
var _camH = camera_get_view_height(view_camera[0]);
///vẽ một hình chữ nhật màu đen trên màn hình

if(room!= rm_login){
draw_set_alpha(alpha);
draw_rectangle_color(_camX, _camY, _camX + _camW, _camY + _camH , c_black, c_black, c_black,c_black,false);
draw_set_alpha(1);

// ve chu
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_alpha(1);
draw_set_font(Font1);
//game over

 draw_text_transformed(_camX+_camW/2,_camY+_camH/2,"Paused",1,1,0);
 
 

 /// khoi dong llai anh
draw_set_halign(fa_left);
draw_set_valign(fa_top);
}

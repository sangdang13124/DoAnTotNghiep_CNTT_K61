/// @description Insert description here
// You can write your code in this editor
if(room == Room6){
var gui_x = 50;
var gui_y = 50;
var gui_width = 3300;
var gui_height = 1755;

if(draw_daylight){
    var c = light_colour;
    draw_set_alpha(darkness);
    draw_rectangle_color(gui_x, gui_y, gui_x + gui_width, gui_y + gui_height, c, c, c, c, false);
    draw_set_alpha(1);
}
}

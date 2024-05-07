if distance_to_object(obj_player) < DraggingRadius {
	Dragging= true;
}

if(Dragging){
	x= mouse_x;
	y= mouse_y;
}
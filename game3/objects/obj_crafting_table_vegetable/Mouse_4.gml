/// @description Insert description here
// You can write your code in this editor
 
 Activate = !Activate;
 
 if (Activate){
	for(var i = 0 ; i < Width ; i++){
	
	var obj = instance_create_depth(x+(CELLSIZE)/2 -((Width*CELLSIZE))/2)+(i*CELLSIZE)))-150,y- CELLSIZE+100),-1,obj_crafting_vegetable_cell);
	obj.Number = i;
	obj.Parent = id;
	Cells[array_length(Cells)] = obj; 
	}
	
 }else{
	 for(var i=0 ; i < array_length(Cells); i ++){
		 instance_destroy(Cells[i]);
	 }
 }
 
 
 if (Activate){
	for(var i = 0 ; i < Width ; i++){
	
	var obj = instance_create_depth(x+(CELLSIZE)/2 -((Width*CELLSIZE))/2)+(i*CELLSIZE)))-150,y- CELLSIZE+50),-1,obj_crafting_vegetable_cell1);
	obj.Number = i;
	obj.Parent = id;
	Cells[array_length(Cells)] = obj; 
	}
	
 }else{
	 for(var i=0 ; i < array_length(Cells); i ++){
		 instance_destroy(Cells[i]);
	 }
 }
/// @description Insert description here
// You can write your code in this editor
FirstOpen = false;
Width = 7; // Số lượng ô ngang
Height = 5; // Số lượng ô dọc
image_speed = 0;
Activate = false;
 
 var Buff = buffer_load("Warehouse"+string(Number));
 if Buff = -1{
	 FirstOpen = false;
	 ChestBuffer = buffer_create(128,buffer_grow,1);
 }else{
	 FirstOpen = true;
	 ChestBuffer = Buff;
 }
 Cells = [];
 
/////////////////



IsLastCell = true
Number = 0;
Object = noone;
Count = 0;
  
Parent = noone;
Cells = 0;


// Đặt báo động cho obj_inventory_cell
obj_inventory_cell.alarm[0] = 1;

Type = "resources";

 







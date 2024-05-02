/// @description Insert description here
// You can write your code in this editor
FirstOpen = false;
Width = 4;
image_speed = 0;
Activate = false;
 
 var Buff = buffer_load("Chest"+string(Number));
 if Buff = -1{
	 FirstOpen = false;
	 ChestBuffer = buffer_create(128,buffer_grow,1);
 }else{
	 FirstOpen = true;
	 ChestBuffer = Buff;
 }
 Cells = [];
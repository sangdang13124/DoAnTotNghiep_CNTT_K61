/// @description Insert description here
// You can write your code in this editor


obj_crafting_vegetable_cell1.alarm[0]=1;

if Resources[0] >=   CRAFTS3[Number ,1]
  && Resources[1] >=   CRAFTS3[Number ,2]
   && Resources[2] >=   CRAFTS3[Number ,3]
    && Resources[3] >=   CRAFTS3[Number ,4]
  
  
  
  
  {
	   with(obj_inventory_cell){
		for( var i = 0 ; i < array_length(other.NeedResource); i++){
	if other.NeedResource[i] > 0 {
		if object_get_name(Object) = "obj_" + string(other.Resources_name[i]){
			///other.NeedResource[i] -= Count;
			var need = other.NeedResource[i];
			if Count > need{
				Count -= need;
				other.NeedResource[i] = 0;
			}else{
				other.NeedResource[i] -=Count;
			Count = 0;
			Object = noone;
			}
		}
	}	   
  }
}
if NeedResource[0] == 0  &&  NeedResource[1] == 0{
	instance_create_depth(obj_player.x+16 , obj_player.y+8 , -1 ,CRAFTS3[Number,0]);
 NeedResource = [
CRAFTS3[Number , 1],
CRAFTS3[Number , 2],
CRAFTS3[Number , 3],
CRAFTS3[Number , 4]
];
   }
 }
/// @description Insert description here
// You can write your code in this editor


obj_buy_cell.alarm[0]=1;

if Resources[0] >=   CRAFTS2[Number ,1]
  && Resources[1] >=   CRAFTS2[Number ,2]{
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
	instance_create_depth(obj_player.x+30 , obj_player.y+30 , -1 ,obj_money);
 NeedResource = [
CRAFTS2[Number , 1],
CRAFTS2[Number , 2]
];
   }
 }
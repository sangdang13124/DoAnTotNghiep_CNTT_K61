inventoryHover = -1;
slotHover = -1;
inventoryDrag = -1;  
slotDrag = -1;
itemDrag = -1;
 
mouseOver = function()
{
	//kết quả di chuột trống
	slotHover = -1;
	inventoryHover = -1;
	 
	//toa do chuot
	var mx = mouse_x;
	var my = mouse_y;

	/// kiem tra toa do vi tri cua item
	with(oInventory)
	{
		if(point_in_rectangle
		(
		mx,
		my,
		x-6,
		y-6,
		x-6 +12+rowLength*36,
		y-6 +12+(((Inventory_Slot-1) div rowLength)+1)*36
		
		))
{
	/// kiem tra chuot qua tung vi tri
	for (var i = 0 ;i < Inventory_Slot ; i += 1)
	{
		var xx = x + (i mod rowLength) * 36+2;
		var yy = y + (i div rowLength) * 36+2;
		if(point_in_rectangle(mx, my, xx , yy, xx+32, yy+32))
		{
			other.slotHover = i;
			other.inventoryHover = id;
		
		          }
	          }
          } 
      }
}
stateFree = function()
{
	mouseOver();
	//trạng thái kéo một mục nếu vị trí không trống
	if(mouse_check_button(mb_left)) && (slotHover !=-1) && (inventoryHover.inventory[slotHover] !=-1)
	{
		//nhập trạng thái kéo
		state = stateDrag;
		itemDrag = inventoryHover.inventory[slotHover];
		inventoryDrag = inventoryHover;
		slotDrag = slotHover;
	}
}
     stateDrag = function()
	 {
		 mouseOver();
		 if(!mouse_check_button(mb_left))
		 {
			 ///trao đổi với slot nếu di chuột
			 if(slotHover !=-1) InventorySwap(inventoryDrag,slotDrag,inventoryHover,slotHover)
			 //trở về trạng thái tự do
			 state = stateFree ;
			 itemDrag =-1;
			 inventoryDrag = -1;
			 slotDrag = -1;
		 }
	 }
	 
	 
	
	 

state = stateFree;
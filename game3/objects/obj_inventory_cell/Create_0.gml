


// Trong sự kiện Create của obj_inventory_cell
// Tạo một đối tượng obj_use
/// Create Event for obj_global

global.tooltip = noone;



IsLastCell = true
Number = 0;
Object = noone;
Count = 0;
  
Parent = noone;
Cells = 0;


// Đặt báo động cho obj_inventory_cell
obj_inventory_cell.alarm[0] = 1;

Type = "resources";
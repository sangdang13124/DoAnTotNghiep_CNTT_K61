// Sự kiện Chuột Trái Nhấn cho obj_tour_bus

// Tạo một instance của obj_tourist tại vị trí của xe du lịch
var new_tourist = instance_create_depth(x, y+20, 0, obj_tourist);

// Đặt hướng và tốc độ cho người du lịch di chuyển ra khỏi xe
new_tourist.speed = 2; // Điều chỉnh tốc độ di chuyển theo ý muốn
new_tourist.direction = 270; // Đặt hướng di chuyển (270 độ là hướng xuống dưới)

// Định nghĩa vị trí mục tiêu
new_tourist.target_x = x;
new_tourist.target_y = y + 100; // Di chuyển xuống dưới 20 pixel

/// create cuar obj_chicken
// Sự kiện Create của obj_chicken:
hp = 100;
hunger = 100;
thirst = 100;

// Tốc độ di chuyển của gà
move_speed = 0.3;

// Thời gian dừng lại giữa các lần di chuyển
move_delay = 100; // số bước (frames) dừng lại
move_timer = move_delay;
move_direction = irandom_range(1, 4); // Ngẫu nhiên từ 1 đến 4 tượng trưng cho các hướng di chuyển

// Khởi tạo trạng thái
state = "hungry"; // "full" (no), "hungry" (đói), hoặc "egg" (có trứng)
state_timer = 300; // 10 giây (mỗi bước là 1/30 giây)

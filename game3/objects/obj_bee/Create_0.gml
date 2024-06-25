// Sự kiện Create của obj_bee

hp = 100;
hunger = 100;
thirst = 100;

move_speed = 1;

move_delay = 100;
move_timer = move_delay;
move_direction = irandom_range(1, 4);

state = "hungry"; // "full" (no), "hungry" (đói), hoặc "honey" (cho mật)
state_timer = 300;

target_flower = noone; // Đảm bảo rằng target_flower được khởi tạo là noone
returning_home = false;



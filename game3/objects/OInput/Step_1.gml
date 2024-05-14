global.rightKey = keyboard_check( ord("D" ) );
global.leftKey = keyboard_check( ord("A" ) );
global.upKey = keyboard_check( ord("W" ) );
global.downKey = keyboard_check( ord("S" ) );

global.swapKeyPressed = mouse_check_button_pressed(mb_right);

global.startKeyPressed=keyboard_check_pressed((vk_enter));


if (room_get_name(room) != "Room6") && (room_get_name(room) != "RoomShop"){
    global.shootKey = mouse_check_button_pressed(mb_left);
}

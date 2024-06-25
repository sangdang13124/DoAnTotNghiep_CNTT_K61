/// game end obj_chickenhouse
/// @description Insert description here
// You can write your code in this editor
/// Event Game End
// Lưu dữ liệu của con gà khi trò chơi kết thúc
var chickens = [];
with (obj_chicken) {
    array_push(chickens, id);
}
saveChickenData(chickens);

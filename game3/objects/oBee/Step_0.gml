// Step Event của đối tượng muốn bay vào (ví dụ đối tượng enemy)
if (instance_exists(oPlayer)){
var maxDist = 100; // Khoảng cách tối đa để đối tượng bay vào
var targetX = oPlayer.x; // Điểm đích là vị trí của đối tượng bạn muốn bay vào
var targetY = oPlayer.y;

// Kiểm tra khoảng c giữa đối tượng muốn bay vào và đối tượng bay (ví dụ đối tượng enemy)
var dist = point_distance(x, y, targetX, targetY);

if (dist <= maxDist) {
    // Di chuyển đối tượng bay (ví dụ đối tượng enemy) vào đ tượng muốn bay vào (í dụ đối tượng player)
    var moveSpeed = 3; // Tốc độ di chuyển của đối tượng bay
    move_towards_point(targetX, targetY, moveSpeed)

}
if hitConfirm ==true && playerDestroy == true {instance_destroy()}
}
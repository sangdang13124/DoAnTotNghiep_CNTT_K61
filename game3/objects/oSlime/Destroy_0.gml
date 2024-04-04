///thoát khỏi viên đạn nếu chúng ta chưa bắn nó
if instance_exists(bulletInst)&& bulletInst.state == 0
{
	bulletInst.destroy=true;
}

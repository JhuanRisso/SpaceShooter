function scr_Movement(){
	
	var SPD = 0
	
	xInput = keyboard_check(global.moveRight) - keyboard_check(global.moveLeft)
	yInput = keyboard_check(global.moveDown) - keyboard_check(global.moveUp)
	
	dir = point_direction(0, 0, xInput, yInput)
	
	var spdShift = keyboard_check(global.moveSlower)
	
	if spdShift {
		SPD = spdMin
	} else {
		SPD = spdMax
	}
	
	
	if (xInput != 0 or yInput != 0) {
		moveX = lengthdir_x(SPD, dir)
		moveY = lengthdir_y(SPD, dir)
	} else {
		moveX = lerp(moveX, 0, ACL)
		moveY = lerp(moveY, 0, ACL)
	}
	
	x += moveX
	y += moveY
	
}
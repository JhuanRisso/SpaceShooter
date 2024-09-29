function scr_pSprites(){
	
	var sprite = spr_Ship_00
	var yScale = 1
	
	if xInput != 0 {
		subImg = 1
	} else {
		subImg = 0
	}
	
	draw_sprite_ext(sprite, subImg, x, y, 1, yScale, 0, #ffffff, 1)
	
}
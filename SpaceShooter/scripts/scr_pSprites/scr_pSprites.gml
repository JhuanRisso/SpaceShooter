function scr_pSprites(){
	
	var sprite = spr_Ship_00
	var xScale = 1

	
	switch xInput {
		case 0:
		subImg = 0
		xScale = 1
		break;
		
		case 1:
		subImg = 1
		xScale = 1
		break;
		
		case -1:
		subImg = 1
		xScale = -1
		break;
	}
	
	draw_sprite_ext(sprite, subImg, x, y, xScale, 1, 0, #ffffff, 1)
	
}
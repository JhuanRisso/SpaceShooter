function scr_pGuns(){
	
	if keyboard_check(global.KeyShoot) {
		if alarm[0] < 0 {
			instance_create_layer(x, y, "Projectiles", oProjectiles)
			alarm[0] = 10
		}
	}
	
}
switch State {
	case 0:
		yPos = lerp(yPos, 32, .02)
	break;
	}
	
y = yPos
x = xPos

bullet = instance_place(floor(x), floor(y), oProjectiles);
if (bullet)
{
	Life -= oProjectiles.Damage
    with (bullet){
        instance_destroy();
    }
}

if Life <= 0 {
	instance_destroy(self)
}
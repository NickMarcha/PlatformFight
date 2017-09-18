if(hp <= 0) {
	with(instance_create_layer(x,y,layer, obj_EnemyDead)) {
		direction = other.hitFrom;
		hsp = lengthdir_x(3,direction);
		vsp = lengthdir_y(3,direction)-2;
		if(sign(hsp != 0)) {
		image_xscale = abs(image_xscale) *sign(hsp);
		}
	}
	instance_destroy(self);
	
}

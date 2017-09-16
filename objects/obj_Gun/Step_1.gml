/// @description Insert description here
// You can write your code in this editor

x = obj_Player.x;
y = obj_Player.y+20;
image_angle = point_direction(x,y,mouse_x,mouse_y);
fireingDelay --;
recoil = max (0, recoil -1);

if(mouse_check_button(mb_left)) && (fireingDelay < 0 && !obj_Player.diveKick) {
	fireingDelay = 10;
	recoil = 4;
	
	with(instance_create_layer(x,y,"Bullets",obj_Bullet)) {
		speed = 25;
		direction = other.image_angle + random_range(-3,3);
		image_angle = direction;
		
	}
	
	with(obj_Player) {
		hspI = (hsp - lengthdir_x(other.recoil,other.image_angle))*2;
		vsp = (vsp - lengthdir_y(other.recoil,other.image_angle))*0.5;
	}
}

x = x - lengthdir_x(recoil,image_angle);
y = y - lengthdir_y(recoil,image_angle);

if( image_angle > 90 && image_angle < 270) {
	image_yscale = abs(image_yscale) * -1;
	
} else {
	image_yscale = abs(image_yscale);
}

/// @description Insert description here
// You can write your code in this editor

if(hspI< -1) {
	hspI ++;
} else if( hspI > 1) {
	hspI --;
} else{
	hspI = 0;
}


vsp += grv;


//horizontal Collision
if(place_meeting(x+hsp,y,obj_Wall)) {
	while(!place_meeting(x+sign(hsp),y,obj_Wall)) {
	
		x += sign(hsp);
	}
	hsp = 0;
}


x += hsp;

//vertical Collision


if(place_meeting(x,y+vsp,obj_Wall)) {
	while(!place_meeting(x,y+sign(vsp),obj_Wall)) {
	
		y += sign(vsp);
	}
	vsp = 0;
}


y += vsp;

//animation

if(!place_meeting(x,y+1,obj_Wall)) {
	sprite_index = spr_EnemyA;
	image_speed = 0;
	if(sign(vsp) > 0) {
		image_index =1;
	} else {
	image_index = 0;
	}
} else{
	image_speed = 1;
	
	if(hsp == 0) {
		sprite_index = spr_Enemy;
	}else {
		sprite_index = spr_EnemyR;
	}
}

if(hsp !=0) {
	image_xscale = abs(image_xscale)*sign(hsp);
	//obj_Gun.image_xscale = abs(obj_Gun.image_xscale)*sign(hsp);
}

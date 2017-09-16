/// @description Insert description here
// You can write your code in this editor
key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_right = keyboard_check(vk_right)|| keyboard_check(ord("D"));
key_up = keyboard_check_pressed(vk_up)|| keyboard_check_pressed(ord("W"));
key_down = keyboard_check_pressed(vk_down)|| keyboard_check_pressed(ord("S"));


//slow Motion
key_space = keyboard_check(vk_space);

if(key_space) {
	room_speed = 30;
} else {
	room_speed = 60;
}

//gun recoil horisontal solution
if(hspI< -1) {
	hspI ++;
} else if( hspI > 1) {
	hspI --;
} else{
	hspI = 0;
}

var move = key_right - key_left
//movement
if(!diveKick) {
	hsp = move * walkSpd + hspI;
}
vsp += grv;


if(place_meeting(x,y+1,obj_Wall) && key_up) {
	vsp = -10;

}
if(!place_meeting(x,y+1,obj_Wall) && key_down) {
	vsp = 7;
	hsp = hsp + 5 * sign(hsp);
	diveKick = true;
}
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

if(diveKick&& !place_meeting(x,y+1,obj_Wall)) {
	image_speed = 0;
	sprite_index = spr_PlayerDK;
	instance_create_layer(x,y+32,"Cracks",obj_Fire)
	
} else if(!place_meeting(x,y+1,obj_Wall)) {
	sprite_index = spr_PlayerA;
	image_speed = 0;
	if(sign(vsp) > 0) {
		image_index =1;
	} else {
	image_index = 0;
	}
} else if(diveKick) {
	diveKick = false;
	instance_create_layer(x-32,y+32,"Cracks",obj_Crack);
	instance_create_layer(x,y,"Cracks",obj_screenShake);
	obj_Gun.fireingDelay = 18;
}else{
	image_speed = 1;
	
	if(hsp == 0) {
		sprite_index = spr_Player;
	}else {
		sprite_index = spr_PlayerR;
	}
}

if(hsp !=0) {
	image_xscale = abs(image_xscale)*sign(hsp);
	//obj_Gun.image_xscale = abs(obj_Gun.image_xscale)*sign(hsp);
}

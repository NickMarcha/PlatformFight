/// @description Insert description here
// You can write your code in this editor
if(done==0) {
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
		if(vsp > 0) {
			done = 1;
			image_index = 1;
		}
		while(!place_meeting(x,y+sign(vsp),obj_Wall)) {
	
			y += sign(vsp);
		}
		vsp = 0;
	}


	y += vsp;

}



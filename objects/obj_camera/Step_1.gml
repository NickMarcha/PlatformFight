/// @description Insert description here
// You can write your code in this editor

//U the D
if(!instance_exists(follow)) {
	exit;
}
xTo = follow.x;
yTo = follow.y;

//U the P

x += (xTo-x) /25;
y += (yTo-y) /25;

x = clamp(x,0+view_w_half,room_width-view_w_half);
y = clamp(y,0+view_h_half,room_height-view_h_half);

// U the CV

camera_set_view_pos(cam,x-view_w_half,y-view_h_half);
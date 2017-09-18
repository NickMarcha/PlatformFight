/// @description Insert description here
// You can write your code in this editor

if(shake) {
	var ran_x = random_range(-5, 5);
	var ran_y = random_range(-5, 5);
	camera_set_view_pos(view_camera[0],obj_camera.x-obj_camera.view_w_half+ran_x, obj_camera.y-obj_camera.view_h_half+ ran_y);
	view_x = camera_get_view_x(view_camera[0]);
	view_y = camera_get_view_y(view_camera[0]);
}
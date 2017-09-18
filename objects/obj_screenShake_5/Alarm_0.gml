/// @description Insert description here
// You can write your code in this editor
shake = false;

camera_set_view_pos(view_camera[0],obj_camera.x-obj_camera.view_w_half,obj_camera.y-obj_camera.view_h_half);

instance_destroy(self);
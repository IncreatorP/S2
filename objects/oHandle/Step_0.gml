/// @description Insert description here
// You can write your code in this editor

var scrollamt = 4;

if (position_meeting(mouse_x,mouse_y, self)) {
	with (oHandle) 
	{
		hover = noone;
		image_index = 0;
	} 
	hover = self;
	image_index = 1;
}

if (mouse_wheel_down()) {
	if (hover) {
		z += scrollamt;	 
		with (owner)
		{
			var package = [other.num, other.xcoord, other.ycoord, other.z];
			ds_grid_set(grid, other.xx, other.yy, package);
		}	
	}
}

if (mouse_wheel_up()) {
	if (hover) {
		z -= scrollamt;	 
		with (owner)
		{
			var package = [other.num, other.xcoord, other.ycoord, other.z];
			ds_grid_set(grid, other.xx, other.yy, package);
		}	
	}
}
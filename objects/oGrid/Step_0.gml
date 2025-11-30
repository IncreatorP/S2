/// @description Insert description here
// You can write your code in this editor

var grid = 64;

smx = floor(mouse_x/(grid/2));
smy = floor(mouse_y/(grid/2));

mx = smx * grid/2;
my = smy * grid/2;

// grid normalization)
if (smy % 2 == 0)
	smx = floor(smx/2);
else
	smx = floor(smx/2) + 1;

smy = floor(smy/2);
/// @description Insert description here
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space);

var _move = key_right - key_left;

hsp = _move * walksp;

vsp = vsp + grv;

if (place_meeting(x,y+1,obj_collision)) && (key_jump)
{
	vsp = -jumpsp
}

if (place_meeting(x+hsp,y,obj_collision))
{
	while (!place_meeting(x+sign(hsp),y,obj_collision))
	{
		x = x + sign(hsp);	
	}
	hsp = 0;
}
x = x + hsp;

if(place_meeting(x,y+vsp,obj_collision))
{
	while (!place_meeting(x,y+sign(vsp),obj_collision))
	{
		y= y+ sign(vsp);
	}
	vsp= 0;
}
y = y + vsp;




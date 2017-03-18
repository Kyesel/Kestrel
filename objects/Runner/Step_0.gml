///Get Player Input
keyUp = keyboard_check_pressed(vk_up);
keyDown = keyboard_check(vk_down);
keyRight = keyboard_check(vk_right);
keyLeft = keyboard_check(vk_left);


///Jump
if(place_meeting(x, y+1, Floor))
{
    if(keyUp == true)
    {
        jumping = true;
        alarm[0] = 10;
    }
}
if(jumping = true)
{
    if(keyboard_check(vk_up))
    {
        vsp = -jumpSpeed;
    }
}


///Move
x += hsp;
y += vsp;

///Gravity
if(vsp < terminalVelocity)
{
    vsp += grav;
}

///Collision
//Vertical collision with floor
if(place_meeting(x, y + vsp, Floor))
{
    /*while(!place_meeting(x, y+sign(vsp), Floor))
    {
        y += sign(vsp);
    }*/
    vsp = 0;
}
//Horizontal collision with floor
if(place_meeting(x + moveSpeed, y, Floor))
{
	hsp = 0
}
else if(!place_meeting(x + moveSpeed, y, Floor))
{
hsp = moveSpeed
}


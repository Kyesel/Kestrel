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
        alarm[0] = 20;
    }
}
if(jumping == true)
{
    if(keyboard_check(vk_up))
    {
		if(!place_meeting(x, y + vsp - 5, Floor))
		{
			vsp = -jumpSpeed;
		}
		else
		{
			jumping = false;
		}
		
    }
	else
	{
		jumping = false;
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
	
    while(!place_meeting(x, y+sign(vsp), Floor))
    {
        y += sign(vsp);
    }
	
    vsp = 0;
}

//Die on contact with floor from the side
if(place_meeting(x,y,Floor))
{
	room_restart();
}
//Stop on contact with floor from the side OFF
/*if(place_meeting(x + moveSpeed, y, Floor))
{
	hsp = 1
	while(!place_meeting(x + sign(hsp), y, Floor))
    {
        x += sign(hsp);
    }
	hsp = 0
}
else if(!place_meeting(x + moveSpeed, y, Floor))
{
	hsp = moveSpeed
}*/

///Changing states

if(crouching == true)
{
	if(currentColor == "")
	{
		image_index = 3;
	} else if(currentColor == "blue")
	{
		image_index = 4;
	} else if(currentColor == "red")
	{
	image_index = 5;
	}
} else if(crouching == false)
{
	if(currentColor == "")
	{
		image_index = 0;
	} else if(currentColor == "blue")
	{
		image_index = 1;
	} else if(currentColor == "red")
	{
	image_index = 2;
	}
}


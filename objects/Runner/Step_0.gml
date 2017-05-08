/// @description Player input and movement
///Get Player Input
keyUp = keyboard_check_pressed(vk_up);
keyDown = keyboard_check(vk_down);
keyRight = keyboard_check(vk_right);
keyLeft = keyboard_check(vk_left);

///Check to see if player is in air
if(!(place_meeting(x, y + 10, Floor)))
{
	inAir = true;
} 
else
{
	inAir = false;
}

///Jump
if(place_meeting(x, y+1, Floor))
{
    if(keyUp == true)
    {
        jumping = true;
        alarm[0] = 10;
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






///Gravity
if(vsp < terminalVelocity)
{
    vsp += grav;
}

///Collision
//Horizontal collision with floor
if(place_meeting(x + moveSpeed,y ,Floor))
{	
	hsp = 0
}
else
{
	hsp = moveSpeed
}
//Move Horizontally
x += hsp;

//Vertical collision with floor
if(place_meeting(x, y + vsp, Floor))
{
	
    while(!place_meeting(x, y+sign(vsp), Floor))
    {
        y += sign(vsp);
    }
	
    vsp = 0;
}
//Move Vertically
y += vsp;

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

///Reversal tiles
if(place_meeting(x, y, Floor_Reverse))
{
	hsp *= -1;
	moveSpeed *= -1;
	if(sign(vsp) == 1)
	{
	vsp += -30;
	}
}

//Die on contact with wall from the side
if(place_meeting(x,y,Floor_Wall))
{
	room_restart();
}

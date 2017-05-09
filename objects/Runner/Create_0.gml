/// @description Initialize
colorChangeable = true;
currentColor = "";
jumping = false;
crouching = false;
inAir = false;
jumpSpeed = 25;
moveSpeed = 10;
hsp = moveSpeed;
accelaration = 2;
grav = 2;
terminalVelocity = 20;
vsp = 0;
image_index = 0;
image_speed = 0;

keyUp = keyboard_check_pressed(vk_up);
keyDown = keyboard_check(vk_down);
keyRight = keyboard_check(vk_right);
keyLeft = keyboard_check(vk_left);


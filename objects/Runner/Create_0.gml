///Initialize
jumping = false;
jumpSpeed = 20;
moveSpeed = 10;
hsp = moveSpeed;
grav = 2;
terminalVelocity = 50;
vsp = 0;
image_speed = 0;

keyUp = keyboard_check_pressed(vk_up);
keyDown = keyboard_check(vk_down);
keyRight = keyboard_check(vk_right);
keyLeft = keyboard_check(vk_left);


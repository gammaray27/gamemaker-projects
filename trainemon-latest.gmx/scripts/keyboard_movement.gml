/// keyboard movement

/* 
Looks for the up/down/left/right_keys as instance
variables and uses them to handle keyboard movement
including diag. Also looks for cur_speed. 
Call from the step event.

*/

up = keyboard_check(up_key);
down = keyboard_check(down_key);
left = keyboard_check(left_key);
right = keyboard_check(right_key);

if (up or down or left or right) { 
  speed = normal_speed;
}

if (up)         { direction = 90; }
else if (down)  { direction = 270; }
else if (left)  { direction = 180; }
else if (right) { direction = 0; }

// diags later to override compass directions
if (up and right)        { direction = 45; }
else if (up and left)    { direction = 135; }
else if (down and right) { direction = 315; }
else if (down and left)  { direction = 225; }

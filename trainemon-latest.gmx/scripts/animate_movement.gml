/// animate

/*
Expects the following to be set on the calling instance:
 first_idle
 last_idle
 first_up
 last_up
 first_down
 last_down
 first_left
 last_left
 first_right (optional if flip_left_for_right)
 last_right (optional if flip_left_for_right)
*/

var next_index = image_index + image_speed;

// up / away
if ( direction > 45 && direction < 135  ) {
  if (image_index >= first_up && next_index < last_up + 1) {
    image_index = next_index;
  } else {
    image_index = first_up;
  }
}

// down / toward
if ( direction > 225 && direction < 315 ) {
  if (image_index >= first_down && next_index < last_down + 1) {
    image_index = next_index;
  } else {
    image_index = first_down;
  }
}

// sideways right
if ( direction >= 315 || direction <= 45 ) {
  if (image_index >= first_right && next_index < last_right + 1) {
    image_index = next_index;
  } else {
    image_index = first_right;
    image_xscale = 1;
  }
}

// sideways left
if ( direction >= 135 && direction <= 225 ) {
  if (flip_right_for_left) {
    if (image_index >= first_right && next_index < last_right + 1) {
      image_index = next_index;
    } else {
      image_index = first_right;
      image_xscale = -1;
    }
  } else {
    if (image_index >= first_left && next_index < last_left + 1) {
      image_index = next_index;
    } else {
      image_index = first_left;
    }
  }
}

// idle, here
if ( speed == 0 ) {
  if (image_index >= first_idle && next_index < last_idle + 1) {
    image_index = next_index;
  } else {
    image_index = first_idle;
  }
}


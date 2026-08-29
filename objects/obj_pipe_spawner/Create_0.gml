spawn_timer = 0;

spawn_interval = 90;

gap_min = 450;
gap_max = 900;

// --- тръби ---
gap_size = 420;      // височина на процепа, през който минава птицата
edge_margin = 200;   // процепът не се лепи за тавана и за земята
pipe_xscale = 5;     // дебелина на тръбата (спрайтът е 32px широк)

// горният ръб на земята; ако няма obj_land - дъното на стаята
ground_y = instance_exists(obj_land) ? obj_land.bbox_top : room_height;

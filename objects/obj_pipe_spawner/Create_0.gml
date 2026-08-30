spawn_timer = 0;

spawn_interval = 90;

gap_min = 450;
gap_max = 900;


gap_size = 420;      
edge_margin = 200;   
pipe_xscale = 6;    

ground_y = instance_exists(obj_land) ? obj_land.bbox_top : room_height;

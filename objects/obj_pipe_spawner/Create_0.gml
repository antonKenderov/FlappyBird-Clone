spawn_timer = 0;

spawn_interval = 90;

gap_min = 450;
gap_max = 900;


gap_size = 420;      
edge_margin = 200;   
pipe_xscale = 6;    

ground_y = instance_exists(obj_land) ? obj_land.bbox_top : room_height;

// --- фон ---
// Спрайтът е 256x256, стаята е 1920 висока. Мащабът и отместването не се
// задават от room editor-а (GMRBackgroundLayer няма полета за тях), затова
// са тук.
// 8 е цяло число нарочно: при пиксел арт нецелият мащаб дава пиксели с
// различна ширина.
// Слоят се подравнява по ДОЛНИЯ си ръб спрямо земята, за да стои силуетът
// на града точно върху нея. Излишъкът излиза над тавана на стаята - там
// спрайтът е просто небе и няма какво да се загуби.
// Скоростта нарочно НЕ се пипа тук - тя си остава в room editor-а,
// за да има едно място, от което се настройва.
var _bg_scale = 8;
var _bg_height = sprite_get_height(spr_background) * _bg_scale;

var _lay = layer_get_id("Background");
var _bg  = layer_background_get_id(_lay);

layer_background_xscale(_bg, _bg_scale);
layer_background_yscale(_bg, _bg_scale);
layer_background_htiled(_bg, true);
layer_background_vtiled(_bg, false);

layer_y(_lay, ground_y - _bg_height);

///grid_place_meeting(x,y)
var xx = argument0;
var yy = argument1;

// check for x meeting
return (o_level.grid[# xx, yy] != WALL && 
        o_level.grid[# xx, yy] != VOID &&
        xx < room_width div CELL_WIDTH &&
        xx > 0 &&
        yy < room_height div CELL_HEIGHT &&
        yy > 0
        );

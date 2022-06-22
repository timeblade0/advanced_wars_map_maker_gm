//make new tiles
if(keyboard_check(ord("X")) || mouse_check_button(mb_left))
{
    if(y>32)    //cannot place tiles in menu bar
    {
        with(obj_grass) //check each tile
        {
            if(x=obj_selector.x && y=obj_selector.y){instance_destroy();}
        }
        instance_create(x,y,global.current_object);
    }
}

x=mouse_x-(mouse_x%32);
y=mouse_y-(mouse_y%32);

//walls
if(x<0){x+=32} //left wall
if(x>room_width-32){x-=32} //right wall
if(y<0){y+=32} //top wall
if(y>room_height-32){y-=32} //bottem wall

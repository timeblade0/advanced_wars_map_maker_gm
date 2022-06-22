//select a tile
if(keyboard_check_pressed(ord("Z")) || mouse_check_button_pressed(mb_right))
{
    global.current_tile=other.sprite_index;
    global.current_object=other.object_index;
}


/// @desc    Returns the x-coordinate of the player's cursor
///          The coordinate space should be a member of the INPUT_COORD_SPACE enum:
///              .ROOM      Room coordinates; should be the same as mouse_x and mouse_y. This is the default value
///              .GUI       GUI coordinates
///              .DISPLAY   Raw device-space coordinates
/// 
/// @param   [playerIndex=0]
/// @param   [coordSpace]     Coordinate space to use. If not specified, the coordinate space set by input_cursor_coord_space_set() is used

function input_cursor_x(_player_index = 0, _outputSystem = global.__input_pointer_coord_space)
{
    __INPUT_VERIFY_PLAYER_INDEX
    
    return __input_transform_coordinate(global.__input_players[_player_index].__cursor.__x,
                                        global.__input_players[_player_index].__cursor.__y,
                                        global.__input_pointer_coord_space,
                                        _outputSystem).x;
}
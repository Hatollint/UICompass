stock GetDirectionOfAircraft(&Float:angle, &Float:x, &Float:y, &Float:z, &Float:point_x, &Float:point_y, Float:fault = 0.0)
{
    static
        Float:distance = 4000.0;

    z = 30.0;
    angle = floatrandom(180);
    x = 0.0 + distance * -floatsin(angle, degrees);
    y = 0.0 + distance * floatcos(angle, degrees);
    
    distance *= 2.0;
    angle += fault + floatrandom(90) - 45.0;
    point_x = x + distance * -floatsin(angle, degrees);
    point_y = y + distance * floatcos(angle, degrees);
    distance = 4000.0;
    
    return 1;
}

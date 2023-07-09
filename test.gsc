init()
set_run_speed()
{
    rand = randomintrange( level.zombie_move_speed, level.zombie_move_speed + 35 ); 

//    self thread print_run_speed( rand );
    if( rand <= 35 )
    {
        self.zombie_move_speed = "walk"; 
    }
    else if( rand <= 70 )
    {
        self.zombie_move_speed = "run"; 
    }
    else
    {    
        self.zombie_move_speed = "sprint"; 
    }
}
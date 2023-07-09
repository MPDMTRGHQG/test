init()
{
    level.roundStartTime = 0; // Reset the round start time

    // Hook into the game mode to override zombie sprint behavior
    level.onNotify("start_round", overrideZombieSprint);
}

overrideZombieSprint()
{
    // Check if it's round 1
    if (level.roundNumber >= 1)
    {
        level.zombie_walkers_per_sprinters_ratio = 0; // Set the ratio to 0 to make all zombies sprint
        level.zombie_walkers = 0; // Set the number of walker zombies to 0
    }
}

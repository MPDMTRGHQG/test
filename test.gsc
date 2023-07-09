// T5 Zombies Always Sprint Script

maps\_zombiemode::main()
{
    level.zombie_walkers_per_sprinters_ratio = 0; // Set the ratio to 0 to make all zombies sprint
    level.zombie_walkers = 0; // Set the number of walker zombies to 0

    level.onNotify("startgame_intro", startRoundOverride);
}

startRoundOverride()
{
    if (level.roundNumber == 1)
    {
        level.zombie_walkers_per_sprinters_ratio = 0; // Set the ratio to 0 to make all zombies sprint
        level.zombie_walkers = 0; // Set the number of walker zombies to 0
    }
}

// Set all walking zombies to always run
level thread alwaysRunZombies();

// Function to make zombies always run
alwaysRunZombies()
{
    for(;;)
    {
        // Loop through all the zombies in the current level
        for(;;)
        {
            level.zombieManager.forEachZombie(makeZombieAlwaysRun);
            wait(0.1);
        }
        wait(1);
    }
}

// Function to make a single zombie always run
makeZombieAlwaysRun(zombie)
{
    if (isDefined(zombie) && zombie.isAlive() && !zombie.isRunning())
    {
        zombie.sprint();
    }
}

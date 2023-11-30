state("mc2")
{
    string255 loadedCutscene : "mc2.exe", 0x2C31A0;
    string255 previousCutscene : "mc2.exe", 0x2C35E0;
}

start
{
    return current.loadedCutscene != old.loadedCutscene && old.loadedCutscene == "mc2intro.pss";
}

split
{
    return current.loadedCutscene != old.loadedCutscene && old.loadedCutscene != "mc2intro.pss";
}
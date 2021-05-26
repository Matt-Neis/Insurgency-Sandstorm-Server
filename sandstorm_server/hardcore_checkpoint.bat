@echo off

::Map list
REM set strMapList[0]=Canyon?Scenario=Scenario_Crossing_Checkpoint_Insurgents,Mode="CheckpointHardcore"
REM set strMapList[1]=Canyon?Scenario=Scenario_Crossing_Checkpoint_Security
REM set strMapList[2]=Farmhouse?Scenario=Scenario_Farmhouse_Checkpoint_Insurgents
REM set strMapList[3]=Farmhouse?Scenario=Scenario_Farmhouse_Checkpoint_Security
REM set strMapList[4]=Mountain?Scenario=Scenario_Summit_Checkpoint_Insurgents
REM set strMapList[5]=Mountain?Scenario=Scenario_Summit_Checkpoint_Security
REM set strMapList[6]=OilField?Scenario=Scenario_Refinery_Checkpoint_Insurgents
REM set strMapList[7]=OilField?Scenario=Scenario_Refinery_Checkpoint_Security
REM set strMapList[8]=Precinct?Scenario=Scenario_Precinct_Checkpoint_Insurgents
REM set strMapList[9]=Precinct?Scenario=Scenario_Precinct_Checkpoint_Security
REM set strMapList[10]=Town?Scenario=Scenario_Hideout_Checkpoint_Insurgents
REM set strMapList[11]=Town?Scenario=Scenario_Hideout_Checkpoint_Security
REM set strMapList[12]=Compound?Scenario=Scenario_Outskirts_Checkpoint_Insurgents
REM set strMapList[13]=Compound?Scenario=Scenario_Outskirts_Checkpoint_Security
REM set strMapList[14]=Ministry?Scenario=Scenario_Ministry_Checkpoint_Insurgents
REM set strMapList[15]=Ministry?Scenario=Scenario_Ministry_Checkpoint_Security
REM set strMapList[16]=Sinjar?Scenario=Scenario_Hillside_Checkpoint_Insurgents
REM set strMapList[17]=Sinjar?Scenario=Scenario_Hillside_Checkpoint_Security
REM set strMapList[18]=PowerPlant?Scenario=Scenario_PowerPlant_Checkpoint_Insurgents
REM set strMapList[19]=PowerPlant?Scenario=Scenario_PowerPlant_Checkpoint_Security

::Gamemode (Please pick the right gamemode for the right map and comment out the rest with :: Some will only work with specific map)
::set strGameMode=Firefight
::set strGameMode=Frontline
::set strGameMode=Occupy
::set strGameMode=Skirmish
::set strGameMode=CaptureTheBase
::set strGameMode=TeamDeathmatch
::set strGameMode=Filming
::set strGameMode=Mission
::set strGameMode=Checkpoint
set strGameMode=CheckpointHardcore
::set strGameMode=CheckpointTutorial
::set strGameMode=Operations
::set strGameMode=Outpost
::set strGameMode=Domination

::Mutator list
::AllYouCanEat
::AntiMaterielRiflesOnly
::BoltActionsOnly
::Broke
::BulletSponge
::Competitive
::CompetitiveLoadouts
::FastMovement
::Frenzy
::Guerrillas
Hardcore
::HeadshotOnly
::HotPotato
::LockedAim
::NoAim
::PistolsOnly
::ShotgunsOnly
::SlowCaptureTimes
::SlowMovement
::SoldierOfFortune
::SpecialOperations
::Strapped
::Ultralethal
::Vampirism
::Warlords

::Ruleset (Please pick one only and comment out the rest with :: Some might not work)
::Using Ruleset will override some of your game.ini config. Expect some config not to work
::set strRuleSet=CheckpointFrenzy
::set strRuleSet=CompetitiveFirefight
::set strRuleSet=CompetitiveTheater
::set strRuleSet=MatchmakingCasual
set strRuleSet=OfficialRules


::GSLTToken from https://steamcommunity.com/dev/managegameservers with App ID 581320
REM Insurgency\Binaries\Win64\InsurgencyServer-Win64-Shipping.exe %strMap%?port=27102?queryport=27131?MaxPlayers=10?game=%strGameMode% -mutators=Hardcore,FastMovement -LogCmds="LogGameplayEvents Log" -log -AdminList=Admins -MapCycle=MapCycle -GameStats -GSLTToken=XXXXXXXXXXXXXXXXXXXXXXXXXXXXX -EnableCheats -NoEAC -Mods ModList=Mods.txt
InsurgencyServer.exe %strMap%
::RNG to pick random map
REM set /A nRng=%RANDOM% %%19
REM setlocal enableDelayedExpansion
REM set strMap=!strMapList[%nRng%]!MaxPlayers=2 -mutators=Hardcore -Port=27102 -QueryPort=27131 -log -hostname="GrumTest"
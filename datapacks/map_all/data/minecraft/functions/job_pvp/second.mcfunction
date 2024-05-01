##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
spawnpoint @a[team=job_pvp] -121 6 234 90
spawnpoint @a[team=wait.jobpvp] -121 6 234 90
effect give @a[team=wait.jobpvp] speed 1 0 true
effect give @a[team=wait.jobpvp] jump_boost 1 0 true
effect give @a[team=wait.jobpvp] resistance 2 25 true
effect give @a[team=wait.jobpvp] regeneration 2 25 true
effect give @a[team=job_pvp] night_vision 20 25 true
execute as @a[team=job_pvp,level=1..] run xp add @s -1 levels

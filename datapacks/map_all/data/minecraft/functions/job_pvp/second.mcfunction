spawnpoint @a[team=job_pvp] -62 30 176
spawnpoint @a[team=wait.jobpvp] -62 30 176
effect give @a[team=wait.jobpvp] resistance 2 25 true
effect give @a[team=wait.jobpvp] regeneration 2 25 true
effect give @a[team=job_pvp] night_vision 20 25 true
execute as @a[team=job_pvp,level=1..] run xp add @s -1 levels
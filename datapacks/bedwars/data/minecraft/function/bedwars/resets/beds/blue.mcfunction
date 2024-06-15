##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 

execute if score bw.mode board matches 5 run setblock -303 31 276 blue_bed[facing=south,occupied=true]

execute if score bw.mode board matches 5 run setblock -303 31 277 blue_bed[facing=south,part=head,occupied=true]

execute if score bw.mode board matches 1..3 run setblock -303 31 276 blue_bed[facing=south,occupied=true]

execute if score bw.mode board matches 1..3 run setblock -303 31 277 blue_bed[facing=south,part=head,occupied=true]


execute if score bw.mode board matches 4 run setblock -326 35 268 blue_bed[facing=west,occupied=true,part=foot]

execute if score bw.mode board matches 4 run setblock -327 35 268 blue_bed[facing=west,occupied=true,part=head]



execute if score bw.mode board matches 6 run setblock -296 28 276 blue_bed[occupied=true,facing=east]

execute if score bw.mode board matches 6 run setblock -295 28 276 blue_bed[occupied=true,facing=east,part=head]

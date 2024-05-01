##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 

execute if score bw.mode board matches 5 run setblock -237 31 208 lime_bed[facing=east,occupied=true]

execute if score bw.mode board matches 5 run setblock -236 31 208 lime_bed[facing=east,part=head,occupied=true]

execute if score bw.mode board matches 1..3 run setblock -237 31 208 lime_bed[facing=east,occupied=true]

execute if score bw.mode board matches 1..3 run setblock -236 31 208 lime_bed[facing=east,part=head,occupied=true]


execute if score bw.mode board matches 4 run setblock -248 35 232 lime_bed[facing=south,occupied=true,part=foot]

execute if score bw.mode board matches 4 run setblock -248 35 233 lime_bed[facing=south,occupied=true,part=head]


execute if score bw.mode board matches 6 run setblock -239 28 201 lime_bed[occupied=true,facing=north]

execute if score bw.mode board matches 6 run setblock -239 28 200 lime_bed[occupied=true,facing=north,part=head]

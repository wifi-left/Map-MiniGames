##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 

execute if score bw.mode board matches 5 run setblock -305 31 142 red_bed[facing=north,occupied=true]

execute if score bw.mode board matches 5 run setblock -305 31 141 red_bed[facing=north,part=head,occupied=true]

execute if score bw.mode board matches 1..3 run setblock -305 31 142 red_bed[facing=north,occupied=true]

execute if score bw.mode board matches 1..3 run setblock -305 31 141 red_bed[facing=north,part=head,occupied=true]


execute if score bw.mode board matches 4 run setblock -283 35 154 red_bed[facing=east,part=head,occupied=true]

execute if score bw.mode board matches 4 run setblock -284 35 154 red_bed[facing=east,part=foot,occupied=true]


execute if score bw.mode board matches 6 run setblock -312 28 144 red_bed[occupied=true,facing=west]
execute if score bw.mode board matches 6 run setblock -313 28 144 red_bed[occupied=true,facing=west,part=head]

execute if score bw.mode board matches 7 run setblock -257 27 167 red_bed[occupied=true,facing=east]
execute if score bw.mode board matches 7 run setblock -256 27 167 red_bed[occupied=true,facing=east,part=head]

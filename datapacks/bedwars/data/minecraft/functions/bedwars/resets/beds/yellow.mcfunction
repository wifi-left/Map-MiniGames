##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 

execute if score bw.mode board matches 1..3 run setblock -371 31 210 yellow_bed[facing=west,occupied=true]

execute if score bw.mode board matches 1..3 run setblock -372 31 210 yellow_bed[facing=west,part=head,occupied=true]

execute if score bw.mode board matches 5 run setblock -371 31 210 yellow_bed[facing=west,occupied=true]

execute if score bw.mode board matches 5 run setblock -372 31 210 yellow_bed[facing=west,part=head,occupied=true]


execute if score bw.mode board matches 4 run setblock -362 35 189 yellow_bed[part=foot,facing=north,occupied=true]

execute if score bw.mode board matches 4 run setblock -362 35 188 yellow_bed[part=head,facing=north,occupied=true]


execute if score bw.mode board matches 6 run setblock -369 28 217 yellow_bed[facing=south,occupied=true]

execute if score bw.mode board matches 6 run setblock -369 28 218 yellow_bed[part=head,facing=south,occupied=true]

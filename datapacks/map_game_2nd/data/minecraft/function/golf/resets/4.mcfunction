##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute in golfworld run forceload add -248 25 -173 77

execute in golfworld run clone -248 13 25 -173 27 77 -97 -63 34 strict

execute in golfworld run summon marker -91 -60 40 {Tags:["golf.ballstart"]}
execute in golfworld run summon marker -91 -60 39 {Tags:["golf.start"]}

execute in golfworld run forceload remove -248 25 -173 77
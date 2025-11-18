##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute if entity @a[team=play.hotpot.k] if entity @a[tag=hp.flag] run function hotpotever/changeto

kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{hotpot:1}}}}]
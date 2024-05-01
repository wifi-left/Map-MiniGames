##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
advancement revoke @s only player_hit_ball

scoreboard players set golf.scb.tmp board 5
execute if data entity @s {SelectedItem:{id:"minecraft:stick"}} run scoreboard players set golf.scb.tmp board 5
execute if data entity @s {SelectedItem:{id:"minecraft:wooden_shovel"}} run scoreboard players set golf.scb.tmp board 10
execute if data entity @s {SelectedItem:{id:"minecraft:stone_shovel"}} run scoreboard players set golf.scb.tmp board 15
execute if data entity @s {SelectedItem:{id:"minecraft:golden_shovel"}} run scoreboard players set golf.scb.tmp board 20
execute if data entity @s {SelectedItem:{id:"minecraft:iron_shovel"}} run scoreboard players set golf.scb.tmp board 25
execute if data entity @s {SelectedItem:{id:"minecraft:diamond_shovel"}} run scoreboard players set golf.scb.tmp board 30
execute if data entity @s {SelectedItem:{id:"minecraft:netherite_shovel"}} run scoreboard players set golf.scb.tmp board 35
scoreboard players operation @s golf.nowroundscore += golf.scb.tmp board
tellraw @s ["\u00a7c + ",{"score":{"name": "golf.scb.tmp","objective": "board"},"color": "red"},""]
playsound entity.experience_orb.pickup player @s ~ ~ ~ 3 1 1
effect give @e[tag=golf.ball] regeneration 2 25 true

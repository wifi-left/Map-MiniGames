item replace block 0 -64 0 container.0 from entity @s weapon.mainhand
scoreboard players set success temp 1
execute if data block 0 -64 0 Items[{Slot:0b}].components."minecraft:custom_data".gun_data{status:"no_bullet"} run scoreboard players set success temp 0
execute if score success temp matches 0 run tellraw @s [{text:"你的子弹不足。请使用",color:red},{keybind:"key.swapOffhand",color:"gold"},{text:"填充子弹。",color:red}]
execute if score success temp matches 0 run playsound entity.player.teleport player @s ~ ~ ~ 1 0 1
execute if score success temp matches 0 run return fail
return 1
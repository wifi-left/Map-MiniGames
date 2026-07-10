execute store result score gun.bullet.max temp run data get block 0 -64 0 Items[{Slot:0b}].components."minecraft:custom_data".gun_data.max_stack_size
execute store result score gun.cooldown.left temp run data get block 0 -64 0 Items[{Slot:0b}].components."minecraft:custom_data".gun_data.cooldown_left
execute if score gun.cooldown.left temp matches 1.. run return run function gun:refuse/refuse_bullet_cantcooldown

scoreboard players operation gun.bullet.max temp -= gun.bullet.now temp
execute if score gun.bullet.max temp matches 0 run return run function gun:refuse/refuse_bullet_noneed

data modify storage minecraft:temp bullet_info set value {type:"empty",max_count:0}
data modify storage minecraft:temp bullet_info.type set from block 0 -64 0 Items[{Slot:0b}].components."minecraft:custom_data".gun_data.bullet_type
execute store result storage minecraft:temp bullet_info.max_count int 1 run scoreboard players get gun.bullet.max temp

function gun:player/refuse_bullet with storage temp bullet_info

scoreboard players operation bullet.refused.raw temp = bullet.refused temp
scoreboard players operation bullet.refused temp += gun.bullet.now temp

execute if score bullet.refused temp matches ..0 run data modify block 0 -64 0 Items[{Slot:0b}].components."minecraft:custom_data".gun_data.status set value "no_bullet"

execute if score bullet.refused.raw temp matches ..0 run title @s actionbar [{text:"无法填充：背包中子弹不足。",color:red}]
execute if score bullet.refused temp matches ..0 run data modify block 0 -64 0 Items[{Slot:0b}].components."minecraft:custom_data".gun_data.count set value 1
execute if score bullet.refused.raw temp matches ..0 run return fail
execute if score bullet.refused temp matches 1.. run title @s actionbar [{text:"已从背包中填充",color:gold},{score:{name:"bullet.refused.raw",objective:temp},color:aqua},{text:"个子弹",color:gold}]

execute if score bullet.refused temp matches 1.. run data modify block 0 -64 0 Items[{Slot:0b}].components."minecraft:custom_data".gun_data.status set value "ok"

execute if score bullet.refused temp matches 1.. store result block 0 -64 0 Items[{Slot:0b}].components."minecraft:custom_data".gun_data.count int 1 run scoreboard players get bullet.refused temp

execute if score bullet.refused temp matches 1.. run execute store result score gun.cooldown.total temp run data get block 0 -64 0 Items[{Slot:0b}].components."minecraft:custom_data".gun_data.cooldown

execute if score bullet.refused temp matches 1.. run data remove block 0 -64 0 Items[{Slot:0b}].components."!minecraft:damage"
execute if score bullet.refused temp matches 1.. run data remove block 0 -64 0 Items[{Slot:0b}].components."!minecraft:max_damage"
execute if score bullet.refused temp matches 1.. run data remove block 0 -64 0 Items[{Slot:0b}].components."minecraft:unbreakable"
execute if score bullet.refused temp matches 1.. run data modify block 0 -64 0 Items[{Slot:0b}].components."!minecraft:max_stack_size" set value {}

execute if score bullet.refused temp matches 1.. store result score gun.cooldown.total temp run data get block 0 -64 0 Items[{Slot:0b}].components."minecraft:custom_data".gun_data.cooldown

execute if score bullet.refused temp matches 1.. store result block 0 -64 0 Items[{Slot:0b}].components."minecraft:damage" int 1 run scoreboard players get gun.cooldown.total temp
execute if score bullet.refused temp matches 1.. run data remove block 0 -64 0 Items[{Slot:0b}].components."minecraft:consumable"
execute if score bullet.refused temp matches 1.. store result block 0 -64 0 Items[{Slot:0b}].components."minecraft:max_damage" int 1 run scoreboard players get gun.cooldown.total temp

execute store result block 0 -64 0 Items[{Slot:0b}].components."minecraft:custom_data".gun_data.cooldown_left int 1 run scoreboard players get gun.cooldown.total temp

execute at @s run playsound minecraft:block.chest.locked player @s ~ ~ ~ 1 2 1

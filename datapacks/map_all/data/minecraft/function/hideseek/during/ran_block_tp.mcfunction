execute if score hideseek.settings.map board matches 1 run spreadplayers 468.0 -364.0 0 40 under 20 false @s
execute if score hideseek.settings.map board matches 2 run spreadplayers 523 -568 0 60 under 20 false @s
execute if score hideseek.settings.map board matches 3 run spreadplayers 391 -568 0 70 under 20 false @s

data modify block 0 2 0 Items set value []
execute at @s align xyz if block ~ ~-1 ~ #hideseek run loot replace block 0 2 0 container.0 mine ~ ~-0.3 ~ shears[enchantments={"minecraft:silk_touch":1}]
execute at @s align xyz unless block ~ ~-1 ~ #hideseek run kill @s
execute if data block 0 2 0 Items[0] as @e[tag=neww] run data modify entity @s block_state.Name set from block 0 2 0 Items[0].id
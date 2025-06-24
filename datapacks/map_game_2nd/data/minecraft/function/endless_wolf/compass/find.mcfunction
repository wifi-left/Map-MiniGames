##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
item replace block 0 -64 0 container.0 with minecraft:compass[lodestone_tracker={target:{dimension:"minecraft:airworld",pos:[I;0,0,0]},tracked:0b},custom_name="\u00a7f追踪指南针 \u00a78- \u00a7c失去目标",lore=["\u00a77默认追踪离你最近的幸存者"],custom_data={vampire:true}]
# execute unless entity @a[tag=sur.sel,limit=1] run item replace entity @s[team=play.sur.zom] hotbar.8 with
## WARNING: The transformation may cause problem. You might need to modify it by yourself.
execute in overworld positioned 0 -64 0 run data modify block 0 -64 0 Items[0].components."minecraft:lodestone_tracker".target.pos set from entity @a[tag=vampire.sel,limit=1] Pos
execute as @a[tag=vampire.sel,limit=1] in overworld positioned 0 -64 0 run data modify block 0 -64 0 Items[0].components."minecraft:lodestone_tracker".target.dimension set value "minecraft:overworld"
execute as @a[tag=vampire.sel,limit=1] in overworld positioned 0 -64 0 run data modify block 0 -64 0 Items[0].components."minecraft:custom_name" set value "\u00a7f追踪指南针 \u00a78- \u00a7a已追踪到目标"
execute in overworld run loot replace entity @s hotbar.8 mine 0 -64 0 command_block[custom_data={drop_contents:1b}]

# 获取选择的物品栏 /data get entity @s SelectedItemSlot
# 乘坐的实体 /data get entity @s RootVehicle.Entity
tag @e[tag=ridden] remove ridden
tag @a[tag=riding] remove riding
tag @a[tag=GCAR.go] remove GCAR.go
tag @a[tag=GCAR.go0] remove GCAR.go0
tag @a[tag=GCAR.go1] remove GCAR.go1
tag @a[tag=GCAR.go2] remove GCAR.go2
tag @a[tag=GCAR.go3] remove GCAR.go3
tag @a[tag=GCAR.go4] remove GCAR.go4
tag @a[tag=GCAR.go5] remove GCAR.go5
tag @a[tag=GCAR.go6] remove GCAR.go6
tag @a[tag=GCAR.go7] remove GCAR.go7

# /say @a[y_rotation=0..45]
execute as @a[gamemode=!spectator] at @s if data entity @s {RootVehicle:{Entity:{Tags:['GCAR']}}} run tag @s add riding
execute as @a[tag=riding] at @s as @e[tag=GCAR,limit=1,sort=nearest,distance=..1] at @s run tag @s add ridden
execute as @e[tag=ridden,tag=GCAR] at @s run title @a[limit=1,sort=nearest,distance=..1,tag=riding] actionbar ["\u00a7aGCAR \u00a77- 按下",{"keybind":"key.sneak","color":"yellow"},"\u00a77离开 - \u00a7e物品栏第一格\u00a77前进 - \u00a77本次已行驶",{"score":{"objective": "GCAR.long","name": "*"},"color": "green"},"\u00a7am"]
# [tag=GCAR]
# /summon minecraft:minecart ~ ~1 ~ {CustomName:"[\"GCAR\"]",CustomNameVisible:1b,Tags:["GCAR"],CustomDisplayTile:1b,DisplayState:{Name:"minecraft:white_carpet"},DisplayOffset:5}
tag @a[tag=riding,nbt={SelectedItemSlot:0}] add GCAR.go
tag @a[tag=GCAR.go,y_rotation=-22.5..22.5] add GCAR.go0
tag @a[tag=GCAR.go,y_rotation=22.5..67.5] add GCAR.go1
tag @a[tag=GCAR.go,y_rotation=67.5..112.5] add GCAR.go2
tag @a[tag=GCAR.go,y_rotation=112.5..157.5] add GCAR.go3
tag @a[tag=GCAR.go,y_rotation=157.5..-157.5] add GCAR.go4
tag @a[tag=GCAR.go,y_rotation=-157.5..-112.5] add GCAR.go5
tag @a[tag=GCAR.go,y_rotation=-112.5..-67.5] add GCAR.go6
tag @a[tag=GCAR.go,y_rotation=-67.5..-22.5] add GCAR.go7
scoreboard players reset @a[tag=!riding,scores={GCAR.tick=-1..}] GCAR.tick
scoreboard players reset @a[tag=!riding,scores={GCAR.long=-1..}] GCAR.long

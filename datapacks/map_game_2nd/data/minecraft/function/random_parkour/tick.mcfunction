execute as @a[team=random_parkour,gamemode=adventure] at @s run kill @e[type=item,distance=..10]
execute as @a[team=random_parkour,gamemode=adventure] at @s if block ~ ~-0.5 ~ lapis_block run function minecraft:random_parkour/finish
execute as @a[team=random_parkour,gamemode=adventure] at @s if block ~ ~-0.5 ~ magma_block run function minecraft:random_parkour/failed
# 记录点：踩到平台中心的那个金块就记录（同一记录点不重复提醒）
execute as @a[team=random_parkour,gamemode=adventure] at @s if block ~ ~-1 ~ gold_block run function minecraft:random_parkour/checkpoint/setpoint
# 跑酷区域里掉进水里的末影珍珠会卡在水面/残留，直接清掉
execute as @e[type=ender_pearl,x=8,y=-62,z=211,dx=97,dy=71,dz=36] at @s if block ~ ~ ~ water run kill @s
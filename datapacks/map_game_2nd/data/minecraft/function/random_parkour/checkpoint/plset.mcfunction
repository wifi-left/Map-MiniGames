# 写入记录点：复用大厅跑酷的 park.x / park.y / park.z（坐标取整，落点仍在 3×3 平台内）
execute store result score @s park.x run data get entity @s Pos[0]
execute store result score @s park.y run data get entity @s Pos[1]
execute store result score @s park.z run data get entity @s Pos[2]

tellraw @s ["§6[记录点] §a已记录！掉落后将回到这里。"]
playsound minecraft:ui.button.click player @s ~ ~ ~ 10 1 1

##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players set tmp board 0
tag @s add sell
execute store result score tmp board run clear @a[team=play.zombie] sweet_berries 0
execute if score tmp board matches 18.. run clear @a[team=play.zombie] sweet_berries
execute if score tmp board matches 18.. run tellraw @a[team=play.zombie] ["\n\u00a7a任务完成！\n\n\u00a7e亚奇洛贝：\u00a7f这是报酬，每人 \u00a7e1000 C\u00a7f。"]
execute if score tmp board matches 18.. as @a[team=play.zombie,gamemode=adventure] at @s run give @s carrot_on_a_stick[custom_name='"\\u00a7e一小袋金币 \\u00a77- 右键使用"',custom_data={coin:1000,gun:-10},custom_model_data=21] 1
execute if score tmp board matches 18.. run playsound entity.player.levelup player @s ~ ~ ~ 2 1.5 1
execute if score tmp board matches 18.. run function zombieever/talks/rescue_village/1
# execute if score tmp board matches 18.. run /
execute if score tmp board matches ..17 run tellraw @s ["\n\u00a7c无法提交任务：采摘的果实不够。\n"]
execute if score tmp board matches ..17 run playsound entity.enderman.teleport player @s ~ ~ ~ 2 0 1
tag @s remove sell


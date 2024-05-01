##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
team join hide.play.ani
clear @s
give @s stick[unbreakable={},enchantments={levels:{"minecraft:knockback":3}},custom_name='"\\u00a7bKB Stick"']
# item replace entity @s inventory.26 with arrow
give @s carrot_on_a_stick[unbreakable={},custom_data={ani:1},custom_name='"\\u00a7b模仿脚下方块\\u00a77 - 右键点击"',enchantments={levels:{"minecraft:knockback":3}}]
scoreboard players set @s LRS_START_DJS 1
execute as @s run spreadplayers 468.0 -364.0 0 40 under 5 false @s
function hideseek/defaultanimal

tellraw @s ["\n\u00a7b   你的身份是：躲藏者。\n\u00a76温馨提示：\u00a7b潜行时可以让方块对其。"]

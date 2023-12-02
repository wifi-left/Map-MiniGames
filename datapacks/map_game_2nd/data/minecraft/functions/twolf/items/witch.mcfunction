clear @s
execute positioned 29 16 31 run kill @e[type=item,distance=..50]
# function minecraft:twolf/items/selector
execute if entity @a[tag=wolf.killed,gamemode=adventure] run tellraw @s ["\u00a7c昨天晚上，",{"selector":"@a[tag=wolf.killed,gamemode=adventure]"},"\u00a7c 死了。"]
execute as @s[tag=wolf.killed] if score wolf.round board matches 2.. run tellraw @s ["\u00a78 | \u00a7c你被杀了。\n\u00a78 | \u00a7c但今夜不是第一晚，\u00a7l你无法对自己使用解药。"]

execute if entity @a[tag=wolf.killed] as @s[tag=!wolf.killed] if score wolf.witch.rescue board matches 1.. run item replace entity @s hotbar.2 with warped_fungus_on_a_stick{display:{Name:'"\\u00a7a使用解药 - \\u00a77右键点击"'},wolfItem:4,CustomModelData:8}
execute as @s[tag=wolf.killed] if score wolf.round board matches ..1 if score wolf.witch.rescue board matches 1.. run item replace entity @s hotbar.2 with warped_fungus_on_a_stick{display:{Name:'"\\u00a7a使用解药 - \\u00a77右键点击"'},wolfItem:4,CustomModelData:8}
execute if score wolf.witch.kill board matches 1.. run item replace entity @s hotbar.4 with warped_fungus_on_a_stick{display:{Name:'"\\u00a7c使用毒药 - \\u00a77右键点击"'},wolfItem:5,CustomModelData:7}
item replace entity @s hotbar.6 with warped_fungus_on_a_stick{display:{Name:'"\\u00a7e啥也不干 - \\u00a77右键点击"'},wolfItem:0,CustomModelData:3}


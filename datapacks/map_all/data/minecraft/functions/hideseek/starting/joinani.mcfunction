team join hide.play.ani
give @s stick{Unbreakable:1b,Enchantments:[{id:"knockback",lvl:3}],display:{Name:"\"\\u00a7bKB Stick\""}}
# item replace entity @s inventory.26 with arrow
give @s carrot_on_a_stick{Unbreakable:1b,ani:1,display:{Name:'"\\u00a7b切换动物\\u00a77 - 右键点击"'},Enchantments:[{id:"knockback",lvl:3}]}
scoreboard players set @s LRS_START_DJS 1
execute as @s run spreadplayers 382 -310 0 30 under 70 false @s
function hideseek/changeanimal

tellraw @s ["\n\u00a7b   你的身份是：动物。\n"]
function minecraft:twolf/events/reset

scoreboard players reset * LRS_JOB
scoreboard players add @a[team=wait.wolfpeople,gamemode=adventure] LRS_JOB 0
scoreboard players set wolf.total board 0
function minecraft:twolf/events/reset
execute as @a[team=wait.wolfpeople,gamemode=adventure] run scoreboard players add wolf.total board 1
execute if score wolf.auto state matches 1 run function twolf/action/auto_settings
execute unless score wolf.auto state matches 1 run function twolf/action/get_jobs
tag @a[tag=wolf.tip] remove wolf.tip
tag @a[team=wolfpeople] add wolf.tip
tag @a[team=wait.wolfpeople] add wolf.tip
clear @a[tag=wolf.tip]
effect clear @a[tag=wolf.tip]

team join wolfpeople @a[team=wait.wolfpeople,gamemode=adventure]


# 统计人数
execute as @a[team=wolfpeople,gamemode=adventure] if score @s LRS_JOB matches 3 run scoreboard players add wolf.arsonist board 1
execute as @a[team=wolfpeople,gamemode=adventure] if score @s LRS_JOB matches 1 run scoreboard players add wolf.cupid board 1
execute as @a[team=wolfpeople,gamemode=adventure] if score @s LRS_JOB matches 2 run scoreboard players add wolf.guard board 1
execute as @a[team=wolfpeople,gamemode=adventure] if score @s LRS_JOB matches 9 run scoreboard players add wolf.hunter board 1
execute as @a[team=wolfpeople,gamemode=adventure] if score @s LRS_JOB matches 8 run scoreboard players add wolf.knight board 1
execute as @a[team=wolfpeople,gamemode=adventure] if score @s LRS_JOB matches 6 run scoreboard players add wolf.predictor board 1
execute as @a[team=wolfpeople,gamemode=adventure] if score @s LRS_JOB matches 7 run scoreboard players add wolf.tnt board 1
execute as @a[team=wolfpeople,gamemode=adventure,tag=wolf.white] if score @s LRS_JOB matches 4 run scoreboard players add wolf.whitewolf board 1
execute as @a[team=wolfpeople,gamemode=adventure] if score @s LRS_JOB matches 5 run scoreboard players add wolf.witch board 1
execute as @a[team=wolfpeople,gamemode=adventure] if score @s LRS_JOB matches 4 run scoreboard players add wolf.wolf board 1
execute as @a[team=wolfpeople,gamemode=adventure] if score @s LRS_JOB matches 0 run scoreboard players add wolf.people board 1

execute as @a[team=wolfpeople,gamemode=adventure] if score @s LRS_JOB matches 0 run function twolf/job/human

scoreboard players set wolf.total board 0
execute as @a[team=wolfpeople,gamemode=adventure] run scoreboard players add wolf.total board 1

tellraw @a[tag=wolf.tip] ["\u00a7a本次狼人杀角色数量：",{"text":"[鼠标移到此处查看]","color": "gold","hoverEvent": {"action": "show_text","contents": ["\u00a76[纵火犯] ",{"score":{"objective": "board","name": "wolf.arsonist"}},"\n\u00a76[丘比特] ",{"score":{"objective": "board","name": "wolf.cupid"}},"\n\u00a76[守卫] ",{"score":{"objective": "board","name": "wolf.guard"}},"\n\u00a76[猎人] ",{"score":{"objective": "board","name": "wolf.hunter"}},"\n\u00a76[骑士] ",{"score":{"objective": "board","name": "wolf.knight"}},"\n\u00a76[预言家] ",{"score":{"objective": "board","name": "wolf.predictor"}},"\n\u00a76[炸弹人] ",{"score":{"objective": "board","name": "wolf.tnt"}},"\n\u00a76[白狼] ",{"score":{"objective": "board","name": "wolf.whitewolf"}},"\n\u00a76[女巫] ",{"score":{"objective": "board","name": "wolf.witch"}},"\n\u00a76[狼(含白狼)] ",{"score":{"objective": "board","name": "wolf.wolf"}},"\n\u00a76[民] ",{"score":{"objective": "board","name": "wolf.people"}},"\n\n\u00a7b[总共] ",{"score":{"objective": "board","name": "wolf.total"},"color": "white"},"\u00a76人"]}},"\n\u00a78 | \u00a76\u00a7l温馨提示：\u00a7e为保证游戏体验，请在相关提示后发言，\n\u00a78 | \u00a7e并在相关提示后停止发言。\n\u00a78 | \u00a7e请关闭小地图、关闭灵魂出窍等功能，以增强游戏体验！"]

function minecraft:twolf/action/givepoint
function minecraft:twolf/action/tppoint_day
# title @a[tag=wolf.tip] title ["\u00a76\u00a7l狼人杀"]
title @a[tag=wolf.tip] subtitle ["\u00a7f10秒后将会进入黑夜。"]
execute as @a[tag=wolf.tip] at @s run playsound entity.firework_rocket.twinkle player @s ~ ~ ~ 1 1 0
# schedule function minecraft:twolf/events/next_event 10s
scoreboard players set twolf.state state 1
scoreboard players set wolf.time board 6
scoreboard players set wolf.ttime board -1
execute if score wolf.mode board matches 1 run tellraw @a[tag=wolf.tip] ["\u00a76游戏模式：\u00a7a\u00a7l屠边"]
execute if score wolf.mode board matches 2 run tellraw @a[tag=wolf.tip] ["\u00a76游戏模式：\u00a7c\u00a7l屠城"]
function minecraft:twolf/tips/new_game
schedule clear #wolffunctions

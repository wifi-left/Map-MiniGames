function minecraft:twolf/events/reset

scoreboard players reset * LRS_JOB
scoreboard players add @a[team=wait.wolfpeople,gamemode=adventure] LRS_JOB 0
scoreboard players set wolf.total board 0
execute as @a[team=wait.wolfpeople,gamemode=adventure] run scoreboard players add wolf.total board 1
execute if score wolf.auto state matches 1 run function twolf/action/auto_settings
execute unless score wolf.auto state matches 1 run function twolf/action/get_jobs

tag @a[tag=wolf.tip] remove wolf.tip
tag @a[team=wolfpeople] add wolf.tip
tag @a[team=wait.wolfpeople] add wolf.tip

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

scoreboard players set wolf.total board 0
execute as @a[team=wolfpeople,gamemode=adventure] run scoreboard players add wolf.total board 1

tellraw @a[tag=wolf.tip] ["\n\u00a7a\u00a7l本次狼人杀角色数量：\n"]
tellraw @a[tag=wolf.tip] ["\u00a76[纵火犯] ",{"score":{"objective": "board","name": "wolf.arsonist"}}]
tellraw @a[tag=wolf.tip] ["\u00a76[丘比特] ",{"score":{"objective": "board","name": "wolf.cupid"}}]
tellraw @a[tag=wolf.tip] ["\u00a76[守卫] ",{"score":{"objective": "board","name": "wolf.guard"}}]
tellraw @a[tag=wolf.tip] ["\u00a76[猎人] ",{"score":{"objective": "board","name": "wolf.hunter"}}]
tellraw @a[tag=wolf.tip] ["\u00a76[骑士] ",{"score":{"objective": "board","name": "wolf.knight"}}]
tellraw @a[tag=wolf.tip] ["\u00a76[预言家] ",{"score":{"objective": "board","name": "wolf.predictor"}}]
tellraw @a[tag=wolf.tip] ["\u00a76[炸弹人] ",{"score":{"objective": "board","name": "wolf.tnt"}}]
tellraw @a[tag=wolf.tip] ["\u00a76[白狼] ",{"score":{"objective": "board","name": "wolf.whitewolf"}}]
tellraw @a[tag=wolf.tip] ["\u00a76[女巫] ",{"score":{"objective": "board","name": "wolf.witch"}}]
tellraw @a[tag=wolf.tip] ["\u00a76[狼] ",{"score":{"objective": "board","name": "wolf.wolf"}}] 
tellraw @a[tag=wolf.tip] ["\u00a76[民] ",{"score":{"objective": "board","name": "wolf.people"}}]
tellraw @a[tag=wolf.tip] ["\n\u00a7b[总共] ",{"score":{"objective": "board","name": "wolf.total"},"color": "white"},"\u00a76人\n"]
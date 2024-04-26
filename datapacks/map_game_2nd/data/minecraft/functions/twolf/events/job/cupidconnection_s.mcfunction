tag @a[tag=wolf.connected,limit=1,team=wolfpeople] add wolf.1
tag @a[tag=wolf.connected,tag=!wolf.1,team=wolfpeople,limit=1] add wolf.2

execute store result score wolf.1 board as @a[tag=wolf.1] run function twolf/action/per/getjobtype
execute store result score wolf.2 board as @a[tag=wolf.2] run function twolf/action/per/getjobtype

execute if score wolf.1 board = wolf.2 board if score wolf.1 board matches 1 run scoreboard players set wolf.cupid.type board 1
execute if score wolf.1 board = wolf.2 board if score wolf.1 board matches 3 run scoreboard players set wolf.cupid.type board 1
execute if score wolf.1 board = wolf.2 board if score wolf.1 board matches 2 run scoreboard players set wolf.cupid.type board 0
execute unless score wolf.1 board = wolf.2 board run scoreboard players set wolf.cupid.type board 2

tag @a[tag=wolf.connected,team=wolfpeople] add wolf.cupidmsg
tag @a[tag=wolf.tip,gamemode=spectator] add wolf.cupidmsg
tellraw @a[tag=wolf.connected,team=wolfpeople] ["\u00a76-----------------------\n\u00a7c你被丘比特连接了。\n\u00a7a你们的身份属性分别为："]
tellraw @a[tag=wolf.tip,gamemode=spectator] ["\u00a76-----------------------\n\u00a7d丘比特连接的两人身份属性分别为："]
execute if score wolf.1 board matches 1 run tellraw @a[tag=wolf.cupidmsg] [{"selector":"@a[tag=wolf.1]"},"\u00a77: ",{"text":"好人","color": "green"}]
execute if score wolf.1 board matches 2 run tellraw @a[tag=wolf.cupidmsg] [{"selector":"@a[tag=wolf.1]"},"\u00a77: ",{"text":"坏人","color": "red"}]
execute if score wolf.1 board matches 3 run tellraw @a[tag=wolf.cupidmsg] [{"selector":"@a[tag=wolf.1]"},"\u00a77: ",{"text":"未知","color": "aqua"}]
execute if score wolf.1 board matches 0 run tellraw @a[tag=wolf.cupidmsg] [{"selector":"@a[tag=wolf.1]"},"\u00a77: ",{"text":"出错","color": "dark_red"}]

execute if score wolf.2 board matches 1 run tellraw @a[tag=wolf.cupidmsg] [{"selector":"@a[tag=wolf.2]"},"\u00a77: ",{"text":"好人","color": "green"}]
execute if score wolf.2 board matches 2 run tellraw @a[tag=wolf.cupidmsg] [{"selector":"@a[tag=wolf.2]"},"\u00a77: ",{"text":"坏人","color": "red"}]
execute if score wolf.2 board matches 3 run tellraw @a[tag=wolf.cupidmsg] [{"selector":"@a[tag=wolf.2]"},"\u00a77: ",{"text":"未知","color": "aqua"}]
execute if score wolf.2 board matches 0 run tellraw @a[tag=wolf.cupidmsg] [{"selector":"@a[tag=wolf.2]"},"\u00a77: ",{"text":"出错","color": "dark_red"}]
tellraw @a[tag=wolf.cupidmsg] ["\u00a76-----------------------"]

tag @a remove wolf.1
tag @a remove wolf.2
tag @a remove wolf.cupidmsg

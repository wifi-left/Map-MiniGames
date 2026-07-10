clear @s *[custom_data~{desk_default_tool:true}]
tellraw @a[team=deskgame] [{selector:"@s"},"\u00a7d 选择了\u00a7c扣动枪械扳机\u00a7d。"]
execute at @s run function minecraft:desk/russia/gun/trigger
# function minecraft:desk/russia/timeout
scoreboard players set desk.time board 4
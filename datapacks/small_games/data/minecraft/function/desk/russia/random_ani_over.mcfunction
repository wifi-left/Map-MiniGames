scoreboard players set desk.russia.random.rounds tick -1
execute as @a[team=deskgame] at @s run playsound entity.player.levelup player @s ~ ~ ~ 1 1 1
scoreboard players set desk.time board 4

execute if score desk.russia.random.target tick matches 1 run return run function minecraft:desk/russia/tool/shield
execute if score desk.russia.random.target tick matches 3 run return run function minecraft:desk/russia/tool/time_freeze
execute if score desk.russia.random.target tick matches 5 run return run function minecraft:desk/russia/tool/weapon_lock
execute if score desk.russia.random.target tick matches 7 run return run function minecraft:desk/russia/tool/tool_stole
function minecraft:desk/russia/tool/none
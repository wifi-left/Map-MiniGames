title @s actionbar ["\u00a7c你的路程结束！"]

tellraw @s ["\u00a7c你的路程结束！"]
playsound entity.player.levelup player @s ~ ~ ~ 1 2 1
scoreboard players set desk.state state 5
function minecraft:merchant/player/action/setpoint
# marchant.now temp
execute at @s run function minecraft:merchant/player/action/detect_event
scoreboard players remove desk.time board 1
execute if score desk.time board matches 0 run return run function minecraft:merchant/steps/timeout/true_start
tellraw @a[team=deskgame] ["\u00a7e游戏将在",{score:{name:"desk.time",objective:"board"},color:red},"\u00a7cs\u00a7e后开始"]
execute as @a[team=deskgame] at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~ 0.5 1 0.5
tellraw @a[team=play.total] ["\u00a76时间截止！\n让我们来看看大家都选择了什么游戏。"]
execute as @a[team=play.total] at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~ 1 1 1
scoreboard players set gametotal.time tick 3
scoreboard players set gametotal state 3
gamemode spectator @a[team=play.total]
execute as @a[team=play.total] unless items entity @s weapon.offhand *[custom_data~{"game_total":1}] run function minecraft:small_games/total/wur/random_sel

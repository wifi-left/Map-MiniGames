execute if score ballgame.state state matches 1..99 if score ball.time board matches 1.. run function minecraft:ballgame/time/dodgeball/timemain
# effect give @a[team=ballgame] speed 2 1 true
execute if score ballgame.state state matches 1..99 run function minecraft:ballgame/typesecond/dodgeball_testfor

execute as @a[team=ballgame,gamemode=adventure] if score ballgame.state state matches 1..99 unless items entity @s container.* carrot_on_a_stick[custom_data~{ball:true,ball.skill:rush}] run function minecraft:ballgame/actions/football/give_rush
execute as @a[team=ballgame,gamemode=adventure] if score ballgame.state state matches 1..99 unless items entity @s container.* carrot_on_a_stick[custom_data~{ball:true,ball.skill:jump}] run function minecraft:ballgame/actions/football/give_jump
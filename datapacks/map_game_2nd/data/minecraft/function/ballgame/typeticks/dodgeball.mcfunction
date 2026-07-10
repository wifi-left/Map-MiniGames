execute as @e[tag=ballgame.ball.interact,type=interaction] run tp @s @e[type=armor_stand,tag=ballgame.ball,limit=1,sort=nearest]

execute as @e[tag=ballgame.ball,type=armor_stand] at @s as @e[tag=ballgame.ball.interact,distance=..3,type=interaction] run function minecraft:ballgame/actions/football/kick_ball

execute as @e[tag=ballgame.ball,type=armor_stand] at @s run function minecraft:ballgame/actions/dodgeball/detect_hit

execute if score ballgame.state state matches 1 run function minecraft:ballgame/actions/dodgeball/detect_round_over

kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{ball:true}}}}]

execute if score ballgame.state state matches 3 as @a[team=ballgame,gamemode=adventure] at @s if block ~ ~-1 ~ red_wool run title @s actionbar ["\u00a7c您所在的位置出界了！请及时返回！游戏开始后将直接淘汰。"]
execute if score ballgame.state state matches 1 as @a[team=ballgame,gamemode=adventure] at @s if block ~ ~-1 ~ red_wool run function minecraft:ballgame/actions/dodgeball/died_because_red
execute if score ballgame.state state matches 1 as @a[team=ballgame,gamemode=adventure] run function minecraft:ballgame/actions/dodgeball/strength_item

execute as @a[team=ballgame,gamemode=adventure] unless items entity @s armor.chest leather_chestplate run function minecraft:ballgame/actions/football/give_team_clothes
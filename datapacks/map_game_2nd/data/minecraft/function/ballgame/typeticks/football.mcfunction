
execute as @e[tag=ballgame.ball.interact,type=interaction] run tp @s @e[type=armor_stand,tag=ballgame.ball,limit=1,sort=nearest]

execute as @e[tag=ballgame.ball,type=armor_stand] at @s as @e[tag=ballgame.ball.interact,distance=..3,type=interaction] run function minecraft:ballgame/actions/football/kick_ball
# execute as @e[tag=ballgame.ball,type=armor_stand] at @s positioned ~-0.5 ~ ~-0.5 as @a[team=ballgame,gamemode=adventure,dx=0,dy=1,dz=0,sort=nearest,limit=1] at @s run function minecraft:ballgame/make_ball_motion

kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{ball:true}}}}]
execute as @e[tag=ballgame.ball,type=armor_stand] at @s if block ~ ~-0.1 ~ black_wool run function minecraft:ballgame/actions/football/out_of_border
execute as @e[tag=ballgame.ball,type=armor_stand] at @s if block ~ ~ ~ cobweb run data modify entity @s Motion[1] set value -2f
execute as @e[tag=ballgame.ball,type=armor_stand] at @s if block ~ ~-0.1 ~ orange_wool run function minecraft:ballgame/actions/football/roundwin/a
execute as @e[tag=ballgame.ball,type=armor_stand] at @s if block ~ ~-0.1 ~ pink_wool run function minecraft:ballgame/actions/football/roundwin/b

execute as @a[team=ballgame,gamemode=adventure] unless items entity @s armor.chest leather_chestplate run function minecraft:ballgame/actions/football/give_team_clothes
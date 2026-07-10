gamemode spectator @s
tellraw @a[team=pillar] [{atlas:"gui",sprite:"spectator/teleport_to_team"}," ",{"selector":"@s"},"\u00a7c 淘汰了！"]
tp @s -96 37 613 0 90
scoreboard players set pillar.player tick 0
execute as @a[team=pillar,gamemode=survival] run scoreboard players add pillar.player tick 1

execute if score pillar.player tick matches 0 run function minecraft:small_games/total/win_score {score:3}
execute if score pillar.player tick matches 1 run function minecraft:small_games/total/win_score {score:2}
execute if score pillar.player tick matches 2 run function minecraft:small_games/total/win_score {score:1}

execute if score pillar.state state matches 3 if score pillar.player tick matches ..1 run function minecraft:pillar/over/normal
clear @s
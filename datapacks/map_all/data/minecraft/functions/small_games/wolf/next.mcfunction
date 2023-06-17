scoreboard players set wolf.countdown board 1145141

execute if score wolf.step board matches 1 if score wolf.countdown board matches 114514.. run function small_games/wolf/calc/guard
execute if score wolf.step board matches 2 if score wolf.countdown board matches 114514.. run function small_games/wolf/calc/wolf
execute if score wolf.step board matches 3 if score wolf.countdown board matches 114514.. run function small_games/wolf/calc/vitch
execute if score wolf.step board matches 4 if score wolf.countdown board matches 114514.. run function small_games/wolf/calc/prohet
execute if score wolf.step board matches 5 if score wolf.countdown board matches 114514.. run function small_games/wolf/calc/morning
# execute if score wolf.step board matches 6 if score wolf.countdown board matches 114514.. run function small_games/wolf/calc/vitch2
execute as @a[team=Who_Killer_Text] at @s run playsound entity.experience_orb.pickup player @s
# scoreboard players set wolf.countdown board 114514
tag @a remove taged
scoreboard players set LRS_RS_BAD board 0 
scoreboard players set LRS_RS_GOOD board 0 
scoreboard players set LRS_RS_RS board 0 
scoreboard players set LRS_RS board 0
execute as @a[team=Who_Killer_Text,gamemode=adventure] run scoreboard players add LRS_RS board 1
# execute as @a[]
execute as @a[team=Who_Killer_Text,gamemode=!spectator,scores={LRS_JOB=1..1}] run scoreboard players add LRS_RS_BAD board 1
execute as @a[team=Who_Killer_Text,gamemode=!spectator,scores={LRS_JOB=0..0}] run scoreboard players add LRS_RS_GOOD board 1
execute as @a[team=Who_Killer_Text,gamemode=!spectator,scores={LRS_JOB=2..4}] run scoreboard players add LRS_RS_GOOD board 1
execute as @a[team=Who_Killer_Text,gamemode=adventure] run scoreboard players add LRS_RS_RS board 1
execute if score LRS_RS_BAD board matches ..0 if score wolf.state state matches 1.. run function small_games/wolf/win/good
execute if score LRS_RS_GOOD board matches ..0 if score wolf.state state matches 1.. run function small_games/wolf/win/bad
execute if score LRS_RS_RS board matches ..2 if score wolf.state state matches 1.. run function small_games/wolf/win/bad
function small_games/wolf/check_next

execute if score wolf.countdown board matches 1.. run scoreboard players remove wolf.countdown board 1
execute if score wolf.countdown board matches ..0 run function small_games/wolf/next
execute if score wolf.countdown board matches 16 run function small_games/wolf/check_hasperson
title @a[team=Who_Killer_Text] actionbar ["\u00a76选择剩余时间：",{"score":{"name": "wolf.countdown","objective": "board"},"color": "gold"},"\u00a76s"]

execute if score wolf.step board matches 1..4 run effect give @a[team=Who_Killer_Text,gamemode=adventure] blindness 5 25 true
execute if score wolf.step board matches 1..4 run effect give @a[team=Who_Killer_Text,gamemode=adventure] slowness 5 25 true
execute if score wolf.step board matches 1..4 run effect give @a[team=Who_Killer_Text,gamemode=adventure] jump_boost 5 128 true
tellraw @a[team=Who_Killer_Text] ["\u00a7c[狼人杀] \u00a74\u00a7l狼人\u00a76胜利！"]
title @a[team=Who_Killer_Text] title ["\u00a7cGame Over!"]
title @a[team=Who_Killer_Text,scores={LRS_JOB=1..1}] title ["\u00a76You won!"]
scoreboard players set wolf.state state 0
setblock 79 23 94 air
function small_games/wolf/showend
execute as @a[team=Who_Killer_Text] run function small_games/wolf/join
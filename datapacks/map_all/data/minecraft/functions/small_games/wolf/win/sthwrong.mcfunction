tellraw @a[team=Who_Killer_Text] ["\u00a7c人数不够，游戏结束！"]
scoreboard players set wolf.state state 0
setblock 79 23 94 air

execute as @a[team=Who_Killer_Text] run function small_games/wolf/join
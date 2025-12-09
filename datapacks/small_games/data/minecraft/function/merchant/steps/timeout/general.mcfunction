title @a[team=deskgame] actionbar ["\u00a7c\u00a7l倒计时结束"]
execute if score desk.state state matches 2 run tellraw @a[team=deskgame] ["\u00a7c超时了！已切换下一位玩家！"]
execute if score desk.state state matches 4 run tellraw @a[team=deskgame] ["\u00a7c超时了！已自动进行操作！"]

execute if score desk.state state matches 2 run function minecraft:merchant/during/next_player
execute if score desk.state state matches 4 run function minecraft:merchant/player/auto_jump
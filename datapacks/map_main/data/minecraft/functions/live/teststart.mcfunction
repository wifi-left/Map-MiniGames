playsound minecraft:ui.button.click player @s
## scoreboard players set live.state state 0
execute if score live.state state matches 1.. run tellraw @s ["\n\u00a7a\u00a7l[MESSAGE] \u00a7c游戏已经开始啦！\n\u00a77\u00a7o如果这是个bug，请报告给制作者！\n\u00a77\u00a7o你现在可以旁观游戏。\n"]
execute if score live.state state matches 1.. run function minecraft:live/specthegame
execute unless score live.state state matches 1.. if score wait.live.player tick matches 2.. run function minecraft:live/start
execute unless score live.state state matches 1.. unless score wait.live.player tick matches 2.. run tellraw @a[team=wait.live] ["\n\u00a7a\u00a7l[MESSAGE] \u00a7c开始失败！ Reason:\n \u00a7e游戏需要至少 \u00a7b2\u00a7e 个玩家；\n 但现在只有 ",{"score":{"objective":"tick","name":"wait.live.player"},"color":"aqua"}," \u00a7e个玩家 ! \n"]
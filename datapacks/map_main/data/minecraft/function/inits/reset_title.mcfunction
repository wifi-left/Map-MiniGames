# 重置
data modify storage minecraft:settings entry_msg set value {}
data modify storage minecraft:settings hub_msg set value {}
data modify storage minecraft:settings hub_msg.oneword set value {}
# 进入游戏

data modify storage minecraft:settings entry_msg.subtitle set value "\u00a76请查看聊天栏获取提示消息"
data modify storage minecraft:settings entry_msg.title set value "\u00a7a\u00a7lMini\u00a7e\u00a7lGames"
data modify storage minecraft:settings entry_msg.actionbar set value "\u00a76请查看聊天栏获取提示消息"
data modify storage minecraft:settings entry_msg.tellraw set value ""
# 返回大厅


data modify storage minecraft:settings hub_msg.oneword.allow set value true
data modify storage minecraft:settings hub_msg.subtitle set value "\u00a7a你已回到游戏大厅"
data modify storage minecraft:settings hub_msg.title set value "\u00a7a\u00a7lMini\u00a7e\u00a7lGames"
data modify storage minecraft:settings hub_msg.actionbar set value "\u00a7e祝你玩得愉快~"
data modify storage minecraft:settings hub_msg.tellraw set value ""
# function minecraft:inits/reset_lobby_title
tellraw @a[team=bw.wait] ["",{"text":"▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬","color":"green"},{"text":"\n\n                              "},{"text":"起床战争","bold":true,"color":"yellow"},{"text":"\n\n     保护你的床并摧毁敌人的床。收集铁锭，金锭，绿宝石和钻石\n                来升级，使自身和队伍变得更强。\n\n"},{"text":"▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬\n\n\u00a7a您可以使用 \u00a7e/tm <信息> \u00a7a进行队伍内聊天。","color":"green"}]
execute as @a[team=bw.wait] at @s run playsound entity.ender_dragon.growl player @s
schedule clear bedwars/resets/space
schedule clear bedwars/resets/mogu
schedule clear bedwars/resets/unnamed
function minecraft:bedwars/reset

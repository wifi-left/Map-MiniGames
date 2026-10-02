
title @a[team=firstoutwins] title {bold:true,color:"#A8C3A6",text:"谢幕者胜"}
title @a[team=firstoutwins] subtitle {text:"游戏即将开始！"}

tellraw @s ["\n ",{bold:true,color:"#A8C3A6",text:"谢幕者胜"},{text:"：",color:gold},{text:"利用场上道具，第一个死亡的玩家取得胜利！",color:white},"\n"]
gamemode adventure @a[gamemode=spectator,team=firstoutwins,tag=!GLOBAL.SPEC]

execute in airworld run tp @a[gamemode=spectator,team=firstoutwins] 206 -22 116 0 90
execute in airworld as @a[gamemode=adventure,team=firstoutwins] run tp @s 206 -27 114
execute in airworld as @a[gamemode=adventure,team=firstoutwins] run spreadplayers 206 114 0 10 under -30 false @s

execute as @a[gamemode=adventure,team=firstoutwins] run function player:full_health
execute as @a[gamemode=adventure,team=firstoutwins] run item replace entity @s armor.feet with leather_boots[enchantments={binding_curse:1},unbreakable={},tooltip_display={hide_tooltip:true},attribute_modifiers=[{id:"safe_falling",type:safe_fall_distance,operation:"add_value",slot:"armor",amount:20}]]

# 开始逻辑
recipe give @a[gamemode=adventure,team=firstoutwins] *
gamemode survival @a[gamemode=adventure,team=firstoutwins]

team modify firstoutwins friendlyFire true
scoreboard players set firstoutwins.state state 2
scoreboard players set firstoutwins.time board 181
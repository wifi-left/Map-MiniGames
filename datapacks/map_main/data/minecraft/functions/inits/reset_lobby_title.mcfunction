##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
kill @e[tag=lobby,type=text_display]
kill @e[tag=lobby,type=area_effect_cloud]
kill @e[tag=lobby,type=armor_stand]

## 188 x 34 小游戏
summon minecraft:text_display 188 127 34 {text:'["\\u00a7a\\u00a7l小游戏区"]',Tags:["lobby"],billboard:"vertical"}
summon minecraft:text_display 188 126.7 34 {text:'["\\u00a77Mini Games"]',Tags:["lobby"],billboard:"vertical"}

## 196 x 26 留影处
summon minecraft:text_display 196 127 26 {text:'["\\u00a7d\\u00a7l留影处"]',Tags:["lobby"],billboard:"vertical"}
summon minecraft:text_display 196 126.7 26 {text:'["\\u00a77Photo Spot"]',Tags:["lobby"],billboard:"vertical"}

## 180 x 26 地图介绍
summon minecraft:text_display 180 127 26 {text:'["\\u00a7b\\u00a7l地图介绍 & 地图设置"]',Tags:["lobby"],billboard:"vertical"}
summon minecraft:text_display 180 126.7 26 {text:'["\\u00a77introduction & Settings"]',Tags:["lobby"],billboard:"vertical"}

## 188 x 18 跑酷区
summon minecraft:text_display 188 127 18 {text:'["\\u00a7e\\u00a7l跑酷区 & 活动区"]',Tags:["lobby"],billboard:"vertical"}
summon minecraft:text_display 188 126.7 18 {text:'["\\u00a77Parkour & Activity"]',Tags:["lobby"],billboard:"vertical"}

## 210 116 22 拉杆1 - 烟花
summon minecraft:text_display 211 117.9 22 {text:'["\\u00a7e\\u00a7l烟花 (纪念区)"]',Tags:["lobby"],billboard:"vertical"}
summon minecraft:text_display 211 117.6 22 {text:'["\\u00a7d\\u00a7lFireworks (Here)"]',Tags:["lobby"],billboard:"vertical"}


## 210 116 30 拉杆2 - 烟花
summon minecraft:text_display 211 117.9 30 {text:'["\\u00a7a\\u00a7l烟花 (其他)"]',Tags:["lobby"],billboard:"vertical"}
summon minecraft:text_display 211 117.6 30 {text:'["\\u00a7b\\u00a7lFireworks (Other Places)"]',Tags:["lobby"],billboard:"vertical"}

# 跑酷 188 117 -3
summon minecraft:text_display 188 118.4 -3 {text:'["\\u00a7e\\u00a7l大厅跑酷区 \\u00a7b\\u00a7lParkour"]',Tags:["lobby"],billboard:"vertical"}
summon minecraft:text_display 188 117.8 -3 {text:'["\\u00a77踩下前方\\u00a7e",{"translate":"block.minecraft.light_weighted_pressure_plate","color":"yellow"},"\\u00a77开始跑酷\\u00a77，路上的金块是存档点"]',Tags:["lobby"],billboard:"vertical"}
summon minecraft:text_display 188 117.5 -3 {text:'["\\u00a77使用\\u00a7b物品栏道具\\u00a77返回记录点，"]',Tags:["lobby"],billboard:"vertical"}
summon minecraft:text_display 188 117.2 -3 {text:'["\\u00a77或者指令\\u00a7e /trigger parkour \\u00a77回记录点"]',Tags:["lobby"],billboard:"vertical"}
summon minecraft:text_display 188 116.9 -3 {text:'["\\u00a7a\\u00a7l祝你好运！"]',Tags:["lobby"],billboard:"vertical"}
summon minecraft:text_display 188 116.6 -3 {text:'["\\u00a7b\\u00a7lGood Luck \\u00a7c\\u00a7land \\u00a7d\\u00a7lHave Fun!"]',Tags:["lobby"],billboard:"vertical"}


summon minecraft:text_display 74 118 37 {text:'["\\u00a7a\\u00a7l活动广场"]',Tags:["lobby"],billboard:"vertical"}
summon minecraft:text_display 74 117.7 37 {text:'["\\u00a77Event Plaza"]',Tags:["lobby"],billboard:"vertical"}

summon minecraft:text_display 123 118 5 {text:'["\\u00a7e\\u00a7l神庙"]',Tags:["lobby"],billboard:"vertical"}
summon minecraft:text_display 123 117.7 5 {text:'["\\u00a77Temple"]',Tags:["lobby"],billboard:"vertical"}

summon minecraft:text_display 108 118 5 {text:'["\\u00a7e\\u00a7l神庙"]',Tags:["lobby"],billboard:"vertical"}
summon minecraft:text_display 108 117.7 5 {text:'["\\u00a77Temple"]',Tags:["lobby"],billboard:"vertical"}

summon minecraft:text_display 138 118 5 {text:'["\\u00a7e\\u00a7l神庙"]',Tags:["lobby"],billboard:"vertical"}
summon minecraft:text_display 138 117.7 5 {text:'["\\u00a77Temple"]',Tags:["lobby"],billboard:"vertical"}

summon minecraft:text_display 86 118 5 {text:'["\\u00a7b\\u00a7l咖啡馆"]',Tags:["lobby"],billboard:"vertical"}
summon minecraft:text_display 86 117.7 5 {text:'["\\u00a77Coffe Shop"]',Tags:["lobby"],billboard:"vertical"}


summon minecraft:text_display 240 118 -31 {text:'["\\u00a79\\u00a7l海滩"]',Tags:["lobby"],billboard:"vertical"}
summon minecraft:text_display 240 117.7 -31 {text:'["\\u00a77Beach"]',Tags:["lobby"],billboard:"vertical"}

execute as @e[type=item_frame] run data merge entity @s {Fixed:1b}

summon minecraft:text_display 188 117 50 {text:'["\\u00a7a\\u00a7l小游戏"]',Tags:["lobby"],billboard:"vertical"}
summon minecraft:text_display 188 116.7 50 {text:'["\\u00a771st Floor"]',Tags:["lobby"],billboard:"vertical"}

summon minecraft:text_display 197.0 122 48 {text:'["\\u00a7b\\u00a7l小游戏"]',Tags:["lobby"],billboard:"vertical"}
summon minecraft:text_display 197.0 121.7 48 {text:'["\\u00a772nd Floor"]',Tags:["lobby"],billboard:"vertical"}

summon minecraft:text_display 183 127 50 {text:'["\\u00a7c\\u00a7l小游戏"]',Tags:["lobby"],billboard:"vertical"}
summon minecraft:text_display 183 126.7 50 {text:'["\\u00a773rd Floor"]',Tags:["lobby"],billboard:"vertical"}

summon minecraft:text_display 238 117 66 {text:'["\\u00a7a\\u00a7l迷宫"]',Tags:["lobby"],billboard:"vertical"}
summon minecraft:text_display 238 116.7 66 {text:'["\\u00a77寻找出口吧！"]',Tags:["lobby"],billboard:"vertical"}


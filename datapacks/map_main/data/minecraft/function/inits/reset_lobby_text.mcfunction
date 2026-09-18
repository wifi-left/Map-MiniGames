##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
kill @e[tag=lobby,type=text_display]
kill @e[tag=lobby,type=interaction]
kill @e[tag=lobby,type=armor_stand]

summon minecraft:text_display 194 121.7 49 {text:["\u00a76\u00a7l小提示\n","\u00a7f您可以通过快捷键",{"keybind":"key.quickActions",color:"green"},"\u00a7f打开\u00a7b\u00a7l快捷菜单"],Invulnerable:1b,Silent:1b,NoGravity:1b,Tags:["lobby"],billboard:"vertical",see_through:false}

summon minecraft:text_display 182 121.7 49 {text:["\u00a76\u00a7l小提示\n","\u00a7f您可以通过命令\u00a7b/trigger hub\u00a7f返回大厅"],Invulnerable:1b,Silent:1b,NoGravity:1b,Tags:["lobby"],billboard:"vertical",see_through:false}

summon minecraft:text_display 194 121.7 15 {text:["\u00a76\u00a7l小提示\n","\u00a7f您可以在快捷菜单或者输入\u00a7b/trigger spec\u00a7f打开旁观者菜单"],Invulnerable:1b,Silent:1b,NoGravity:1b,Tags:["lobby"],billboard:"vertical",see_through:false}

summon minecraft:text_display 182 121.7 15 {text:["\u00a76\u00a7l小提示\n","\u00a7f您可以在§a游戏设置 - ",{translate:"options.sounds",color:green,fallback:"声音设置"},"§a - ",{translate:"soundCategory.voice",color:green,fallback:"玩家语音"},"\u00a7f调整地图背景音乐大小"],Invulnerable:1b,Silent:1b,NoGravity:1b,Tags:["lobby"],billboard:"vertical",see_through:false}


## 188 x 34 小游戏
summon minecraft:text_display 188 127.0 42 {text:["\u00a7a\u00a7l小游戏区"],Invulnerable:1b,Silent:1b,NoGravity:1b,Tags:["lobby"],billboard:"vertical",see_through:false}
summon minecraft:text_display 188 126.70 42 {text:["\u00a77Mini Games"],Invulnerable:1b,Silent:1b,NoGravity:1b,Tags:["lobby"],billboard:"vertical",see_through:false}

## 196 x 26 留影处
summon minecraft:text_display 195 127 32 {text:["\u00a7d\u00a7l留影处"],Invulnerable:1b,Silent:1b,NoGravity:1b,Tags:["lobby"],billboard:"vertical",see_through:false}
summon minecraft:text_display 195 126.7 32 {text:["\u00a77Photo Spot"],Invulnerable:1b,Silent:1b,NoGravity:1b,Tags:["lobby"],billboard:"vertical",see_through:false}

## 180 x 26 地图介绍
summon minecraft:text_display 181 127.0 32 {text:["\u00a7b\u00a7l地图介绍 & 地图设置"],Invulnerable:1b,Silent:1b,NoGravity:1b,Tags:["lobby"],billboard:"vertical",see_through:false}
summon minecraft:text_display 181 126.7 32 {text:["\u00a77introduction & Settings"],Invulnerable:1b,Silent:1b,NoGravity:1b,Tags:["lobby"],billboard:"vertical",see_through:false}

## 188 x 18 跑酷区
summon minecraft:text_display 188 127.0 22 {text:["\u00a7e\u00a7l跑酷区 & 活动区"],Invulnerable:1b,Silent:1b,NoGravity:1b,Tags:["lobby"],billboard:"vertical",see_through:false}
summon minecraft:text_display 188 126.70 22 {text:["\u00a77Parkour & Activity"],Invulnerable:1b,Silent:1b,NoGravity:1b,Tags:["lobby"],billboard:"vertical",see_through:false}

## 210 116 22 拉杆1 - 烟花
# summon minecraft:text_display 211 116.9 22 {text:["\u00a7e\u00a7l烟花 (纪念区)"],Invulnerable:1b,Silent:1b,NoGravity:1b,Tags:["lobby"],billboard:"vertical",see_through:false}
# summon minecraft:text_display 211 116.6 22 {text:["\u00a7d\u00a7lFireworks (Here)"],Invulnerable:1b,Silent:1b,NoGravity:1b,Tags:["lobby"],billboard:"vertical",see_through:false}


## 210 116 30 拉杆2 - 烟花
# summon minecraft:text_display 211 116.9 30 {text:["\u00a7a\u00a7l烟花 (其他)"],Invulnerable:1b,Silent:1b,NoGravity:1b,Tags:["lobby"],billboard:"vertical",see_through:false}
# summon minecraft:text_display 211 116.6 30 {text:["\u00a7b\u00a7lFireworks (Other Places)"],Invulnerable:1b,Silent:1b,NoGravity:1b,Tags:["lobby"],billboard:"vertical",see_through:false}

# 跑酷 188 117 -3
# 188 114 -16
summon minecraft:text_display 188 118.4 -13 {text:["\u00a7e\u00a7l大厅跑酷区 \u00a7b\u00a7lParkour"],Invulnerable:1b,Silent:1b,NoGravity:1b,Tags:["lobby"],billboard:"vertical",see_through:false}
summon minecraft:text_display 188 117.8 -13 {text:["\u00a77踩下前方\u00a7e",{"translate":"block.minecraft.light_weighted_pressure_plate","color":"yellow"},"\u00a77开始跑酷\u00a77，路上的金块是存档点"],Invulnerable:1b,Silent:1b,NoGravity:1b,Tags:["lobby"],billboard:"vertical",see_through:false}
summon minecraft:text_display 188 117.5 -13 {text:["\u00a77使用\u00a7b物品栏道具\u00a77返回记录点，"],Invulnerable:1b,Silent:1b,NoGravity:1b,Tags:["lobby"],billboard:"vertical",see_through:false}
summon minecraft:text_display 188 117.2 -13 {text:["\u00a77或者指令\u00a7e /trigger parkour \u00a77回记录点"],Invulnerable:1b,Silent:1b,NoGravity:1b,Tags:["lobby"],billboard:"vertical",see_through:false}
summon minecraft:text_display 188 116.9 -13 {text:["\u00a7a\u00a7l祝你好运！"],Invulnerable:1b,Silent:1b,NoGravity:1b,Tags:["lobby"],billboard:"vertical",see_through:false}
summon minecraft:text_display 188 116.6 -13 {text:["\u00a7b\u00a7lGood Luck \u00a7c\u00a7land \u00a7d\u00a7lHave Fun!"],Invulnerable:1b,Silent:1b,NoGravity:1b,Tags:["lobby"],billboard:"vertical",see_through:false}


summon minecraft:text_display 74 118 37 {text:["\u00a7a\u00a7l活动广场"],Invulnerable:1b,Silent:1b,NoGravity:1b,Tags:["lobby"],billboard:"vertical",see_through:false}
summon minecraft:text_display 74 117.7 37 {text:["\u00a77Event Plaza"],Invulnerable:1b,Silent:1b,NoGravity:1b,Tags:["lobby"],billboard:"vertical",see_through:false}


summon minecraft:text_display 86 118 5 {text:["\u00a7b\u00a7l咖啡馆"],Invulnerable:1b,Silent:1b,NoGravity:1b,Tags:["lobby"],billboard:"vertical",see_through:false}
summon minecraft:text_display 86 117.7 5 {text:["\u00a77Coffe Shop"],Invulnerable:1b,Silent:1b,NoGravity:1b,Tags:["lobby"],billboard:"vertical",see_through:false}

## Credit

summon minecraft:text_display 161 120 32 {text:["","\u00a7e※ \u00a76\u00a7l地图主创\u00a7e ※","\n\n",{"player":"wifi_left"}," \u00a7fwifi_left","\n",{"player":"wifi_right"}," \u00a7fwifi_right","\n\n\u00a7fAll By Datapacks!\n\u00a7f地图功能均由数据包实现！"],line_width:200,Invulnerable:1b,Silent:1b,NoGravity:1b,Tags:["lobby"],billboard:"vertical",see_through:false}


summon minecraft:text_display 157 120 32 {text:["","\u00a7e※ \u00a76特别感谢\u00a7e ※","\n\n",{"sprite":"item/golden_apple",atlas:items},{text:" 合工大MC社 \u00a7e(新大厅建筑)",color:aqua},"\n",{"sprite":"item/golden_apple",atlas:items},{text:" 西电MC社",color:aqua}," 、",{"sprite":"item/golden_apple",atlas:items},{text:" 北航MC社",color:aqua},"\n",{"text":"以及帮助过本地图的小伙伴们：",color:"green"},"\n",{player:"616789"},{text:" 616789",color:white},"、",{player:"Domnick_JYH"},{text:" Domnick_JYH",color:white},"\n",{player:"lawyer112"},{text:" lawyer112 \u00a7e(服务器支持)",color:white},"\n",{player:"Ginreny"},{text:" Ginreny \u00a7e(Battle Box)",color:white},"\n",{"sprite":"block/crafting_table_top"},{text:" 00ɹɐəlϽ \u00a7e(战利品表)",color:white},"\n",{"sprite":"block/iron_block"},{text:" LateTea、Wemsur",color:white},"\n",{"player":"canyuesama"},{text:" 残月sama",color:white},"、",{"sprite":"item/painting",atlas:"items"},{text:" 墨安",color:white}],line_width:200,Invulnerable:1b,Silent:1b,NoGravity:1b,Tags:["lobby"],billboard:"vertical",see_through:false}


summon minecraft:text_display 153 120 32 {text:["","\u00a7e※ \u00a76\u00a7l红石音乐来源\u00a7e ※","\n\n",{"sprite":"block/note_block"},{text:" MIDI文件转换",color:light_purple},"\n\u00a7f地图音乐使用 \u00a7bNote Block Studio \u00a7f从MIDI文件转换为数据包！"],line_width:200,Invulnerable:1b,Silent:1b,NoGravity:1b,Tags:["lobby"],billboard:"vertical",see_through:false}
# 碎碎念

summon minecraft:text_display 139 116 32 {text:["","\u00a7e※ \u00a7b\u00a7l一些碎碎念\u00a7e ※","\n\n","本地图理论上应该支持所有服务端。\n但出问题的\u00a7b不在于地图\u00a7r，而在于像\u00a7eNeoforged/Paper/Folia等服务端\u00a7f的问题。它们为了性能或是功能性而\u00a7b魔改\u00a7f了部分原版特性，导致地图在它们服务端会\u00a7c出现故障\u00a7r！\n如果您使用\u00a7e插件端\u00a7r，作者更建议您\u00a7a使用插件\u00a7r而不是\u00a7e使用本地图\u00a7r。\n\u00a7b原版数据包\u00a7r效率并\u00a7c不如插件\u00a7r。\n本地图设计理念为\u00a7a朋友间一起玩的派对游戏\u00a7r，所以不会对反作弊进行兼容！地图某些特性\u00a7d很容易被反作弊误判\u00a7f：可攀爬锁链、可攀爬空气。\n如果\u00a7b遇到此类误判\u00a7f，请不要找作者反馈，\u00a76请向反作弊模组、插件作者\u00a7f去反馈！"],line_width:200,Invulnerable:1b,Silent:1b,NoGravity:1b,Tags:["lobby"],billboard:"vertical",see_through:false}

# MiniGames Menu Opener

summon minecraft:text_display 188 118 79 {text:["\u00a7a\u00a7l小游戏菜单","\n\u00a77右键点击此处打开"],Invulnerable:1b,Silent:1b,NoGravity:1b,Tags:["lobby"],billboard:"vertical",see_through:false}

summon interaction 188 116 79 {width:1.2,height:2,Tags:["lobby","lobby.menu.minigames"],response:true}



summon minecraft:text_display 176 118 79 {text:["\u00a7e\u00a7l旁观菜单","\n\u00a77右键点击此处打开"],Invulnerable:1b,Silent:1b,NoGravity:1b,Tags:["lobby"],billboard:"vertical",see_through:false}

summon interaction 176 116 79 {width:1.2,height:2,Tags:["lobby","lobby.menu.spectator"],response:true}


summon minecraft:text_display 182 118 79 {text:["\u00a7d\u00a7l小游戏派对","\n\u00a77右键点击此处加入游戏"],Invulnerable:1b,Silent:1b,NoGravity:1b,Tags:["lobby"],billboard:"vertical",see_through:false}

summon interaction 182 116 79 {width:1.2,height:2,Tags:["lobby","lobby.menu.total_party"],response:true}


summon minecraft:text_display 200 118 79 {text:["\u00a7f\u00a7l合影处","\n\u00a77右键点击此处传送"],Invulnerable:1b,Silent:1b,NoGravity:1b,Tags:["lobby"],billboard:"vertical",see_through:false}

summon interaction 200 116 79 {width:1.2,height:2,Tags:["lobby","lobby.menu.photo_area"],response:true}

summon minecraft:text_display 194 118 79 {text:["\u00a7b\u00a7l主菜单","\n\u00a77右键点击此处打开"],Invulnerable:1b,Silent:1b,NoGravity:1b,Tags:["lobby"],billboard:"vertical",see_through:false}

summon interaction 194 116 79 {width:1.2,height:2,Tags:["lobby","lobby.menu.main"],response:true}


## Other 

summon minecraft:text_display 240 118 -31 {text:["\u00a79\u00a7l海滩"],Invulnerable:1b,Silent:1b,NoGravity:1b,Tags:["lobby"],billboard:"vertical",see_through:false}
summon minecraft:text_display 240 117.7 -31 {text:["\u00a77Beach"],Invulnerable:1b,Silent:1b,NoGravity:1b,Tags:["lobby"],billboard:"vertical",see_through:false}


execute as @e[type=item_frame] run data merge entity @s {Fixed:1b}


summon minecraft:text_display 238 117 66 {text:["\u00a7a\u00a7l迷宫"],Invulnerable:1b,Silent:1b,NoGravity:1b,Tags:["lobby"],billboard:"vertical",see_through:false}
summon minecraft:text_display 238 116.7 66 {text:["\u00a77寻找出口吧！"],Invulnerable:1b,Silent:1b,NoGravity:1b,Tags:["lobby"],billboard:"vertical",see_through:false}

summon minecraft:text_display 191 117 -33 {text:["\u00a76\u00a7l跑酷起点"],Invulnerable:1b,Silent:1b,NoGravity:1b,Tags:["lobby"],billboard:"vertical",see_through:false}
summon minecraft:text_display 191 116.7 -33 {text:["\u00a77Parkour Start"],Invulnerable:1b,Silent:1b,NoGravity:1b,Tags:["lobby"],billboard:"vertical",see_through:false}

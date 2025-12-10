gamemode adventure @s
tag @s remove build_parkour.nokiller
tellraw @a[team=build_parkour] ["\n\n\u00a7b轮到 ",{selector:"@s"},"\u00a7b 建造跑酷了。"]
clear @s *[custom_data~{"build_parkour":1}]
execute in parkourworld run tp @s -15 -63 304 45 0
tellraw @s ["\n\n\u00a76特殊方块效果：\n",{text:"■（混凝土）",color:red},"\u00a77 - 会让你\u00a7c失败\n",{text:"■（混凝土）",color:"light_purple"},"\u00a77 - 会让你\u00a7d漂浮\n",{text:"■（混凝土）",color:black},"\u00a77 - 会让你\u00a7c失败\n",{text:"■（混凝土）",color:green},"\u00a77 - 会让你\u00a7a跳的更高\n",{text:"■（混凝土）",color:"#7e4029"},"\u00a77 - 会让你\u00a7f走得慢\n",{text:"■（混凝土）",color:aqua},"\u00a77 - 会让你\u00a7b跑得更快\n",{text:"■（混凝土）",color:yellow},"\u00a77 - 会让你\u00a7e失明\n",{text:"含水海晶半砖",color:aqua},"\u00a77 - 会让你\u00a7b获得三叉戟"]
tellraw @s ["\u00a76该你建造了。\n\u00a7a提示：绿色羊毛为起点，你需要建造跑酷并放置一个终点（需要你建造，在背包中）。你需要在这之间建造一个跑酷。\n\u00a7c请注意：地板的红色混凝土方块会导致玩家被淘汰！\n\u00a76得分条件：有人没成功通过你的跑酷。"]
title @s title ["\u00a7a到你建造了"]
title @s subtitle ["\u00a76请阅读聊天栏获取信息"]
tag @s add build_parkour.builder
gamemode adventure @s
clear @s *[custom_data~{"build_parkour":1}]
tellraw @s ["\u00a7a到你跑酷了。\n\u00a76特殊方块效果：\n",{text:"■（混凝土）",color:red},"\u00a77 - 会让你\u00a7c失败\n",{text:"■（混凝土）",color:"light_purple"},"\u00a77 - 会让你\u00a7d漂浮\n",{text:"■（混凝土）",color:black},"\u00a77 - 会让你\u00a7c失败\n",{text:"■（混凝土）",color:green},"\u00a77 - 会让你\u00a7a跳的更高\n",{text:"■（混凝土）",color:"#7e4029"},"\u00a77 - 会让你\u00a7f走得慢\n",{text:"■（混凝土）",color:aqua},"\u00a77 - 会让你\u00a7b跑得更快\n",{text:"■（混凝土）",color:yellow},"\u00a77 - 会让你\u00a7e失明\n",{text:"含水海晶半砖",color:aqua},"\u00a77 - 会让你\u00a7b获得三叉戟\n"]
title @s title ["\u00a7a到你跑酷了"]
title @s subtitle ["\u00a76请阅读聊天栏获取信息"]
tellraw @s ["\u00a7c请注意！你只有一次跑酷机会！"]
execute in parkourworld run tp @s -15 -63 304 45 0
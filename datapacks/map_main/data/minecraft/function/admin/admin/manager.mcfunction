tellraw @s ["\n",{"text": "[＜ 返回上级]","color": "light_purple","clickEvent": {"action":"run_command","value": "/function minecraft:admin/main"}}," \u00a7e\u00a7l管理员管理\n\u00a77此管理员仅可以操作开始游戏。"]
tellraw @s [{"text": "[添加自己为管理员]","color":"green","clickEvent": {"action": "run_command","value": "/function admin/addme"}}]
tellraw @s [{"text": "[管理员列表]","color":"gold","clickEvent": {"action": "run_command","value": "/function admin/admin/listops"}}]
tellraw @s [{"text": "[添加管理员]","color":"aqua","clickEvent": {"action": "run_command","value": "/function admin/admin/listnew"}}]
tellraw @s [""]
playsound minecraft:ui.button.click player @s ~ ~ ~ 1 1 1

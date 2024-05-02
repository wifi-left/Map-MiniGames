playsound minecraft:ui.button.click player @s ~ ~ ~ 1 1 1
tellraw @s ["\n\u00a7b ※ \u00a76\u00a7l管理员菜单\n"]
tellraw @s ["\u00a7e- 管理员 ",{"text": "[管理地图管理员]","color":"gold","clickEvent": {"action": "run_command","value": "/function admin/admin/manager"}}]
tellraw @s ["\u00a7e- 仅管理员可以开启游戏 ",{"text": "[启用]","color":"green","clickEvent": {"action": "run_command","value": "/function admin/play/on"}},{"text": "[禁用]","color":"aqua","clickEvent": {"action": "run_command","value": "/function admin/play/off"}}]
tellraw @s ["\u00a7e- 管理员不在时是否可开始游戏 ",{"text": "[启用]","color":"green","clickEvent": {"action": "run_command","value": "/function admin/opoffline/on"}},{"text": "[禁用]","color":"aqua","clickEvent": {"action": "run_command","value": "/function admin/opoffline/off"}}]
tellraw @s ["\u00a7e- 仅管理员可以设置游戏 ",{"text": "[启用]","color":"green","clickEvent": {"action": "run_command","value": "/function admin/setting/on"}},{"text": "[禁用]","color":"aqua","clickEvent": {"action": "run_command","value": "/function admin/setting/off"}}]
tellraw @s ["\u00a7e- 职业PVP入口 ",{"text": "[启用]","color":"green","clickEvent": {"action": "run_command","value": "/function admin/pvp/on"}},{"text": "[禁用]","color":"aqua","clickEvent": {"action": "run_command","value": "/function admin/pvp/off"}}]
tellraw @s [""]
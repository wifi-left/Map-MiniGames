
tag @s add map.admin.target
tellraw @s [{"text": "[＜ 返回上级]","color": "light_purple","clickEvent": {"action":"run_command","value": "/function minecraft:admin/admin/manager"}},"\u00a7b\u00a7l 玩家（非管理员）\n\u00a7b---------------------------"]
execute as @a[tag=!map.op] run function minecraft:admin/admin/list/addmelist
tellraw @s ["\u00a7b---------------------------"]
tag @s remove map.admin.target
playsound minecraft:ui.button.click player @s ~ ~ ~ 1 1 1

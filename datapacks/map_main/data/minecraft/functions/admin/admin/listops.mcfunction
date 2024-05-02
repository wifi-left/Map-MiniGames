tag @s add map.admin.target
tellraw @s [{"text": "[＜ 返回上级]","color": "light_purple","clickEvent": {"action":"run_command","value": "/function minecraft:admin/admin/manager"}},"\u00a76\u00a7l 管理员列表\n\u00a76---------------------------"]
execute as @a[tag=map.op] run function minecraft:admin/admin/list/listme
tellraw @s ["\u00a76---------------------------"]
tag @s remove map.admin.target
playsound minecraft:ui.button.click player @s ~ ~ ~ 1 1 1

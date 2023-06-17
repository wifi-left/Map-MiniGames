summon marker ~ ~ ~ {Tags:["boat.tmp.marker","1"]}
summon marker ~ ~ ~ {Tags:["boat.tmp.marker","2"]}

tag @e[type=marker,tag=boat.tmp.marker,limit=1,sort=random] add boat.sel
execute if entity @e[tag=boat.sel,tag=1] run give @s carrot_on_a_stick{Unbreakable:1b,display:{Name:'"\\u00a7a\\u00a7l失明陷阱 \\u00a77- 右键使用"'},boatItem:4b,trap:1,CustomModelData:17}
execute if entity @e[tag=boat.sel,tag=2] run give @s carrot_on_a_stick{Unbreakable:1b,display:{Name:'"\\u00a7c\\u00a7l下车陷阱 \\u00a77- 右键使用"'},boatItem:4b,trap:2,CustomModelData:17}

title @s actionbar ["\u00a7e\u00a7l你获得了新的道具"]
tag @e[tag=boat.sel] remove boat.sel
kill @e[type=marker,tag=boat.tmp.marker]
playsound entity.player.levelup player @s ~ ~ ~ 10 1.5 1
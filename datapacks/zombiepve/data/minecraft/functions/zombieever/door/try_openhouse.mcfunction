execute as @s[nbt={SelectedItem:{tag:{lock:1}}}] run tag @s add ok
execute if entity @s[tag=ok] run function zombieever/door/open_house
execute if entity @s[tag=ok] run item replace entity @s weapon.mainhand with air
execute unless entity @s[tag=ok] if block 639 11 -46 iron_bars run title @s actionbar ["\u00a7c需要大门钥匙"]
execute unless entity @s[tag=ok] unless block 639 11 -46 iron_bars run title @s actionbar ["\u00a7c门已经被打开"]
execute unless entity @s[tag=ok] run playsound block.chest.locked player @s ~ ~ ~ 2 1 1

tag @s remove ok
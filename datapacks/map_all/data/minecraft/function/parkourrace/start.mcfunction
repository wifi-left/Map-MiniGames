##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
team join play.parkour @a[team=wait.parkour]
execute in parkourworld run tp @a[team=play.parkour] 12 -58 306 -90 0
scoreboard players set park.state state 1
tellraw @a ["§a[INFO] §bParkour Race §a开始了！"]
execute as @a[team=play.parkour] at @s run playsound minecraft:entity.ender_dragon.growl player @s
item replace entity @a[team=play.parkour] armor.feet with leather_boots[item_model=air,tooltip_display={hide_tooltip:true},unbreakable={},attribute_modifiers=[{id:"fall",type:"safe_fall_distance",amount:100,operation:"add_value"}],enchantments={binding_curse:1}]
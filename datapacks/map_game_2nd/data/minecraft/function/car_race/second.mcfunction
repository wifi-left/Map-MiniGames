##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute if score car.state state matches 2..2 run function car_race/check_all_players_on_car
execute if score car.state state matches 3..3 run function car_race/count_start_number
execute if score car.state state matches 1..3 run function car_race/testfor_gameover

kill @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{gcar:2}}}}]
execute as @a[team=car.play,gamemode=adventure] unless items entity @s container.* carrot_on_a_stick[custom_data~{gcar:2}] run item replace entity @s weapon.offhand with carrot_on_a_stick[custom_data={gcar:2},custom_name="\u00a7a",tooltip_display={hide_tooltip:true},unbreakable={},custom_model_data={floats:[16f]}] 1
effect give @a[team=car.play] night_vision 15 1 true
effect give @a[team=car.wait] night_vision 15 1 true
execute as @a[team=car.play] if score @s car.speed matches 0.. run title @s actionbar ["\u00a76Car Speed: ",{"score": {"name": "@s","objective": "car.speed"},"color": "red"},"\u00a76, Press [",{"keybind":"key.forward","color":"yellow"},"\u00a76] to \u00a7b\u00a7lSPEED UP"]

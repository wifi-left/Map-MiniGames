
function gcar:change_action
function gcar:action
execute as @a[nbt={Inventory:[{id:"minecraft:minecart",Slot:-106b,tag:{gcar:1b}}]}] at @s run function gcar:put_car
# execute as @a[scores={GCAR.long=10000}] at @s run advancement grant @s only gcar:car_master
execute as @e[type=item,nbt={Item:{tag:{display:{Name:'{"text":"GCAR"}'}}}}] at @s run function gcar:loot_car

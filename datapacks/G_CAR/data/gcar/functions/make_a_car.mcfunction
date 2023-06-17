give @s minecart{gcar:1b,display:{Name:'[{"text":"\\u00a7aGCAR \\u00a77 - 放到\\u00a7e副手"},"\\u00a77使用"]'}} 1
advancement revoke @s only gcar:make_a_car
clear @s knowledge_book 1
kill @e[type=item,nbt={Item:{id:"minecraft:knowledge_book"}},limit=1,sort=nearest,distance=0..10]
recipe take @s gcar:gcar
advancement grant @s only gcar:car_time
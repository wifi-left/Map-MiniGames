kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{"build_guess":1}}}}]
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{"build_guess":2}}}}]
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{"build_guess":3}}}}]
execute as @a[gamemode=adventure,team=build_guess] at @s run kill @e[type=item,distance=..5]
execute if score build_guess.state state matches 4..5 run function build_guess/during/player_parkouring
execute if score build_guess.state state matches 3 run function build_guess/during/give_item
scoreboard players add duel.clear state 1
execute if score duel.clear state matches 2.. run scoreboard players set duel.clear state 0
execute if score duel.clear state matches 0 run data modify block -111 78 -88 front_text.messages[1] set value '"\\u00a76[每局得分自动清除]"'
execute if score duel.clear state matches 1 run data modify block -111 78 -88 front_text.messages[1] set value '"\\u00a7a每局得分自动清除"'
execute if score duel.clear state matches 1 run data modify block -111 78 -88 front_text.messages[2] set value '"\\u00a76[不会在得分后清除]"'
execute if score duel.clear state matches 0 run data modify block -111 78 -88 front_text.messages[2] set value '"\\u00a7a不会在得分后清除"'
playsound minecraft:ui.button.click player @s ~ ~ ~ 1 1.5 1
playsound ui.button.click player @s
execute if score park.state state matches 1..1 run function minecraft:parkourrace/jointhegame
execute unless score park.state state matches 1.. if score wait.park.player tick matches 1.. run function minecraft:parkourrace/start
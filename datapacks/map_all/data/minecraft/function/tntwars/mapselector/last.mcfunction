playsound ui.button.click player @s ~ ~ ~ 1 1 1
execute if score tntwars.map state matches 1.. run scoreboard players remove tntwars.map state 1
function tntwars/mapselector/show

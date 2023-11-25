playsound ui.button.click player @s ~ ~ ~ 1 1 1
scoreboard players add wolf.auto state 1
execute if score wolf.auto state matches 3.. run scoreboard players set wolf.auto state 1
execute if score wolf.auto state matches 1 run data modify block ~ ~ ~ front_text.messages[2] set value '"\\u00a7a[自动模式]"'
execute if score wolf.auto state matches 2 run data modify block ~ ~ ~ front_text.messages[2] set value '"\\u00a7e[手动设定]"'

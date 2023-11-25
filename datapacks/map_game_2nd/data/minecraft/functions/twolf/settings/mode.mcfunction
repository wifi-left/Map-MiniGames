playsound ui.button.click player @s ~ ~ ~ 1 1 1
scoreboard players add wolf.mode state 1
execute if score wolf.mode state matches 3.. run scoreboard players set wolf.mode state 1
execute if score wolf.mode state matches 1 run data modify block ~ ~ ~ front_text.messages[2] set value '"\\u00a7a[屠边]"'
execute if score wolf.mode state matches 2 run data modify block ~ ~ ~ front_text.messages[2] set value '"\\u00a7c[屠城]"'

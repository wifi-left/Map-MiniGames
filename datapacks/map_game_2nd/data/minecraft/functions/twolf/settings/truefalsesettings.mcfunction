playsound ui.button.click player @s ~ ~ ~ 1 1 1
$scoreboard players add wolf.setting.$(setting) state 1
$execute if score wolf.setting.$(setting) state matches 2.. run scoreboard players set wolf.setting.$(setting) state 0
$execute if score wolf.setting.$(setting) state matches 1 run data modify block ~ ~ ~ front_text.messages[2] set value '"\\u00a7a[启用]"'
$execute if score wolf.setting.$(setting) state matches 0 run data modify block ~ ~ ~ front_text.messages[2] set value '"\\u00a7c[禁用]"'

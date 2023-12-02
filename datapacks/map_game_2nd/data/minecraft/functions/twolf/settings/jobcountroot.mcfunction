playsound ui.button.click player @s ~ ~ ~ 1 1 1
$scoreboard players $(control) wolf.$(job) state 1
$execute if score wolf.$(job) state matches ..-1 run scoreboard players set wolf.$(job) state 0
execute if score wolf.predictor state matches 1.. run scoreboard players set wolf.predictor state 1
execute if score wolf.witch state matches 1.. run scoreboard players set wolf.witch state 1
execute if score wolf.guard state matches 1.. run scoreboard players set wolf.guard state 1
execute if score wolf.cupid state matches 1.. run scoreboard players set wolf.cupid state 1
execute if score wolf.arsonist state matches 1.. run scoreboard players set wolf.arsonist state 1
$data modify block ~ 8 ~ front_text.messages[3] set value '{"score":{"objective":"state","name":"wolf.$(job)"},"color":"light_purple"}'
execute if score wolf.auto state matches 1 run title @s actionbar ["\u00a7e\u00a7l注意：\u00a7c您已启用\u00a7a[自动模式]\u00a7c，设置此处将无效。若希望其能生效，请切换至\u00a7e[手动模式]"]
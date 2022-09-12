playsound ui.button.click player @s
execute if score color.time state matches ..3 run scoreboard players set color.time state 4
execute if score color.time state matches 11.. run scoreboard players set color.time state 10
execute if score color.maxtime state matches ..-1 run scoreboard players set color.maxtime state 0
execute if score color.maxtime state >= color.time state run scoreboard players operation color.maxtime state = color.time state
execute if score color.maxtime state >= color.time state run scoreboard players remove color.maxtime state 1

data merge block -36 29 34 {Text3:'["\\u00a7b[",{"score":{"objective":"state","name":"color.time"},"color":"gold"}," \\u00a7bs]"]'}
data merge block -36 28 34 {Text3:'["\\u00a7b[",{"score":{"objective":"state","name":"color.maxtime"},"color":"gold"}," \\u00a7bs]"]'}

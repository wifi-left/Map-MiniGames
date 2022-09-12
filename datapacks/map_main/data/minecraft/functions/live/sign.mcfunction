## give @p minecraft:oak_sign{BlockEntityTag:{Text2:"[{\"text\":\"Parkour Race\",\"color\":\"aqua\",\"bold\":\"true\"}]",Text3:"[{\"text\":\"Click to join\",\"color\":\"gray\"}]",Text4:"[{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/tag @s add join.parkour\"}}]"}}
execute if score live.timelimit live.all matches ..29 run tellraw @s ["\u00a7e[Warn] \u00a7e这个时间太短了！"]
execute if score live.timelimit live.all matches ..29 run scoreboard players set live.timelimit live.all 30
execute if score live.timelimit live.all matches 301.. run tellraw @s ["\u00a7e[Warn] \u00a7e这个时间太长了！"]
execute if score live.timelimit live.all matches 301.. run scoreboard players set live.timelimit live.all 300
tellraw @s ["\u00a7a[INFO] \u00a7d时间限制: ",{"score":{"objective":"live.all","name":"live.timelimit"},"color":"aqua"},"\u00a7b s"]
data merge block 25 7 11 {Text3:"[{\"score\":{\"objective\":\"live.all\",\"name\":\"live.timelimit\"},\"color\":\"aqua\"},\"\\u00a7b s\"]"}

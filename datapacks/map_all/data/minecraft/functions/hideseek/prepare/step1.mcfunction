scoreboard players remove hide.huntgo board 1
data merge block 431 74 -267 {Text3:'["\\u00a7a你将在 ",{"score":{"objective":"board","name":"hide.huntgo"},"color":"yellow"},"\\u00a7es\\u00a7a 后出动"]'}
execute if score hide.huntgo board matches ..0 run function hideseek/prepare/hungo

execute if score hide.huntgo board matches 25 as @a[team=hide.play.ani] at @s run function hideseek/changeanimal

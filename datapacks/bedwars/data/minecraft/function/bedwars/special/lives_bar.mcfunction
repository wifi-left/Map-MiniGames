# 永久床（mode 7）：行动栏显示本队剩余重生次数
execute as @a[tag=bw.play,team=bw.red] run title @s actionbar ["§7剩余重生：§c",{"score":{"objective":"board","name":"bw.lives.red"}}]
execute as @a[tag=bw.play,team=bw.blue] run title @s actionbar ["§7剩余重生：§9",{"score":{"objective":"board","name":"bw.lives.blue"}}]
execute as @a[tag=bw.play,team=bw.yellow] run title @s actionbar ["§7剩余重生：§e",{"score":{"objective":"board","name":"bw.lives.yellow"}}]
execute as @a[tag=bw.play,team=bw.green] run title @s actionbar ["§7剩余重生：§a",{"score":{"objective":"board","name":"bw.lives.green"}}]

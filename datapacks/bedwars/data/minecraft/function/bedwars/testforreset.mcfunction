scoreboard players set bw.waitreset tick 0
execute as @a[tag=bw.player] run scoreboard players add bw.waitreset tick 1
execute if score bw.waitreset tick matches ..1 run function bedwars/after/overreset

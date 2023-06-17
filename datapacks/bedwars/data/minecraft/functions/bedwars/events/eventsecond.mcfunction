bossbar set minigames:bedwars players
bossbar set minigames:bedwars players @a[tag=bw.player]

# bw.event
# 0: Diamond Up 
# 1: Emerlad Up
# 2: Bed Gone
# 3: Dragon
execute if score bw.event state matches ..0 run function bedwars/events/during/upgradedianmond
execute if score bw.event state matches 1 run function bedwars/events/during/upgradeemerald
execute if score bw.event state matches 2 run function bedwars/events/during/bedgone
execute if score bw.event state matches 3 run function bedwars/events/during/dragon
execute if score bw.event state matches 4.. run function bedwars/events/during/overgame

scoreboard players remove bw.event.countdown board 1
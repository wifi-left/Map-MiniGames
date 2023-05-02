item replace entity @a[team=boat,tag=boat.notspawn] hotbar.7 with air
item replace entity @a[team=boat,tag=boat.notspawn] hotbar.8 with air

execute unless entity @a[team=boat,tag=boat.notinboat,gamemode=adventure] run function boat/readygo
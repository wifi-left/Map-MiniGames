summon marker ~ ~10 ~ {Tags:["boat.trap","trap2","boat.new"]}
scoreboard players set @e[tag=boat.new] park.uuid 100
particle cloud ~ ~ ~ 1 1 1 1 100 normal
tag @e[tag=boat.new] remove boat.new
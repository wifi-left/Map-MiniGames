##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
fill -7 17 75 32 17 114 air
# start from 30 17 77
kill @e[tag=color.test]
# start from -5 17 112 30 17 77
# to 13 18 94 12 18 95
# function color/rancolor
execute store result score color.ran.targetcount board run random value 1..19
function color/rancolor
execute if score color.ran.targetcount board matches 1 run clone -52 35 64 -52 35 64 -52 35 61
execute positioned -52 35 61 run function minecraft:color/ran_fill/3_whichblock

data merge storage minecraft:temp {x1:13,x2:12,y1:17,y2:17,z1:112,z2:77}
# 13 17 77 12 17 112
function color/ran_fill/3_place with storage minecraft:temp
function color/rancolor
execute if score color.ran.targetcount board matches 2 run clone -52 35 64 -52 35 64 -52 35 61
execute positioned -52 35 61 run function minecraft:color/ran_fill/3_whichblock

data merge storage minecraft:temp {x1:30,x2:-5,y1:17,y2:17,z1:94,z2:95}
# 30 17 94 -5 17 95
function color/ran_fill/3_place with storage minecraft:temp
function color/rancolor
execute if score color.ran.targetcount board matches 3 run clone -52 35 64 -52 35 64 -52 35 61
execute positioned -52 35 61 run function minecraft:color/ran_fill/3_whichblock

data merge storage minecraft:temp {x1:11,x2:-5,y1:17,y2:17,z1:93,z2:77}
# 11 17 93 -5 17 77
function color/ran_fill/3_place with storage minecraft:temp
function color/rancolor
execute if score color.ran.targetcount board matches 4 run clone -52 35 64 -52 35 64 -52 35 61
execute positioned -52 35 61 run function minecraft:color/ran_fill/3_whichblock

data merge storage minecraft:temp {x1:-5,x2:11,y1:17,y2:17,z1:112,z2:96}
# -5 17 112 11 17 96
function color/ran_fill/3_place with storage minecraft:temp
function color/rancolor
execute if score color.ran.targetcount board matches 5 run clone -52 35 64 -52 35 64 -52 35 61
execute positioned -52 35 61 run function minecraft:color/ran_fill/3_whichblock

data merge storage minecraft:temp {x1:14,x2:30,y1:17,y2:17,z1:96,z2:112}
# 14 17 96 30 17 112
function color/ran_fill/3_place with storage minecraft:temp
function color/rancolor
execute if score color.ran.targetcount board matches 6 run clone -52 35 64 -52 35 64 -52 35 61
execute positioned -52 35 61 run function minecraft:color/ran_fill/3_whichblock

data merge storage minecraft:temp {x1:14,x2:30,y1:17,y2:17,z1:93,z2:77}
# 14 17 93 30 17 77
function color/ran_fill/3_place with storage minecraft:temp
function color/rancolor
execute if score color.ran.targetcount board matches 7 run clone -52 35 64 -52 35 64 -52 35 61
execute positioned -52 35 61 run function minecraft:color/ran_fill/3_whichblock

data merge storage minecraft:temp {x1:1,x2:24,y1:17,y2:17,z1:106,z2:83}
function color/ran_fill/3_place with storage minecraft:temp

function color/rancolor
execute if score color.ran.targetcount board matches 11 run clone -52 35 64 -52 35 64 -52 35 61
execute positioned -52 35 61 run function minecraft:color/ran_fill/3_whichblock

data merge storage minecraft:temp {x1:5,x2:20,y1:17,y2:17,z1:102,z2:87}
function color/ran_fill/3_place with storage minecraft:temp

function color/rancolor
execute if score color.ran.targetcount board matches 13 run clone -52 35 64 -52 35 64 -52 35 61
execute positioned -52 35 61 run function minecraft:color/ran_fill/3_whichblock

data merge storage minecraft:temp {x1:7,x2:18,y1:17,y2:17,z1:100,z2:89}
function color/ran_fill/3_place with storage minecraft:temp
function color/rancolor

function color/rancolor
execute if score color.ran.targetcount board matches 15 run clone -52 35 64 -52 35 64 -52 35 61
execute positioned -52 35 61 run function minecraft:color/ran_fill/3_whichblock

data merge storage minecraft:temp {x1:9,x2:16,y1:17,y2:17,z1:98,z2:91}
function color/ran_fill/3_place with storage minecraft:temp
function color/rancolor

# 4 17 103 1 17 106
# 24 17 106 21 17 103
# 21 17 86 24 17 83
# 1 17 83 4 17 86
execute if score color.ran.targetcount board matches 16 run clone -52 35 64 -52 35 64 -52 35 61
execute positioned -52 35 61 run function minecraft:color/ran_fill/3_whichblock

data merge storage minecraft:temp {x1:4,x2:1,y1:17,y2:17,z1:103,z2:106}
function color/ran_fill/3_place with storage minecraft:temp
function color/rancolor
execute if score color.ran.targetcount board matches 18 run clone -52 35 64 -52 35 64 -52 35 61
execute positioned -52 35 61 run function minecraft:color/ran_fill/3_whichblock

data merge storage minecraft:temp {x1:24,x2:21,y1:17,y2:17,z1:106,z2:103}
function color/ran_fill/3_place with storage minecraft:temp
function color/rancolor
execute if score color.ran.targetcount board matches 12 run clone -52 35 64 -52 35 64 -52 35 61
execute positioned -52 35 61 run function minecraft:color/ran_fill/3_whichblock

data merge storage minecraft:temp {x1:21,x2:24,y1:17,y2:17,z1:86,z2:83}
function color/ran_fill/3_place with storage minecraft:temp
function color/rancolor
execute if score color.ran.targetcount board matches 19 run clone -52 35 64 -52 35 64 -52 35 61
execute positioned -52 35 61 run function minecraft:color/ran_fill/3_whichblock

data merge storage minecraft:temp {x1:1,x2:4,y1:17,y2:17,z1:83,z2:86}
function color/ran_fill/3_place with storage minecraft:temp


execute if score color.ran.targetcount board matches 17 run clone -52 35 64 -52 35 64 -52 35 61
execute positioned -52 35 61 run function minecraft:color/ran_fill/3_whichblock

data merge storage minecraft:temp {x1:11,x2:14,y1:17,y2:17,z1:96,z2:93}
function color/ran_fill/3_place with storage minecraft:temp
function color/rancolor



function color/rancolor
execute if score color.ran.targetcount board matches 8 run clone -52 35 64 -52 35 64 -52 35 61
execute positioned -52 35 61 run function minecraft:color/ran_fill/3_whichblock

data merge storage minecraft:temp {x1:13,x2:12,y1:17,y2:17,z1:106,z2:97}
# 13 17 106 12 17 97
function color/ran_fill/3_place with storage minecraft:temp
function color/rancolor
execute if score color.ran.targetcount board matches 10 run clone -52 35 64 -52 35 64 -52 35 61
execute positioned -52 35 61 run function minecraft:color/ran_fill/3_whichblock

data merge storage minecraft:temp {x1:13,x2:12,y1:17,y2:17,z1:92,z2:83}
# 13 17 92 12 17 83
function color/ran_fill/3_place with storage minecraft:temp

execute if score color.ran.targetcount board matches 14 run clone -52 35 64 -52 35 64 -52 35 61
execute positioned -52 35 61 run function minecraft:color/ran_fill/3_whichblock

data merge storage minecraft:temp {x1:1,x2:10,y1:17,y2:17,z1:94,z2:95}
# 1 17 94 10 17 95
function color/ran_fill/3_place with storage minecraft:temp

function color/rancolor
execute if score color.ran.targetcount board matches 9 run clone -52 35 64 -52 35 64 -52 35 61
execute positioned -52 35 61 run function minecraft:color/ran_fill/3_whichblock

data merge storage minecraft:temp {x1:15,x2:24,y1:17,y2:17,z1:95,z2:94}
# 15 17 95 24 17 94
function color/ran_fill/3_place with storage minecraft:temp

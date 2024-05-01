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
execute store result score color.ran.targetcount board run random value 1..18
function color/rancolor
execute if score color.ran.targetcount board matches 1 run clone -52 35 64 -52 35 64 -52 35 61
execute positioned -52 35 61 run function minecraft:color/ran_fill/3_whichblock

data merge storage minecraft:temp {x1:-5,x2:30,y1:17,y2:17,z1:112,z2:77}
function color/ran_fill/3_place with storage minecraft:temp
function color/rancolor
execute if score color.ran.targetcount board matches 2 run clone -52 35 64 -52 35 64 -52 35 61
execute positioned -52 35 61 run function minecraft:color/ran_fill/3_whichblock

data merge storage minecraft:temp {x1:-4,x2:29,y1:17,y2:17,z1:111,z2:78}
function color/ran_fill/3_place with storage minecraft:temp
function color/rancolor
execute if score color.ran.targetcount board matches 3 run clone -52 35 64 -52 35 64 -52 35 61
execute positioned -52 35 61 run function minecraft:color/ran_fill/3_whichblock

data merge storage minecraft:temp {x1:-3,x2:28,y1:17,y2:17,z1:110,z2:79}
function color/ran_fill/3_place with storage minecraft:temp
function color/rancolor
execute if score color.ran.targetcount board matches 4 run clone -52 35 64 -52 35 64 -52 35 61
execute positioned -52 35 61 run function minecraft:color/ran_fill/3_whichblock

data merge storage minecraft:temp {x1:-2,x2:27,y1:17,y2:17,z1:109,z2:80}
function color/ran_fill/3_place with storage minecraft:temp
function color/rancolor
execute if score color.ran.targetcount board matches 5 run clone -52 35 64 -52 35 64 -52 35 61
execute positioned -52 35 61 run function minecraft:color/ran_fill/3_whichblock

data merge storage minecraft:temp {x1:-1,x2:26,y1:17,y2:17,z1:108,z2:81}
function color/ran_fill/3_place with storage minecraft:temp
function color/rancolor
execute if score color.ran.targetcount board matches 6 run clone -52 35 64 -52 35 64 -52 35 61
execute positioned -52 35 61 run function minecraft:color/ran_fill/3_whichblock

data merge storage minecraft:temp {x1:0,x2:25,y1:17,y2:17,z1:107,z2:82}
function color/ran_fill/3_place with storage minecraft:temp
function color/rancolor
execute if score color.ran.targetcount board matches 7 run clone -52 35 64 -52 35 64 -52 35 61
execute positioned -52 35 61 run function minecraft:color/ran_fill/3_whichblock

data merge storage minecraft:temp {x1:1,x2:24,y1:17,y2:17,z1:106,z2:83}
function color/ran_fill/3_place with storage minecraft:temp
function color/rancolor
execute if score color.ran.targetcount board matches 8 run clone -52 35 64 -52 35 64 -52 35 61
execute positioned -52 35 61 run function minecraft:color/ran_fill/3_whichblock

data merge storage minecraft:temp {x1:2,x2:23,y1:17,y2:17,z1:105,z2:84}
function color/ran_fill/3_place with storage minecraft:temp
function color/rancolor
execute if score color.ran.targetcount board matches 9 run clone -52 35 64 -52 35 64 -52 35 61
execute positioned -52 35 61 run function minecraft:color/ran_fill/3_whichblock

data merge storage minecraft:temp {x1:3,x2:22,y1:17,y2:17,z1:104,z2:85}
function color/ran_fill/3_place with storage minecraft:temp
function color/rancolor
execute if score color.ran.targetcount board matches 10 run clone -52 35 64 -52 35 64 -52 35 61
execute positioned -52 35 61 run function minecraft:color/ran_fill/3_whichblock

data merge storage minecraft:temp {x1:4,x2:21,y1:17,y2:17,z1:103,z2:86}
function color/ran_fill/3_place with storage minecraft:temp
function color/rancolor
execute if score color.ran.targetcount board matches 11 run clone -52 35 64 -52 35 64 -52 35 61
execute positioned -52 35 61 run function minecraft:color/ran_fill/3_whichblock

data merge storage minecraft:temp {x1:5,x2:20,y1:17,y2:17,z1:102,z2:87}
function color/ran_fill/3_place with storage minecraft:temp
function color/rancolor
execute if score color.ran.targetcount board matches 12 run clone -52 35 64 -52 35 64 -52 35 61
execute positioned -52 35 61 run function minecraft:color/ran_fill/3_whichblock

data merge storage minecraft:temp {x1:6,x2:19,y1:17,y2:17,z1:101,z2:88}
function color/ran_fill/3_place with storage minecraft:temp
function color/rancolor
execute if score color.ran.targetcount board matches 13 run clone -52 35 64 -52 35 64 -52 35 61
execute positioned -52 35 61 run function minecraft:color/ran_fill/3_whichblock

data merge storage minecraft:temp {x1:7,x2:18,y1:17,y2:17,z1:100,z2:89}
function color/ran_fill/3_place with storage minecraft:temp
function color/rancolor
execute if score color.ran.targetcount board matches 14 run clone -52 35 64 -52 35 64 -52 35 61
execute positioned -52 35 61 run function minecraft:color/ran_fill/3_whichblock

data merge storage minecraft:temp {x1:8,x2:17,y1:17,y2:17,z1:99,z2:90}
function color/ran_fill/3_place with storage minecraft:temp
function color/rancolor
execute if score color.ran.targetcount board matches 15 run clone -52 35 64 -52 35 64 -52 35 61
execute positioned -52 35 61 run function minecraft:color/ran_fill/3_whichblock

data merge storage minecraft:temp {x1:9,x2:16,y1:17,y2:17,z1:98,z2:91}
function color/ran_fill/3_place with storage minecraft:temp
function color/rancolor
execute if score color.ran.targetcount board matches 16 run clone -52 35 64 -52 35 64 -52 35 61
execute positioned -52 35 61 run function minecraft:color/ran_fill/3_whichblock

data merge storage minecraft:temp {x1:10,x2:15,y1:17,y2:17,z1:97,z2:92}
function color/ran_fill/3_place with storage minecraft:temp
function color/rancolor
execute if score color.ran.targetcount board matches 17 run clone -52 35 64 -52 35 64 -52 35 61
execute positioned -52 35 61 run function minecraft:color/ran_fill/3_whichblock

data merge storage minecraft:temp {x1:11,x2:14,y1:17,y2:17,z1:96,z2:93}
function color/ran_fill/3_place with storage minecraft:temp
function color/rancolor
execute if score color.ran.targetcount board matches 18 run clone -52 35 64 -52 35 64 -52 35 61
execute positioned -52 35 61 run function minecraft:color/ran_fill/3_whichblock

data merge storage minecraft:temp {x1:12,x2:13,y1:17,y2:17,z1:95,z2:94}
function color/ran_fill/3_place with storage minecraft:temp

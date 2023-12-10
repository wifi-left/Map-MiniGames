# 屠城
## 没炸弹人 普通丘比特
execute unless score twolf.state state matches 3 if score wolf.mode board matches 2 unless score wolf.r.tnt board matches 1.. if score wolf.r.bad board matches ..0 run function minecraft:twolf/over/good

execute if score wolf.cupid.type board matches 0..1 unless score twolf.state state matches 3 if score wolf.mode board matches 2 unless score wolf.r.tnt board matches 1.. if score wolf.r.good board matches ..0 run function minecraft:twolf/over/bad

## 有炸弹人 普通丘比特
execute if score wolf.cupid.type board matches 0..1 unless score twolf.state state matches 3 if score wolf.mode board matches 2 if score wolf.tnt board matches 1.. if score wolf.r.bad board matches ..0 if score wolf.r.tnt board matches 1.. run function minecraft:twolf/over/boom
execute if score wolf.cupid.type board matches 0..1 unless score twolf.state state matches 3 if score wolf.mode board matches 2 if score wolf.r.good board matches ..0 run function minecraft:twolf/over/bad
## 有炸弹人 特别的丘比特
execute unless score twolf.state state matches 3 if score wolf.cupid.type board matches 2 if score wolf.mode board matches 2 if score wolf.r.tnt board matches ..0 if score wolf.r.good board matches ..0 if score wolf.r.cupids board matches ..0 run function minecraft:twolf/over/bad
execute unless score twolf.state state matches 3 if score wolf.cupid.type board matches 2 if score wolf.mode board matches 2 if score wolf.r.tnt board matches 1.. if score wolf.r.bad board matches ..0 if score wolf.r.cupids board matches ..0 run function minecraft:twolf/over/boom
execute unless score twolf.state state matches 3 if score wolf.cupid.type board matches 2 if score wolf.mode board matches 2 if score wolf.r.tnt board matches ..0 if score wolf.r.good board matches ..0 if score wolf.r.cupids board matches 1.. run function minecraft:twolf/over/cupid
execute unless score twolf.state state matches 3 if score wolf.cupid.type board matches 2 if score wolf.mode board matches 2 if score wolf.r.tnt board matches ..0 if score wolf.r.good board matches ..1 if score wolf.r.bad board matches ..1 if score wolf.r.cupids board matches 1.. run function minecraft:twolf/over/cupid
execute unless score twolf.state state matches 3 if score wolf.cupid.type board matches 2 if entity @a[tag=wolf.connected,scores={LRS_JOB=7}] if score wolf.mode board matches 2 if score wolf.r.good board matches ..0 if score wolf.r.good board matches ..0 unless entity @a[tag=wolf.tip,gamemode=adventure,scores={LRS_JOB=4},tag=!wolf.connected] run function minecraft:twolf/over/cupid

# 屠边
## 没炸弹人 普通丘比特

execute if score wolf.cupid.type board matches 0..1 unless score twolf.state state matches 3 if score wolf.mode board matches 1 unless score wolf.r.tnt board matches 1.. if score wolf.r.person board matches ..0 run function minecraft:twolf/over/bad
execute if score wolf.cupid.type board matches 0..1 unless score twolf.state state matches 3 if score wolf.mode board matches 1 unless score wolf.r.tnt board matches 1.. if score wolf.r.god board matches ..0 run function minecraft:twolf/over/bad
## 有炸弹人 普通丘比特
execute if score wolf.cupid.type board matches 0..1 unless score twolf.state state matches 3 if score wolf.mode board matches 1 if score wolf.r.bad board matches ..0 if score wolf.r.tnt board matches 1.. run function minecraft:twolf/over/boom
## 有炸弹人 特别的丘比特
execute unless score twolf.state state matches 3 if score wolf.cupid.type board matches 2 if score wolf.mode board matches 1 if score wolf.r.tnt board matches ..0 if score wolf.r.person board matches ..0 if score wolf.r.cupids board matches ..0 run function minecraft:twolf/over/bad
execute unless score twolf.state state matches 3 if score wolf.cupid.type board matches 2 if score wolf.mode board matches 1 if score wolf.r.tnt board matches ..0 if score wolf.r.god board matches ..0 if score wolf.r.cupids board matches ..0 run function minecraft:twolf/over/bad

execute unless score twolf.state state matches 3 if score wolf.cupid.type board matches 2 if score wolf.mode board matches 1 if score wolf.r.tnt board matches 1.. if score wolf.r.bad board matches ..0 if score wolf.r.cupids board matches ..0 run function minecraft:twolf/over/boom

execute unless score twolf.state state matches 3 if score wolf.cupid.type board matches 2 if score wolf.mode board matches 1 if score wolf.r.tnt board matches ..0 if score wolf.r.god board matches ..0 if score wolf.r.cupids board matches 1.. run function minecraft:twolf/over/cupid
execute unless score twolf.state state matches 3 if score wolf.cupid.type board matches 2 if score wolf.mode board matches 1 if score wolf.r.tnt board matches ..0 if score wolf.r.person board matches ..0 if score wolf.r.cupids board matches 1.. run function minecraft:twolf/over/cupid

execute unless score twolf.state state matches 3 if score wolf.cupid.type board matches 2 if score wolf.mode board matches 1 if score wolf.tnt board matches ..0 if score wolf.r.good board matches ..1 if score wolf.r.bad board matches ..1 if score wolf.r.cupids board matches 1.. run function minecraft:twolf/over/cupid

execute unless score twolf.state state matches 3 if score wolf.cupid.type board matches 2 if entity @a[tag=wolf.connected,scores={LRS_JOB=7}] if score wolf.mode board matches 1 if score wolf.r.good board matches ..0 if score wolf.r.good board matches ..0 unless entity @a[tag=wolf.tip,gamemode=adventure,scores={LRS_JOB=4},tag=!wolf.connected] run function minecraft:twolf/over/cupid

execute unless score twolf.state state matches 3 if score wolf.r.all board matches ..1 if score wolf.r.good board matches 1.. run function minecraft:twolf/over/good
execute unless score twolf.state state matches 3 if score wolf.r.all board matches ..1 if score wolf.r.bad board matches 1.. run function minecraft:twolf/over/bad
execute unless score twolf.state state matches 3 if score wolf.r.all board matches ..1 if score wolf.r.cupid board matches 1.. run function minecraft:twolf/over/cupid
execute unless score twolf.state state matches 3 if score wolf.r.all board matches ..1 run function minecraft:twolf/over/unexpected

# 全部
execute unless score twolf.state state matches 3 unless entity @a[tag=wolf.connected] unless score wolf.r.tnt board matches 1.. if score wolf.r.bad board matches 1.. if score wolf.r.good board matches ..1 run function minecraft:twolf/over/bad
execute unless score twolf.state state matches 3 unless entity @a[tag=wolf.connected] unless score wolf.r.tnt board matches 1.. if score wolf.r.bad board matches ..0 run function minecraft:twolf/over/good
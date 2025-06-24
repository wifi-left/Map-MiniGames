execute store result score bomb.tmp2 board run fill 424 -49 610 440 -49 626 air replace lime_wool
# 分数用 bomb.score
scoreboard players set bomb.score.tmp board 200
scoreboard players operation bomb.score.tmp board -= bomb.tmp2 board
scoreboard players operation @a[gamemode=adventure,team=boom,limit=1] bomb.score += bomb.score.tmp board
tellraw @a[team=boom] ["\n\u00a7a    拆弹成功！\n    \u00a76成绩：",{score:{name:"bomb.score.tmp",objective:"board"},color:yellow},"\n\n    \u00a7b当前玩家",{selector:"@a[gamemode=adventure,team=boom,limit=1]",color:gold},"\u00a7b总分数：",{score:{name:"@a[gamemode=adventure,team=boom,limit=1]",objective:"bomb.score"},color:yellow},"\n"]
function minecraft:bomb/round/next_person
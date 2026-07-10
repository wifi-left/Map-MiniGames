# scoreboard players add boob.level board 0
# execute if score boob.level board matches 0 in overworld run clone 448 -59 626 464 -55 610 424 -59 610
fill 424 -59 610 440 -55 626 air strict
execute if score boob.level board matches ..1 in overworld run clone 448 -59 626 464 -55 610 424 -59 610 strict
execute if score boob.level board matches 2 in overworld run clone 448 -53 626 464 -49 610 424 -59 610 strict
execute if score boob.level board matches 3 in overworld run clone 448 -47 626 464 -43 610 424 -59 610 strict
execute if score boob.level board matches 4 in overworld run clone 448 -41 626 464 -37 610 424 -59 610 strict
execute if score boob.level board matches 5 in overworld run clone 448 -35 626 464 -31 610 424 -59 610 strict
execute if score boob.level board matches 6 in overworld run clone 448 -29 626 464 -25 610 424 -59 610 strict
function minecraft:bomb/round/testfor_sculk

clear @a[team=boom]
execute if score boom.state state matches 2..4 run tellraw @a[team=boom] ["\u00a7d请等待\u00a7a2s\u00a7d，游戏将会继续。"]
execute if score boom.state state matches 2..5 run schedule function minecraft:bomb/round/cdover 2s replace
execute if score boom.state state matches 2..4 run scoreboard players set boom.state state 5

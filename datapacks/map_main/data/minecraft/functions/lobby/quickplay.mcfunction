scoreboard players enable @s quickplay
execute if score @s quickplay matches 1 run tellraw @s ["\n\u00a76 ※ 快速加入游戏 ※ \u00a7b游戏ID列表：\n","\n\u00a7a2 \u00a77- \u00a7bBattle Box\n\u00a7a3 \u00a77- \u00a7b信仰方块\n\u00a7a4 \u00a77- \u00a7b冰船\n\u00a7a5 \u00a77- \u00a7b赛车\n\u00a7a6 \u00a77- \u00a7b色盲大战\n\u00a7a7 \u00a77- \u00a7b星跳水立方\n\u00a7a8 \u00a77- \u00a7b战桥\n\u00a7a9 \u00a77- \u00a7b高尔夫\n\u00a7a10 \u00a77- \u00a7b躲猫猫（道具）\n\u00a7a11 \u00a77- \u00a7b躲猫猫（动物）\n\u00a7a12 \u00a77- \u00a7b烫手的山芋\n\u00a7a13 \u00a77- \u00a7b饥饿游戏\n\u00a7a14 \u00a77- \u00a7b职业战争\n\u00a7a15 \u00a77- \u00a7b密室杀手\n\u00a7a16 \u00a77- \u00a7bLive Longest\n\u00a7a17 \u00a77- \u00a7b关卡跑酷\n\u00a7a18 \u00a77- \u00a7b冬泳怪鸽\n\u00a7a19 \u00a77- \u00a7b棋类游戏\n\u00a7a20 \u00a77- \u00a7b狼人杀\n\u00a7a21 \u00a77- \u00a7b小游戏合集\n\u00a7a22 \u00a77- \u00a7bSnow\n\u00a7a23 \u00a77- \u00a7bTNT Wars\n\u00a7a24 \u00a77- \u00a7bZombie Days（PVE）\n\u00a7a25 \u00a77- \u00a7b生存游戏\n\u00a7a26 \u00a77- \u00a7b起床战争\n\n\u00a7e使用 \u00a76/trigger quickplay set <游戏ID>\u00a7b 快速进入"]

execute if score @s quickplay matches 2 run function battle/join
execute if score @s quickplay matches 3 run function believer/join
execute if score @s quickplay matches 4 run function boat/join
execute if score @s quickplay matches 5 run function car_race/join
execute if score @s quickplay matches 6 run function color/join
execute if score @s quickplay matches 7 run function dropper/join
execute if score @s quickplay matches 8 run function duel/join
execute if score @s quickplay matches 9 run function golf/join
execute if score @s quickplay matches 10 run function hide2/join
execute if score @s quickplay matches 11 run function hideseek/join
execute if score @s quickplay matches 12 run function hotpotever/join
execute if score @s quickplay matches 13 run function hunger/join
execute if score @s quickplay matches 14 run function job_pvp/join
execute if score @s quickplay matches 15 run function killerever/join
execute if score @s quickplay matches 16 run tag @s add join.livelongest
execute if score @s quickplay matches 17 run function lpark/join
execute if score @s quickplay matches 18 run function poolwar/join
execute if score @s quickplay matches 19 run function small_games/chess/join
execute if score @s quickplay matches 20 run function twolf/join
execute if score @s quickplay matches 21 run function small_games/total/join
execute if score @s quickplay matches 22 run function snow/join
execute if score @s quickplay matches 23 run function tntwars/join
execute if score @s quickplay matches 24 run function zombieever/join
execute if score @s quickplay matches 25 run function surgame:join
execute if score @s quickplay matches 26 run function bedwars/message/join
execute if score @s quickplay matches 1.. run playsound entity.experience_orb.pickup player @s ~ ~ ~ 1 1 1
execute if score @s quickplay matches 27.. run tellraw @s ["\u00a7c很抱歉，未知游戏的ID！"]

execute if score @s quickplay matches 1.. run scoreboard players reset @s quickplay
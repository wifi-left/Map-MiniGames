scoreboard players add desk.russia.nowround.rounds board 1
tellraw @a[team=deskgame] [{selector:"@s"},"\u00a76 使用了\u00a7b[时间冻结]\u00a76，他将在接下来 ",{score:{name:"desk.russia.nowround.rounds",objective:board},color:yellow},"\u00a76 轮内继续行动。"]
clear @s *[custom_data~{desk:"freeze"}] 1
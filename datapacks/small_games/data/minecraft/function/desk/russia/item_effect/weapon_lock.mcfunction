tag @s add desk.russia.hitted
execute at @s as @a[limit=1,sort=nearest,tag=!desk.russia.hitted,gamemode=adventure,team=deskgame] run tag @s add desk.russia.hitted
tag @s remove desk.russia.hitted
tellraw @a[team=deskgame] [{selector:"@s"},"\u00a76 使用了\u00a75[武器锁定]。玩家 ",{selector:"@a[tag=desk.russia.hitted]"},"\u00a76 在接下来一轮中将无法使用枪。"]
tag @a[tag=desk.russia.hitted] add desk.russia.lock
tag @a remove desk.russia.hitted
clear @s *[custom_data~{desk:"weapon_lock"}] 1

execute if score wolf.step board matches 1 if entity @a[team=Who_Killer_Text,scores={SP=-1..,LRS_JOB=4},gamemode=adventure] run function small_games/wolf/next
execute if score wolf.step board matches 2 if entity @a[team=Who_Killer_Text,scores={SP=-1..,LRS_JOB=1},gamemode=adventure] run function small_games/wolf/next
execute if score wolf.step board matches 3 if entity @a[team=Who_Killer_Text,scores={SP=-2..,LRS_JOB=2},gamemode=adventure] run function small_games/wolf/next
execute if score wolf.step board matches 4 if entity @a[team=Who_Killer_Text,scores={SP=-1..,LRS_JOB=3},gamemode=adventure] run function small_games/wolf/next
execute if score wolf.step board matches 5 unless entity @a[team=Who_Killer_Text,scores={SP=..-2},gamemode=adventure] run function small_games/wolf/next
execute if score wolf.step board matches 5 as @a[team=Who_Killer_Text,scores={SP=-2..},tag=!taged,gamemode=adventure] run function small_games/wolf/message/morsel
# execute if score wolf.step board matches 6 unless entity @a[team=Who_Killer_Text,scores={SP=..-2},gamemode=adventure] run function small_games/wolf/next
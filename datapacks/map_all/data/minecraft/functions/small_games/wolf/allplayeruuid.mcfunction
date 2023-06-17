scoreboard players set LRS_UUID board 0
scoreboard players reset * LRS_UUID
execute as @a[team=Who_Killer_Text,gamemode=adventure] run function small_games/wolf/getuuid

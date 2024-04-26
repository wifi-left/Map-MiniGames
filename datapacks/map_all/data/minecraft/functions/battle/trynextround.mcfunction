scoreboard players set battle.state state 2
schedule function battle/nextround 5s
execute if score battle.score.r board matches 3.. run function battle/over/red
execute if score battle.score.b board matches 3.. run function battle/over/blue
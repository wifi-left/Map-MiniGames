scoreboard players add score.blue tick 1
tellraw @a[team=play.duel.blue] [{"selector":"@s"},"\u00a79 给蓝队加了一分！"]
tellraw @a[team=play.duel.yellow] [{"selector":"@s"},"\u00a79 给蓝队加了一分！"]
function duel/score/flush
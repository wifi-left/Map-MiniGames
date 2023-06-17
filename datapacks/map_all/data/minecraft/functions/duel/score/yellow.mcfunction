scoreboard players add score.yellow tick 1
tellraw @a[team=play.duel.blue] [{"selector":"@s"},"\u00a7e 给黄队加了一分！"]
tellraw @a[team=play.duel.yellow] [{"selector":"@s"},"\u00a7e 给黄队加了一分！"]
function duel/score/flush
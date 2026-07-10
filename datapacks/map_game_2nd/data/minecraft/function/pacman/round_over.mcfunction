fill -115 -60 -289 -183 -60 -221 white_concrete replace gold_block
team join pacman @a[team=pacman.killer]
tellraw @a[team=pacman] ["\n\u00a76本轮结束。\n"]
function minecraft:pacman/next_round
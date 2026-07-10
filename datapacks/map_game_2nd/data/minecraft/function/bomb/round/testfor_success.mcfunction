clone 424 -59 626 440 -55 610 424 -49 610
execute store result score bomb.tmp board run fill 424 -49 610 440 -49 626 air replace #sculk_blocks
execute if score bomb.tmp board matches ..0 run function minecraft:bomb/round/success
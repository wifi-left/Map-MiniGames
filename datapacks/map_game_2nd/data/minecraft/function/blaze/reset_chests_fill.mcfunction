execute unless loaded ~ ~ ~ run forceload add ~ ~ ~ ~
setblock ~ ~ ~ air strict
execute unless score blaze.special state matches 2 run setblock ~ ~ ~ barrel{lock:{items:"command_block_minecart"}} strict
execute if score blaze.special state matches 2 run setblock ~ ~ ~ barrel{LootTable:"blaze/barrel"} strict
forceload remove ~ ~ ~ ~
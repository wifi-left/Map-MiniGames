# execute in airworld run forceload add -57 574 -135 652
execute in airworld run fill -167 -61 639 -199 -34 607 air
execute in airworld run fill -167 -61 639 -199 -37 607 stone
execute in airworld run fill -167 -35 639 -199 -36 607 dirt
execute in airworld run fill -167 -34 639 -199 -34 607 grass_block
execute in airworld run fill -167 -33 639 -199 -30 607 air
execute in airworld run fill -167 -62 639 -199 -62 607 bedrock
execute in airworld positioned -167 -61 639 run kill @e[type=item,dx=-32,dy=28,dz=-32]
execute in airworld positioned -167 -61 639 run kill @e[type=falling_block,dx=-32,dy=28,dz=-32]

# /fill -167 -61 639 -199 -34 607
forceload add 515 279 490 205
forceload add 465 281 539 355
clone 515 -45 279 490 -30 205 490 -45 281 replace
clone 515 -29 279 490 -15 205 490 -29 281 replace
clone 515 -15 279 490 -5 205 490 -15 281 replace
execute in overworld positioned 502 -38 315 run kill @e[type=item,distance=0..60]
forceload remove 515 279 490 205
forceload remove 465 281 539 355
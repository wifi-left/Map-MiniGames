##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
forceload add 693 205 619 279
forceload add 465 281 539 355
# /fill 693 -63 205 619 -63 279 air
#  542 -3 205 616 -3 279
fill 619 -63 355 693 -63 281 air

clone 693 -63 205 619 -61 279 465 -63 281 strict replace
clone 693 -60 205 619 -56 279 465 -60 281 strict replace
clone 693 -55 205 619 -51 279 465 -55 281 strict replace
clone 693 -50 205 619 -46 279 465 -50 281 strict replace
clone 693 -45 205 619 -41 279 465 -45 281 strict replace
clone 693 -40 205 619 -36 279 465 -40 281 strict replace
clone 693 -35 205 619 -31 279 465 -35 281 strict replace
clone 693 -30 205 619 -26 279 465 -30 281 strict replace
clone 693 -25 205 619 -21 279 465 -25 281 strict replace
clone 693 -20 205 619 -16 279 465 -20 281 strict replace
clone 693 -15 205 619 -11 279 465 -15 281 strict replace
clone 693 -10 205 619 -6 279 465 -10 281 strict replace
clone 693 -6 205 619 -2 279 465 -6 281 strict replace

# clone 515 -45 279 490 -30 205 490 -45 281 replace
# clone 515 -29 279 490 -15 205 490 -29 281 replace
# clone 515 -15 279 490 -5 205 490 -15 281 replace
execute in overworld positioned 502 -38 315 run kill @e[type=item,distance=0..60]
# forceload remove 542 355 616 281
forceload remove 693 205 619 279

forceload remove 465 281 539 355


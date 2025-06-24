##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
forceload add 542 205 616 279
forceload add 465 281 539 355

#  542 -3 205 616 -3 279
fill 619 -63 355 693 -63 281 air
clone 542 -63 205 616 -61 279 465 -63 281 strict replace
clone 542 -60 205 616 -56 279 465 -60 281 strict replace
clone 542 -55 205 616 -51 279 465 -55 281 strict replace
clone 542 -50 205 616 -46 279 465 -50 281 strict replace
clone 542 -45 205 616 -41 279 465 -45 281 strict replace
clone 542 -40 205 616 -36 279 465 -40 281 strict replace
clone 542 -35 205 616 -31 279 465 -35 281 strict replace
clone 542 -30 205 616 -26 279 465 -30 281 strict replace
clone 542 -25 205 616 -21 279 465 -25 281 strict replace
clone 542 -20 205 616 -16 279 465 -20 281 strict replace
clone 542 -15 205 616 -11 279 465 -15 281 strict replace
clone 542 -10 205 616 -6 279 465 -10 281 strict replace
clone 542 -6 205 616 -2 279 465 -6 281 strict replace

# clone 515 -45 279 490 -30 205 490 -45 281 replace
# clone 515 -29 279 490 -15 205 490 -29 281 replace
# clone 515 -15 279 490 -5 205 490 -15 281 replace
execute in overworld positioned 502 -38 315 run kill @e[type=item,distance=0..60]
forceload remove 542 205 616 279
forceload remove 465 281 539 355


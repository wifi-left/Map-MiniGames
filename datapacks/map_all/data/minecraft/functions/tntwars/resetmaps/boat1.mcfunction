##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
forceload add 465 205 539 279
forceload add 465 281 539 355

fill 619 -63 355 693 -63 281 air

clone 465 -63 205 539 -61 279 465 -63 281 replace
clone 465 -60 205 539 -56 279 465 -60 281 replace
clone 465 -55 205 539 -51 279 465 -55 281 replace
clone 465 -50 205 539 -46 279 465 -50 281 replace
clone 465 -45 205 539 -41 279 465 -45 281 replace
clone 465 -40 205 539 -36 279 465 -40 281 replace
clone 465 -35 205 539 -31 279 465 -35 281 replace
clone 465 -30 205 539 -26 279 465 -30 281 replace
clone 465 -25 205 539 -21 279 465 -25 281 replace
clone 465 -20 205 539 -16 279 465 -20 281 replace
clone 465 -15 205 539 -11 279 465 -15 281 replace
clone 465 -10 205 539 -6 279 465 -10 281 replace
clone 465 -6 205 539 -2 279 465 -6 281 replace

# clone 515 -45 279 490 -30 205 490 -45 281 replace
# clone 515 -29 279 490 -15 205 490 -29 281 replace
# clone 515 -15 279 490 -5 205 490 -15 281 replace
execute in overworld positioned 502 -38 315 run kill @e[type=item,distance=0..60]
forceload remove 465 205 539 279
forceload remove 465 281 539 355

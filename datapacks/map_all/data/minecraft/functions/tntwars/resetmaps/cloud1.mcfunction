forceload add 542 355 616 281
forceload add 465 281 539 355

# /fill 542 -25 355 616 -26 281
#  542 -3 205 616 -3 279

clone 542 -63 355 616 -61 281 465 -63 281 replace
clone 542 -60 355 616 -56 281 465 -60 281 replace
clone 542 -55 355 616 -51 281 465 -55 281 replace
clone 542 -50 355 616 -46 281 465 -50 281 replace
clone 542 -45 355 616 -41 281 465 -45 281 replace
clone 542 -40 355 616 -36 281 465 -40 281 replace
clone 542 -35 355 616 -31 281 465 -35 281 replace
clone 542 -30 355 616 -26 281 465 -30 281 replace
clone 542 -25 355 616 -21 281 465 -25 281 replace
clone 542 -20 355 616 -16 281 465 -20 281 replace
clone 542 -15 355 616 -11 281 465 -15 281 replace
clone 542 -10 355 616 -6 281 465 -10 281 replace
clone 542 -6 355 616 -2 281 465 -6 281 replace

# clone 515 -45 279 490 -30 205 490 -45 281 replace
# clone 515 -29 279 490 -15 205 490 -29 281 replace
# clone 515 -15 279 490 -5 205 490 -15 281 replace
execute in overworld positioned 502 -38 315 run kill @e[type=item,distance=0..60]
forceload remove 542 355 616 281
forceload remove 465 281 539 355
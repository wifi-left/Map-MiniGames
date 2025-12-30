execute as @a[x=-55,y=-62,z=572,distance=..2,team=pillar,gamemode=!spectator,gamemode=!creative] at @s run function pillar/died
execute as @a[team=pillar,gamemode=!spectator,gamemode=!creative] at @s run kill @s[y=-67,dy=-250]
execute if score pillar.state state matches 3 as @a[team=pillar,gamemode=!spectator,gamemode=!creative] at @s run kill @s[y=41,dy=2]
execute in airworld as @e[type=!player] at @s run kill @s[y=-65,dy=-20]
execute in airworld as @e[type=!player] at @s run kill @s[y=-65,dy=-20]

execute if score pillar.remove.now board matches -1 run fill -135 38 652 -57 36 574 air destroy
execute if score pillar.remove.now board matches 0 run fill -134 38 651 -58 36 575 air destroy
execute if score pillar.remove.now board matches 1 run fill -133 38 650 -59 36 576 air destroy
execute if score pillar.remove.now board matches 2 run fill -132 38 649 -60 36 577 air destroy
execute if score pillar.remove.now board matches 3 run fill -131 38 648 -61 36 578 air destroy
execute if score pillar.remove.now board matches 4 run fill -130 38 647 -62 36 579 air destroy
execute if score pillar.remove.now board matches 5 run fill -129 38 646 -63 36 580 air destroy
execute if score pillar.remove.now board matches 6 run fill -128 38 645 -64 36 581 air destroy
execute if score pillar.remove.now board matches 7 run fill -127 38 644 -65 36 582 air destroy
execute if score pillar.remove.now board matches 8 run fill -126 38 643 -66 36 583 air destroy
execute if score pillar.remove.now board matches 9 run fill -125 38 642 -67 36 584 air destroy
execute if score pillar.remove.now board matches 10 run fill -124 38 641 -68 36 585 air destroy
execute if score pillar.remove.now board matches 11 run fill -123 38 640 -69 36 586 air destroy
execute if score pillar.remove.now board matches 12 run fill -122 38 639 -70 36 587 air destroy
execute if score pillar.remove.now board matches 13 run fill -121 38 638 -71 36 588 air destroy
execute if score pillar.remove.now board matches 14 run fill -120 38 637 -72 36 589 air destroy
execute if score pillar.remove.now board matches 15 run fill -119 38 636 -73 36 590 air destroy
execute if score pillar.remove.now board matches 16 run fill -118 38 635 -74 36 591 air destroy
execute if score pillar.remove.now board matches 17 run fill -117 38 634 -75 36 592 air destroy
execute if score pillar.remove.now board matches 18 run fill -116 38 633 -76 36 593 air destroy
execute if score pillar.remove.now board matches 19 run fill -115 38 632 -77 36 594 air destroy
execute if score pillar.remove.now board matches 20 run fill -114 38 631 -78 36 595 air destroy
execute if score pillar.remove.now board matches 21 run fill -113 38 630 -79 36 596 air destroy
execute if score pillar.remove.now board matches 22 run fill -112 38 629 -80 36 597 air destroy
execute if score pillar.remove.now board matches 23 run fill -111 38 628 -81 36 598 air destroy
execute if score pillar.remove.now board matches 24 run fill -110 38 627 -82 36 599 air destroy
execute if score pillar.remove.now board matches 25 run fill -109 38 626 -83 36 600 air destroy
execute if score pillar.remove.now board matches 26 run fill -108 38 625 -84 36 601 air destroy
execute if score pillar.remove.now board matches 27 run fill -107 38 624 -85 36 602 air destroy
execute if score pillar.remove.now board matches 28 run fill -106 38 623 -86 36 603 air destroy
execute if score pillar.remove.now board matches 29 run fill -105 38 622 -87 36 604 air destroy
execute if score pillar.remove.now board matches 30 run fill -104 38 621 -88 36 605 air destroy
execute if score pillar.remove.now board matches 31 run fill -103 38 620 -89 36 606 air destroy
execute if score pillar.remove.now board matches 32 run fill -102 38 619 -90 36 607 air destroy
execute if score pillar.remove.now board matches 33 run fill -101 38 618 -91 36 608 air destroy
execute if score pillar.remove.now board matches 34 run fill -100 38 617 -92 36 609 air destroy
execute if score pillar.remove.now board matches 35 run fill -99 38 616 -93 36 610 air destroy
execute if score pillar.remove.now board matches 36 run fill -98 38 615 -94 36 611 air destroy
execute if score pillar.remove.now board matches 37 run fill -97 38 614 -95 36 612 air destroy
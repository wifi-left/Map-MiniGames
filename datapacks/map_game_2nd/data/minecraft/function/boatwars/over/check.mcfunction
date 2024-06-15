##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute if score btw.state state matches 1.. if score btw.score.a board > btw.score.b board run function boatwars/over/a
execute if score btw.state state matches 1.. if score btw.score.a board < btw.score.b board run function boatwars/over/b
execute if score btw.state state matches 1.. if score btw.score.a board = btw.score.b board run function boatwars/over/aandb

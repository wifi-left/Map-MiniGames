##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tellraw @a[team=play.zombie] ["\u00a7e亚奇洛贝：\u00a7f但如今村长已经去世，房屋已经荒废掉了。不过，他应该并没有把钥匙转交给别人，你去他屋子里找找看看吧。"]
schedule function minecraft:zombieever/talks/findkey/4 4s append

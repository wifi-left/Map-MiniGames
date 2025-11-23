# scoreboard players operation random_parkour.x.t temp = random_parkour.x board
# scoreboard players operation random_parkour.y.t temp = random_parkour.y board
# scoreboard players operation random_parkour.z.t temp = random_parkour.z board
scoreboard players remove random_parkour.step board 1
scoreboard players set random_parkour.tempx temp 0
scoreboard players set random_parkour.tempy temp 0
scoreboard players set random_parkour.tempz temp 0


function minecraft:random_parkour/map/move/x
function minecraft:random_parkour/map/move/z
function minecraft:random_parkour/map/move/y

function minecraft:random_parkour/map/move/confirm_move
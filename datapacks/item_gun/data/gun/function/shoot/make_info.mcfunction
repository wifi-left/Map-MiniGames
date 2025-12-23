# item replace block 0 -64 0 container.0 from entity @s weapon.mainhand
execute unless items block 0 -64 0 container.0 *[custom_data~{gun_data:{is_gun:true}}] run return fail

execute store result score gun.bullet.now temp run data get block 0 -64 0 Items[{Slot:0b}].count

execute if score gun.bullet.now temp matches ..1 run function gun:refuse/refuse_bullet_from_shoot
execute if score gun.bullet.now temp matches ..1 run function gun:player/give_back_gun

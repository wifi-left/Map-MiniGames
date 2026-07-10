scoreboard players set bullet.refused temp 0
$execute store result score bullet.refused temp run clear @s *[custom_data~{gun_data:{is_bullet:true,type:$(type)}}] $(max_count)
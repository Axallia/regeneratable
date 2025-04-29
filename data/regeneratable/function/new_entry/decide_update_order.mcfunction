scoreboard players operation @s regeneratable.update_order = *regeneratable.global.last regeneratable.update_order
scoreboard players add *regeneratable.global.last regeneratable.update_order 1
execute if score *regeneratable.global.last regeneratable.update_order \
    >= *regeneratable.global regeneratable.update_order \
    run scoreboard players set *regeneratable.global.last regeneratable.update_order 0

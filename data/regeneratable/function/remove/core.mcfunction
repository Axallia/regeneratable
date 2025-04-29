execute store result score *x regeneratable.entry.true_coords run data get entity @s Pos[0]
execute store result score *y regeneratable.entry.true_coords run data get entity @s Pos[1]
execute store result score *z regeneratable.entry.true_coords run data get entity @s Pos[2]


scoreboard players operation *x regeneratable.entry.chunk_coords = *x regeneratable.entry.true_coords
scoreboard players operation *x regeneratable.entry.chunk_coords /= .16 regeneratable.const
scoreboard players operation *x regeneratable.entry.chunk_coords *= .16 regeneratable.const

scoreboard players set *y regeneratable.entry.chunk_coords 0

scoreboard players operation *z regeneratable.entry.chunk_coords = *z regeneratable.entry.true_coords
scoreboard players operation *z regeneratable.entry.chunk_coords /= .16 regeneratable.const
scoreboard players operation *z regeneratable.entry.chunk_coords *= .16 regeneratable.const

execute store result storage regeneratable:coords x long 1.0 run scoreboard players get *x regeneratable.entry.chunk_coords
execute store result storage regeneratable:coords y long 1.0 run scoreboard players get *y regeneratable.entry.chunk_coords
execute store result storage regeneratable:coords z long 1.0 run scoreboard players get *z regeneratable.entry.chunk_coords


execute store result score *regeneratable.rc_local.already_has_holder regeneratable.success \
    run function regeneratable:new_entry/core.check_for_holder with storage regeneratable:coords

execute store result storage regeneratable:entry_buffer.block x long 1.0 run scoreboard players get *x regeneratable.entry.true_coords
execute store result storage regeneratable:entry_buffer.block y long 1.0 run scoreboard players get *y regeneratable.entry.true_coords
execute store result storage regeneratable:entry_buffer.block z long 1.0 run scoreboard players get *z regeneratable.entry.true_coords

execute if entity @s[tag=regeneratable.entry_type.block] run \
    scoreboard players set *regeneratable.current_entry regeneratable.entry_type 0
execute if entity @s[tag=regeneratable.entry_type.loot_table] run \
    scoreboard players set *regeneratable.current_entry regeneratable.entry_type 1

execute if score *regeneratable.rc_local.already_has_holder regeneratable.success matches 0 \
    run tellraw @a [\
        {"text":"<warn> [regeneratable.entry_remover] No holder was found at ", "color": "gold"},\
        {"storage": "regeneratable:coords", "nbt": "x"}, " ",\
        {"storage": "regeneratable:coords", "nbt": "y"}, " ",\
        {"storage": "regeneratable:coords", "nbt": "z"}, " "]
execute if score *regeneratable.rc_local.already_has_holder regeneratable.success matches 1 \
    run function regeneratable:remove/entry.at_coords with storage regeneratable:coords


kill @s
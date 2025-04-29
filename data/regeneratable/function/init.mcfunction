scoreboard objectives add regeneratable.const dummy
scoreboard objectives add regeneratable.success dummy
scoreboard objectives add regeneratable.iter dummy

execute unless score *regeneratable.min_message_severity regeneratable.const matches -2147483648..2147483647 \
    run scoreboard players set *regeneratable.min_message_severity regeneratable.const -1

scoreboard objectives add regeneratable.version dummy
execute unless score *regeneratable.global regeneratable.version matches -2147483648..2147483647 \
    run scoreboard players set *regeneratable.global regeneratable.version 0

scoreboard objectives add regeneratable.update_order dummy
execute unless score *regeneratable.global regeneratable.update_order matches -2147483648..2147483647 \
    run scoreboard players set *regeneratable.global regeneratable.update_order 48

execute unless score *regeneratable.global.timer regeneratable.update_order matches -2147483648..2147483647 \
    run scoreboard players set *regeneratable.global.timer regeneratable.update_order 0

execute unless score *regeneratable.global.last regeneratable.update_order matches -2147483648..2147483647 \
    run scoreboard players set *regeneratable.global.last regeneratable.update_order 0

scoreboard objectives add regeneratable.entries_amount.blocks dummy
scoreboard objectives add regeneratable.entries_amount.loot_tables dummy


# 0 - block
# 1 - loot_table
scoreboard objectives add regeneratable.entry_type dummy

scoreboard objectives add regeneratable.entry.true_coords dummy
scoreboard objectives add regeneratable.entry.chunk_coords dummy
scoreboard objectives add regeneratable.entry.chunk_offset_coords dummy

scoreboard players set *x regeneratable.entry.true_coords -1
scoreboard players set *y regeneratable.entry.true_coords -1
scoreboard players set *z regeneratable.entry.true_coords -1
data merge storage regeneratable:coords {x:-1L, y:-1L, z:-1L}

data merge storage regeneratable:entry_buffer.block { \
    x:-1L, y:-1L, z:-1L,\
    block_id: "minecraft:air" \
}
data merge storage regeneratable:entry_buffer.loot_table { \
    x:-1L, y:-1L, z:-1L,\
    loot_table_id: "minecraft:empty" \
}

data merge storage regeneratable:holder_buffer {\
    entries_blocks:[], \
    entries_loot_tables:[]\
}


# consts
scoreboard players set .16 regeneratable.const 16


tellraw @a ["Regeneratable is loaded!\nMake sure to check out the ",\
    {"text": "regeneratable:..help", "underlined": true, "color": "gold",\
    "clickEvent": {"action": "suggest_command", "value": "/function regeneratable:..help"}},\
    " function if you are new / forgot a thing or two"\
]
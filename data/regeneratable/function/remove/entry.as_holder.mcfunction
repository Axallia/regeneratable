scoreboard players set *regeneratable.rcah_local.removed_entry regeneratable.success 0

$execute if data entity @s data.entries.blocks[{x:$(x)L,y:$(y)L,z:$(z)L}] \
    run function regeneratable:remove/entry.block.as_holder with storage regeneratable:entry_buffer.block

$execute if data entity @s data.entries.loot_tables[{x:$(x)L,y:$(y)L,z:$(z)L}] \
    run function regeneratable:remove/entry.loot_table.as_holder with storage regeneratable:entry_buffer.block

$execute if score *regeneratable.rcah_local.removed_entry regeneratable.success matches 0 \
    run execute if score *regeneratable.min_message_severity regeneratable.const matches ..1 run tellraw @a "§6<warn> [regeneratable.entry_remover] No entry was found at $(x) $(y) $(z)"
$execute if data entity @s data.entries.loot_tables[{x:$(x)L,y:$(y)L,z:$(z)L}] run function regeneratable:new_entry/add_to_the_list.as_holder.loot_table_entry.old_replacement

data modify storage regeneratable:entry_buffer.loot_table x set from storage regeneratable:entry_buffer.block x
data modify storage regeneratable:entry_buffer.loot_table y set from storage regeneratable:entry_buffer.block y
data modify storage regeneratable:entry_buffer.loot_table z set from storage regeneratable:entry_buffer.block z
data modify entity @s data.entries.loot_tables append from storage regeneratable:entry_buffer.loot_table

scoreboard players add @s regeneratable.entries_amount.loot_tables 1
# so you can see the result of how would it look like when regened
function regeneratable:regenerate/entry.loot_table.temporal_chest.from_data with storage regeneratable:entry_buffer.block
function regeneratable:regenerate/entry.loot_table.from_data with storage regeneratable:entry_buffer.loot_table

execute if score *regeneratable.min_message_severity regeneratable.const matches ..1 run \
tellraw @a [\
    {"text":"<info> [regeneratable.new_entry.holder] successfuly added new loot table entry for ("}, \
    {"storage": "regeneratable:entry_buffer.loot_table", "nbt": "loot_table_id"}, \
    {"text": "), at position "}, \
        {"storage": "regeneratable:entry_buffer.loot_table", "nbt": "x"}, " ", \
        {"storage": "regeneratable:entry_buffer.loot_table", "nbt": "y"}, " ", \
        {"storage": "regeneratable:entry_buffer.loot_table", "nbt": "z"}\
    ]
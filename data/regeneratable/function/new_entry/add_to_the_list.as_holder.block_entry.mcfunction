#execute if data data.entries.blocks[{x:$(x)L,y:$(y)L,z:$(z)L}] run 
#execute if data entity @s data.entries.blocks[{x:-1L,y:-1L,z:-1L}] run function regeneratable:new_entry/add_to_the_list.as_holder.block_entry.old_replacement
$execute if data entity @s data.entries.blocks[{x:$(x)L,y:$(y)L,z:$(z)L}] run function regeneratable:new_entry/add_to_the_list.as_holder.block_entry.old_replacement

data modify entity @s data.entries.blocks append from storage regeneratable:entry_buffer.block
scoreboard players add @s regeneratable.entries_amount.blocks 1
# so you can see the result of how would it look like when regened
function regeneratable:regenerate/entry.block.from_data with storage regeneratable:entry_buffer.block

execute if score *regeneratable.min_message_severity regeneratable.const matches ..0 run \
tellraw @a [\
    {"text":"<info> [regeneratable.new_entry.holder] successfuly added new block entry for ("}, \
    {"storage": "regeneratable:entry_buffer.block", "nbt": "block_id"}, \
    {"text": "), at position "}, \
        {"storage": "regeneratable:entry_buffer.block", "nbt": "x"}, " ", \
        {"storage": "regeneratable:entry_buffer.block", "nbt": "y"}, " ", \
        {"storage": "regeneratable:entry_buffer.block", "nbt": "z"}\
    ]
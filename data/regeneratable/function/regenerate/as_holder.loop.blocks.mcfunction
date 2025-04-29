#execute store result storage regeneratable:index_buffer i int 1.0 \
#    run scoreboard players get *regeneratable.current_entry regeneratable.iter
#function regeneratable:regenerate/entry.at_index with storage regeneratable:index_buffer

function regeneratable:regenerate/entry.block.from_data with storage regeneratable:holder_buffer entries_blocks[-1]
data remove storage regeneratable:holder_buffer entries_blocks[-1]

scoreboard players add *regeneratable.current_entry regeneratable.iter 1
execute if score *regeneratable.current_entry regeneratable.iter < @s regeneratable.entries_amount.blocks \
    run function regeneratable:regenerate/as_holder.loop.blocks
data merge entity @s {data:{entries:{blocks:[],loot_tables:[]}, name:"Regeneratable Entries Holder"}, Tags:["regeneratable.holder"]}
scoreboard players operation @s regeneratable.version = *regeneratable.global regeneratable.version
scoreboard players set @s regeneratable.entries_amount.blocks 0
scoreboard players set @s regeneratable.entries_amount.loot_tables 0

function regeneratable:new_entry/decide_update_order

# adds to the list last saved entry (which is always the one which triggered the holder creation)
function regeneratable:new_entry/add_to_the_list.as_holder
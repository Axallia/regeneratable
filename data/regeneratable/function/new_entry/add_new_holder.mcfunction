$execute positioned $(x) $(y) $(z) summon marker run function regeneratable:new_entry/add_new_holder.setup
execute unless score *regeneratable.min_message_severity regeneratable.const matches ..0 run return 0

$execute if score *regeneratable.min_message_severity regeneratable.const matches ..1 run tellraw @a "<info> [regeneratable.new_entry] Initialized new holder at $(x) $(y) $(z)"
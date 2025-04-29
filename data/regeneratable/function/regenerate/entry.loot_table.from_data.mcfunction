#$execute unless block $(x) $(y) $(z) #regeneratable:container run return \
#    run tellraw @a [{"text":"<error> [regeneratable.regenerate.entry] No valid container was found at ", "color": "red"},\
#    {"storage": "regeneratable:entry_buffer.block", "nbt": "x"}, " ",\
#    {"storage": "regeneratable:entry_buffer.block", "nbt": "y"}, " ",\
#    {"storage": "regeneratable:entry_buffer.block", "nbt": "z"}, " "\
#    ]
$execute if score *regeneratable.min_message_severity regeneratable.const matches ..2 \
    unless block $(x) $(y) $(z) #regeneratable:container run return \
    run tellraw @a [{"text":"<error> [regeneratable.regenerate.entry] No valid container was found at $(x) $(y) $(z)", "color": "red"}]

$data merge block $(x) $(y) $(z) {LootTable:"$(loot_table_id)"}
#$execute if score *regeneratable.min_message_severity regeneratable.const matches ..1 run tellraw @a "<info> [regeneratable.regenerate.entry] loot table entry ($(loot_table_id)) was succesfully regenerated at $(x) $(y) $(z)"
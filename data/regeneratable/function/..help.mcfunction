tellraw @a [\
"\n\n<info> [regeneratable.help] ->\n",\
"§9-Basic info & naming scheme:\n",\
"§6(regenerating) entry§f - A stored position of a block/loot table with their string ID.\n",\
"§6(entry) holder§f - Marker entity, which is placed once per chunk, which stores all of the entries and which executes their regeneration when it's version value doen't match the global one.\n",\
"§6update order§f - A 32bit integer value assigned to every holder, basically putting this holder in a group, each group will regenerate one by",\
" one at differet times, but all memebers of each individual group will regenenrate at once.\n",\
" By default, there are 48 groups, one group regenerates every half a second (so 10 ticks), which means",\
" if you have 48 groups it will take 24 seconds in order to go through every single one and regnerate them.\n\n",\
"Some functions require some macro arguments to execute.\n",\
" to view the full list of reqired arguments with example usage, run:\n",\
" function <function_name>.show_params\n\n",\
"If you see underlined colored text, ",\
{"text": "it's probably clickable!",\
    "color":"gold", "underlined": true,\
    "clickEvent": {"action": "suggest_command", "value": "/function regeneratable:clickable_example"}}, \
"\n\n\n",\
"§9-Functions:\n",\
"§6>", {"text": ".set_min_message_severity",\
    "color":"gold", "underlined": true,\
    "clickEvent": {"action": "suggest_command", "value": "/function regeneratable:.set_min_message_severity."}}, \
" Changes the minimal message severity in order for messages to display.\n",\
" Used to, for example, silence all of the Debug Info and leave only the Warrnings and Errors. Or only the Errors. Or silence everything altogether.\n\n",\
"§6>", {"text": ".set_max_update_order",\
    "color":"gold", "underlined": true,\
    "clickEvent": {"action": "suggest_command", "value": "/function regeneratable:.set_max_update_order {value:48}"}}, \
" Changes max update order value (AKA amount of possible groups) to whatever the 'value' argument would be set to.\n",\
{"text": "(more details on usage)\n\n",\
    "color":"gray", "italic": true, "underlined": true,\
    "clickEvent": {"action": "run_command", "value": "/function regeneratable:.set_max_update_order.show_params"}},\
"§6>", {"text": ".redecide_update_orders",\
    "color":"gold", "underlined": true,\
    "clickEvent": {"action": "suggest_command", "value": "/function regeneratable:.redecide_update_orders"}}, \
" When you change the max update order, it may break the already existing holders, by making distrubution of holder in groups non-uniform,",\
" or, in the worst case, making some holders not regenerate their entries at all.\n",\
" This function should re-distribute the currently loaded holders so there are no issues with them.\n\n",\
"§6>", {"text": "give/block_entry",\
    "color":"gold", "underlined": true,\
    "clickEvent": {"action": "suggest_command", "value": "/function regeneratable:give/block_entry {\"block_id\": \"minecraft:dirt\", \"name\": \"Some\"}"}},\
";\n ", {"text": "give/loot_table_entry",\
    "color":"gold", "underlined": true,\
    "clickEvent": {"action": "suggest_command", "value": "/function regeneratable:give/loot_table_entry {\"loot_table_id\": \"minecraft:chests/simple_dungeon\", \"name\": \"Some\"}"}},\
"\n To place entries in the world, you need their \"placers\", basically spawn eggs with specific",\
" components for the dp to identify and use.\n",\
" Writting the give command by hand is very slow, so there is some handy functions",\
" which meant to speed up the process, by requiering only 2 arguments and dealing with the rest.\n",\
{"text": "(more details on give/block_entry usage)\n",\
    "color":"gray", "italic": true, "underlined": true,\
    "clickEvent": {"action": "run_command", "value": "/function regeneratable:give/block_entry.show_params"}},\
{"text": "(more details on give/loot_table_entry usage)\n",\
    "color":"gray", "italic": true, "underlined": true,\
    "clickEvent": {"action": "run_command", "value": "/function regeneratable:give/loot_table_entry.show_params"}},\
{"text": "Note: you can have both types of entries in the same position, meaning you could have an entry for a decorated pot, followed by an entry which would put loot in that pot!\n\n", "italic": true, "color": "gray"},\
"§6>", {"text": "give/entry_remover",\
    "color":"gold", "underlined": true,\
    "clickEvent": {"action": "suggest_command", "value": "/function regeneratable:give/entry_remover"}},\
" Sometimes you have an entry you don't need anymore or a once that you added by accident.",\
" To get rid of it, use the entry remover at that position, and it will remove any block & loot table entries",\
" if they happen to be on this position, and raise a warning otherwise.\n\n",\
"(misc)\n",\
"§6>", {"text": "Update Global Version",\
    "color":"gold", "underlined": true,\
    "clickEvent": {"action": "suggest_command", "value": "/function regeneratable:..update_version"}},\
" A quick shortcut if you don't want to type the command manually.",\
""\
]
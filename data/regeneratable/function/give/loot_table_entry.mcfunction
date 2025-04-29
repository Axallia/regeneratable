$give @s donkey_spawn_egg[\
    entity_data = {\
        id:"minecraft:marker",\
        Tags:["regeneratable.new_entry", "regeneratable.entry_type.loot_table"],\
        data:{"loot_table_id": "$(loot_table_id)"}\
    },\
    custom_data = {"regeneratable.entry_placer": true},\
    item_name = "{\"text\":\"$(name) Loot Table Entry\"}", \
    lore = ['{"text":"($(loot_table_id))", "color": "gray", "italic": false}']\
]
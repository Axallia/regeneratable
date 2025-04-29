$give @s turtle_spawn_egg[\
    entity_data = {\
        id:"minecraft:marker",\
        Tags:["regeneratable.new_entry", "regeneratable.entry_type.block"],\
        data:{"block_id": "$(block_id)"}\
    },\
    custom_data = {"regeneratable.entry_placer": true},\
    item_name = "{\"text\":\"$(name) Block Entry\"}", \
    lore = ['{"text":"($(block_id))", "color": "gray", "italic": false}']\
]
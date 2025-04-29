tellraw @s "\n<info> [regeneratable.config] ->\n[Set Max Update Order Params]"
tellraw @s "    §6value§f: Positive 32bit integer"
tellraw @s "\n§7examples:§f\
\n§7function regeneratable:.set_max_update_order§f {value:\"§648§f\"}\
\n§7function regeneratable:.set_max_update_order§f {value:\"§612§f\"}\
\n§7function regeneratable:.set_max_update_order§f {value:\"§6512§f\"} §7(unrecommended)\n\n"
tellraw @s {"text": "Note: this would result in half the amount of seconds to fully regenerate everything compared to inputed value, AKA 48 would to 24 seconds and 10 would be 5.", "italic": true, "color": "gray"}
#tellraw @a "[regeneratable.entry_remover] Trying to remove entries from $(x) $(y) $(z)..."
$execute positioned $(x) $(y) $(z) as @n[type=marker, tag=regeneratable.holder, distance=..1.1] \
    run function regeneratable:remove/entry.as_holder with storage regeneratable:entry_buffer.block
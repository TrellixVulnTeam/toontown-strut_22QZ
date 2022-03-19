# Distribution:
distribution dev

# Art assets:
vfs-mount resources/phase_3 /phase_3
vfs-mount resources/phase_3.5 /phase_3.5
vfs-mount resources/phase_4 /phase_4
vfs-mount resources/phase_5 /phase_5
vfs-mount resources/phase_5.5 /phase_5.5
vfs-mount resources/phase_6 /phase_6
vfs-mount resources/phase_7 /phase_7
vfs-mount resources/phase_8 /phase_8
vfs-mount resources/phase_9 /phase_9
vfs-mount resources/phase_10 /phase_10
vfs-mount resources/phase_11 /phase_11
vfs-mount resources/phase_12 /phase_12
vfs-mount resources/phase_13 /phase_13
vfs-mount resources/server /server
model-path /

# Server:
server-version Live-1.0.1
min-access-level 0
# accountdb-type developer
shard-low-pop 50
shard-mid-pop 100

# RPC:
want-rpc-server #f
rpc-server-endpoint http://localhost:8080/

# DClass file:
dc-file dependencies/astron/dclass/toonisland.dc

# Core features:
want-pets #t
want-parties #f
want-cogdominiums #t
want-lawbot-cogdo #t
want-anim-props #t
want-game-tables #f
want-find-four #f
want-chinese-checkers #f
want-checkers #f
want-house-types #t
want-gifting #t
want-top-toons #t

# Chat:
want-whitelist #f
want-sequence-list #f

# Developer options:
show-population #t
want-instant-parties #f
want-instant-delivery #t
cogdo-pop-factor 1.5
cogdo-ratio 0.5
default-directnotify-level info

# Crates:
dont-destroy-crate #f
get-key-reward-always #f
get-crate-reward-always #f
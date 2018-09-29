# Mr.Green-Zombie-Survival
Mr. Green's current adaptation of the popular Garry's Mod Zombie Survival gamemode.

## Requirements

If you don't meet the requirements then there WILL be errors. You'll need an:
- MySQL server with a database in order to store stats etc
- MySQLOO
- Game server

[Nitrous-Networks](https://nitrous-networks.com/game-servers) - Has all the above supported.

## Installing Mr Green's Zombie Survival.

Upload the gamemode onto your server.

Go into SERVER_DATA and place the file "tmysql4.lua" wrapper into lua\includes\modules (not needed but is better supported).

You'll also need MySQLOO and a MySQL database, follow the link:
https://github.com/FredyH/MySQLOO

Import "Database.sql" into your MySQL database.

Edit the file sv_sql.lua located at zombiesurvival/gamemode/modules/sql.lua on lines 86-90 with the MySQL info.

Put mapsadd.txt in garrysmod/data/zombiesurvival and it will make a new file called zsmapcycle.txt when server has started.

Upload zs_cabin_v2 map and other zs_ or zm_ maps.

Go to zombiesurvival/gamemode/shared/sh_maps.lua to add and/or remove maps from the list so they match what's hosted on the server.

Go to garrysmod/settings/user.txt and add yourself to superadmin.

Start the server and join.

Use !mapmanager and add the maps for the map voting system.

Also use !mapmanager and read the crates tab to setup crates.

You'll need to give yourself admin_maptool to spawn the crates. Reload key to save to txt file.

if you want to upload homemade files to server follow the steps:
	
> 1. Create all nessesary crate files at your server ('data/zombiesurvival/crates' folder).
> 2. Put them into your garry's mod ('garrysmod/data/zombiesurvival/crates' folder). Create folder if nessesary.
> 3. Press 'Scan for clientside crate files' button and wait
> 4. In the list you will see all avalaible files. Use 'Upload to server' button to overwrite serverside files.


Max crates are set to 3 but can be altered in zombiesurvival\gamemode\modules\zs_options_shared.lua
Just look for MAXIMUM_CRATES
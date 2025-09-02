# CA-spycam
 Deployable spy cameras for QBCore FIXED BY ca.1


## Dependencies
* [qb-core](https://github.com/qbcore-framework/qb-core)
* [oxmysql](https://github.com/overextended/oxmysql)
* [qb-target](https://github.com/qbcore-framework/qb-target)
or
* [ox_target](https://github.com/overextended/ox_target)

## Install
* Import `spycams.sql` in to your database
* Drag `CA-Spycam` into your `resources` directory
* Add `ensure CA-Spycam` to your  `server.cfg` AFTER `qb-core`
* The inventory images and items list are in the `INVENTORY` directory
* Adjust `config/config_client.lua` and `config/config_server.lua` to you liking
* Restart you server

## Usage
* Use the `spy_camera` item from your inventory to deploy a new spy camera
* Use the `ca_tablet` item to connect to and control your deployed spy camera(s)
* Retrieve a spy camera by targeting it

If you don't want to utilise the `ca_tablet` item to connect to the deployed spy cameras, you can either use the command `spycams:connect` or utilise the following exports from your scripts:

* `exports['CA-Spycam']:Connect()` - Connects to deployed spy cameras
* `exports['CA-Spycam']:Disconnect()` - Disconnects from deployed spy cameras


## Contributing
* Pull requests are welcome

## The Original Repostry
Thanks for Mobius1. (author) 
* [ms-spycams](https://github.com/Mobius1/ms-spycams)

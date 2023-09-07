fx_version 'cerulean'
game 'gta5'

name 'mddev_crime'
author 'mddev'
version '1.0'

shared_scripts {
    'config.lua',
	'@ox_lib/init.lua',
}

client_scripts {
	'client/client_main.lua',
}

server_scripts {
	'server/server.lua',
}

lua54 'yes'

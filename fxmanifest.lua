fx_version 'cerulean'
lua54 'yes'
game 'gta5'

name "Zaaa-Scoboard"
description "Zaaa-Scoboard"
author "Zannn | NoFa Studio"
version "1"

shared_scripts {
	'@es_extended/imports.lua',
	'@ox_lib/init.lua',
}

client_scripts {
	'cl_scoceboard.lua'
}

server_scripts {
	'sv_scoceboard.lua'
}

depenencies {
	'ox_lib'
}


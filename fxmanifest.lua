fx_version "cerulean"
game 'gta5'

lua54 'yes'
use_experimental_fxv2_oal "yes"

author 'vipex'

shared_scripts {
	"config.lua",
	"shared/main.lua",
	-- "dev/shared/**/*" -- Only use for Development purpose.
}

client_scripts {
	'client/utils.lua',
	'client/core.lua',
	-- "dev/client/**/*" -- Only use for Development purpose.
}

server_scripts {
	"server/utils.lua",
	"server/core.lua",
	-- "dev/server/**/*" -- Only use for Development purpose.
}

ui_page 'web/dist/index.html'

files {
	'web/dist/index.html',
	'web/dist/**/*',
}

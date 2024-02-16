fx_version "cerulean"
game 'gta5'

lua54 'yes'
use_experimental_fxv2_oal "yes"

author 'vipex'
ui_page 'web/dist/index.html'

shared_scripts {
	"config.lua",
	"shared/main.lua",
	"shared/types.lua",
	-- "dev/shared/**/*" -- Only use for Development purpose.
}

client_scripts {
	'client/utils.lua',
	'client/classes/**/*',
	'client/modules/**/*',
	'client/core.lua',
	'client/events.lua',
	'client/nui_callbacks.lua',
	'client/commands.lua',
	-- "dev/client/**/*" -- Only use for Development purpose.
}

server_scripts {
	"server/utils.lua",
	"server/modules/**/*",
	"server/classes/**/*",
	"server/core.lua",
	"server/events.lua",
	"server/commands.lua",
	-- "dev/server/**/*" -- Only use for Development purpose.
}

files {
	'web/dist/index.html',
	'web/dist/**/*',
}

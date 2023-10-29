fx_version "cerulean"
lua54 'yes'
game 'gta5'

ui_page 'web/build/index.html'

client_script "client/**/*"
shared_script "shared/utils.lua"
server_script "server/**/*"

files {
	'web/build/index.html',
	'web/build/**/*',
}

fx_version 'adamant'

games { 'rdr3' }
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'

author 'BulgaR' -- https://discord.gg/dcyY2e5kb3
description 'BulgaR RedM RP:CHAT 3DDO'
version '1.0'

ui_page "html/index.html"

shared_scripts {
	'config.lua'
}

client_scripts {
	'client.lua'
}

server_scripts {
	'server.lua'
}

files {
	'html/crock.ttf',
	'html/index.html',
	'html/main.css',
	'html/script.js'
}
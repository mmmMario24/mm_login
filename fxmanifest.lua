fx_version 'cerulean'
game 'gta5'

author ''
description ''
version '1.0.0'

client_scripts {
    '@vrp/client/Proxy.lua',
    'client.lua'
}
server_scripts{
    '@vrp/lib/utils.lua',
    'server.lua'
}

ui_page 'ui/main.html'
files{
    'ui/main.html',
    'ui/main.js',
    'ui/style.css'
}
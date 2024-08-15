fx_version "cerulean"
game "gta5"

author "PerriTuber"


client_scripts {
    'client/main.lua'
}

server_scripts {
    'server/main.lua'
}

shared_scripts {
 '@es_extended/imports.lua',
 'config.lua'
}

ui_page 'ui/index.html'

files {
    'ui/fonts/mine.ttf',
    'ui/index.html',
    'ui/script.js',
    'ui/style.css'
}

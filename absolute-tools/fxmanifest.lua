fx_version 'bodacious'
games { 'gta5', 'rdr3' }

author 'Absolute'
description 'Simple zone handler'
version '0.0.1'

ui_page 'web/index.html'

files{

}

shared_scripts{
    "Config.lua",
}

client_scripts {
    "client/tools/**",
}

--- Exemple d'utilisation des outils
client_scripts {
    "client/exemple/**",
}

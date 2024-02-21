fx_version 'cerulean'
game {'gta5'}

client_scripts {
    "client.lua"
}

author {IxAM_Lucifer}





--[[server side
server_script 'server.lua'

-- Extra data can be used as well
my_data 'one' { two = 42 }
my_data 'three' { four = 69 }

-- due to Lua syntax, the following works too:
my_data('nine')({ninety = "nein"})

-- metadata keys can be arbitrary
pizza_topping 'pineapple']]

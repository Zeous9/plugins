# plugins
kong plugin dev

1.$mv reset-request-param $kong-path/plugins
2.add the flowing configure to kong-$version.rockspec
    ["kong.plugins.reset-request-param.handler"] = "kong/plugins/reset-request-param/handler.lua",
    ["kong.plugins.reset-request-param.access"] = "kong/plugins/reset-request-param/access.lua",
    ["kong.plugins.reset-request-param.schema"] = "kong/plugins/reset-request-param/schema.lua",
    ["kong.plugins.reset-request-param.migrations.cassandra"] = "kong/plugins/reset-request-param/migrations/cassandra.lua",
    ["kong.plugins.reset-request-param.migrations.postgres"] = "kong/plugins/reset-request-param/migrations/postgres.lua",
    
3.edit /etc/kong.conf, edit custom_plugins =  reset-request-param, save it.
4.$luarocks make
5.$kong start

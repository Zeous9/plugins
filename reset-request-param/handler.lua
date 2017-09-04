local BasePlugin = require "kong.plugins.base_plugin"
local access = require "kong.plugins.reset-request-param.access"

local RequestTransformerHandler = BasePlugin:extend()

function RequestTransformerHandler:new()
  RequestTransformerHandler.super.new(self, "reset-request-param")
end

function RequestTransformerHandler:access(conf)
  RequestTransformerHandler.super.access(self)
  access.execute(conf)
end

RequestTransformerHandler.PRIORITY = 990

return RequestTransformerHandler

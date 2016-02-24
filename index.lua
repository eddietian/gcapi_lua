require("gcapi_lua.config.configinc")
Fun = require("funinc")
Route = require("routeinc")
Response = require("core.response")

--Response:init()


local init = require("init")
local var = init.run()
--for k, v in pairs(var) do
--      ngx.say(k,v)
--end
--ngx.log(ngx.ERR, "err err err")
--
--ngx.say(Route.conf[2]["reg"])
--ngx.say(ngx.var.request_uri)



--Fun.getParams()


--local  args = Fun.getParams()

--for k, v in pairs(args) do
--	ngx.say(k,v)
--end

require "configinc"
Fun = require "funinc"
Route = require "routeinc"

local init = require "init"
local var = init.run()
for k, v in pairs(var) do
      ngx.say(k,v)
end
--
--ngx.say(Route.conf[2]["reg"])
--ngx.say(ngx.var.request_uri)



--Fun.getParams()


--local  args = Fun.getParams()

--for k, v in pairs(args) do
--	ngx.say(k,v)
--end

require "configinc"
Fun = require "funinc"

local init = require "init"
local var = init.run()
ngx.say(var)



--Fun.getParams()


--local  args = Fun.getParams()

--for k, v in pairs(args) do
--	ngx.say(k,v)
--end

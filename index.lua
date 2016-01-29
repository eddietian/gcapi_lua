require "configinc"
fun = require "funinc"

local init = require "init"
init.run()
fun.getParams()

local  args = fun.getParams()

for k, v in pairs(args) do
	ngx.say(k,v)
end

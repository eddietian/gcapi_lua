require("gcapi_lua.config.configinc")
Fun = require("funinc") --全局方法
Route = require("routeinc") --路由
Response = require("core.response") --存储输出内容


local init = require("gcapi_lua.core.init")
init.run() --入口


--local  args = Fun.getParams()

--for k, v in pairs(args) do
--	ngx.say(k,v)
--end

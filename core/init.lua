module (..., package.seeall)

--local Response = require("core.response")

function run()
    local uri = Fun.getUri()
    --匹配正则route
    local route = {}
    for k,v in pairs(Route.conf) do	    
        local args = {}
        args = string.gmatch(uri,v["reg"])
        for g in args do
           -- route[v['controller']] = v['method']
           local control =  require (v["controller"].."Controller")
           local method = control[v['method']]
           local call_ok,err_info = pcall(method)
           ngx.say(call_ok)
            break
        end    
    end
    --ngx.ctx.response = Response:new()
    --return route
end

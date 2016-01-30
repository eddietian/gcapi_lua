module (..., package.seeall)

function run()
    local uri = Fun.getUri()
    --匹配正则route
    local route = {}
    for k,v in pairs(Route.conf) do	    
        local args = {}
        args = string.gmatch(uri,v["reg"])
        for k in args do
            route[v['controller']] = v['method']
            break
        end    
    end
    return route
end

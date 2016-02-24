module (..., package.seeall)


function run()
    local uri = Fun.getUri()
    --匹配正则route
    for k,v in pairs(Route.conf) do	    
        local args = {}
        args = string.gmatch(uri,v["reg"])
        for g in args do
           local control =  require (v["controller"].."Ctrl")
           local method = control[v['method']]
           local call_ok,err_info = pcall(method)
           break
        end    
    end
    ngx.print(Response.output)
    --return route
end

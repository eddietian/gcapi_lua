module (..., package.seeall)


function run()
    local uri = Fun.getUri()  --使用全局方法拿到url
    --匹配正则route
    for k,v in pairs(Route.conf) do --循环路由，以拿到ctrl和method
        local args = {}
        args = string.gmatch(uri,v["reg"]) --正则匹配路由
        for g in args do
           local control =  require (v["controller"].."Ctrl") --加载ctrl
           local method = control[v['method']] --定位method
           local call_ok,err_info = pcall(method)  --调用方法
           break
        end    
    end
    ngx.print(Response.output) -- 输出
end

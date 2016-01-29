module (..., package.seeall)

function run()
    local uri = Fun.getUri()
    --匹配正则route
    local route = Fun.getRoute()
    return route;
end

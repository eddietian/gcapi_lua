local RedisCache = {}
local redis = require("resty.redis")
--定义redis连接
local redisClient = {}

--redis配置 host,port
local _rdconfig = {}

--定义单例连接
local redisClient_Meta = {
    __index = function(self, key)
        return rawget(redisClient, table.concat(_rdconfig,"")) or self:buildConnection()
    end,
}

--创建链接
function redisClient:buildConnection()

    local rd = redis:new()
    local ok,err = rd:connect(self.host,self.port)

    if not ok then
       ngx.say("redis connect failed:"..err)
       return
    end

    --连接存储到table
    local tablekey = table.concat(_rdconfig,"")
    self[tablekey] = rd

    return rd
end


function RedisCache:Instance(rdconfig) 
    _rdconfig = rdconfig
    setmetatable(redisClient,redisClient_Meta)
    return redislient
end

return RedisCache
local RedisCache = {}
local redis = require("resty.redis")
--定义redis连接
local redisClient = {}

--redis配置 host,port
local _rdconfig = {}

--定义单例连接
local redisClient_Meta = {
    __index = function(self, key)
        ngx.say(key)
        return rawget(redisClient, table.concat(_rdconfig,"")) or self:buildConnection()
        --return self:buildConnection()
    end,
}

function RedisCache:new(rdconfig) 
    local host,port = rdconfig[1],rdconfig[2]
    local rd = redis:new()
    rd:set_timeout(1000)
    local ok,err = rd:connect(host, port)
    
    if not ok then
       ngx.say("redis connect failed:"..err)
       return
    end

    return rd
end

function RedisCache:Instance(rdconfig) 
    if self.instance == nil then
        ngx.say("love")
        self.instance = self:new(rdconfig)
    end
    return self.instance
end



--此方法备用创建链接[备用]
function redisClient:buildConnection()
    local rd = redis:new()
    local host,port = _rdconfig[1],_rdconfig[2]
    
    local ok,err = rd:connect(host, port)

    if not ok then
       ngx.say("redis connect failed:"..err)
       return
    end

    --连接存储到table
    local tablekey = table.concat(_rdconfig,"")
    self[tablekey] = rd
    return rd
end

--此方法备用
function RedisCache:Instance_bak(rdconfig) 
    _rdconfig = rdconfig
    setmetatable(redisClient,redisClient_Meta)
    return redisClient
end

return RedisCache
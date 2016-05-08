local DBModel = {}
local mongol = require("resty.mongol")
local conn = {}
--db配置 host,port,dbname
local _dbconfig = {}
--定义连mongo连接
local mongoClient = {}
--定义单例连接
local mongoClient_Meta = {
    __index = function(self, key)
        return rawget(mongoClient, table.concat(_dbconfig,"")) or self:buildConnection(key)
    end,
    __tostring = function (self)
        local port_string
        if self.port then
            port_string = ":" .. tostring(self.port)
        else
            port_string = ""
        end

        return "[mongo client : " .. self.host .. port_string .."]"
    end,
}

--创建链接
function mongoClient:buildConnection(tbname)

    local host = _dbconfig[1]
    local port = _dbconfig[2]
    local dbname = _dbconfig[3]

    local conn = mongol:new()
    local ok,err = conn:connect(host,port)

    if not ok then
       ngx.say("connect failed:"..err)
       return false
    end

    local db = conn:new_db_handle(dbname)

    local collections = db:get_col(tbname)

    --连接存储到table
    local tablekey = table.concat(_dbconfig,"")
    self[tablekey] = collections

    return collections
end


function DBModel:Instance(dbconfig) 
    _dbconfig = dbconfig
    setmetatable(mongoClient,mongoClient_Meta)
    return mongoClient
end

return DBModel
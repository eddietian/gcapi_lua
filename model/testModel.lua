
local dbconfig = DBConfig.DB_stats--数据库配置
local testModel = {}
local DBModel = require("dbModel")
function testModel:getTestList()
    --ngx.say(DBConfig.DB_stats[1])
	local db = DBModel:Instance(dbconfig)--初始实例化
	local r = db.test:find_one({name="test"});--单例查询
  	ngx.say(r["name"])
end

return testModel
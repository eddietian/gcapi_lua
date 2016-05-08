
local testModel = {}
local DBModel = require("dbModel")
function testModel:getTestList()
	local db = DBModel:Instance(DBConfig.DB_stats)--初始实例化
	local r = db.test:find_one({name="test"});--单例查询
  	ngx.say(r["name"])
end

return testModel
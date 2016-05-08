local BaseCtrl = require ("baseCtrl")
local userBehaviorCtrl = BaseCtrl:new()

local testModel = require ("testModel")


function userBehaviorCtrl:index1()

   local mongol = require "resty.mongol"
   local conn = mongol:new()

   local ok,err = conn:connect("127.0.0.1")
   
   local db = conn:new_db_handle("test")
   col = db:get_col("test")

   r = col:find_one({name="test"})
   --ngx.say(r["name"])

   userBehaviorCtrl:setName("my name is userBehavior")
   local args = Fun.getParams();
   ngx.say(args.id)
   ngx.say(args.pp)
  

   Response:write(userBehaviorCtrl:getName())
end

function userBehaviorCtrl:index()
	testModel:getTestList()
	Response:write("====")
end

return userBehaviorCtrl

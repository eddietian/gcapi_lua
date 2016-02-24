--module(..., package.seeall);
local BaseCtrl = require ("baseCtrl")
local indexCtrl = BaseCtrl:new()


function indexCtrl:test1()
   indexCtrl:setName("my name is base")
   
   Response:write(indexCtrl:getName())
end

return indexCtrl

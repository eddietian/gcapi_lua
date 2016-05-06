local BaseCtrl = require ("baseCtrl")
local indexCtrl = BaseCtrl:new()


function indexCtrl:test1()
   indexCtrl:setName("my name is base")
   
   Response:write(indexCtrl:getName())
end

function indexCtrl:test() 
   Response:write("1111")
end

return indexCtrl

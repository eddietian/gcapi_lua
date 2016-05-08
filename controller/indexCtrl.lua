local BaseCtrl = require ("baseCtrl")
local indexCtrl = BaseCtrl:new()


function indexCtrl:test()
   indexCtrl:setName("my name is base")
   
   --indexCtrl:test2()
   Response:write(indexCtrl:getName())
end

function indexCtrl:test2() 
   Response:write("1111")
end

return indexCtrl

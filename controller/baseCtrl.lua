local BaseCtrl  = {}

function BaseCtrl:new(o)
    o = o or {}  
    setmetatable(o,{__index=self})--将自己加在__index里
    return o 
end

function BaseCtrl:setName(name)
   self.name = name 
end

function BaseCtrl:getName()
   return self.name
end

return BaseCtrl
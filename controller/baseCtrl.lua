local BaseCtrl  = {}

function BaseCtrl:new(o)
    o = o or {}  
    setmetatable(o,{__index=self})
    return o 
end

function BaseCtrl:setName(name)
   self.name = name 
end

function BaseCtrl:getName()
   return self.name
end

return BaseCtrl

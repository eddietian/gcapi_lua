local BaseCtrl = require ("baseCtrl")
local redis = require ("resty.redis")
local indexCtrl = BaseCtrl:new()


function indexCtrl:test()
   indexCtrl:setName("my name is base")
   
   --indexCtrl:test2()
   Response:write(indexCtrl:getName())
end

function indexCtrl:test2() 
   Response:write("1111")
end

function indexCtrl:redis()
	local red = redis:new()
	red:set_timeout(1000)

	local ok,err = red:connect("127.0.0.1",6379)
	if not ok then
		ngx.say("failed to connect:",err)
		return
	end

	local cachekey = "cachekey_20160508";
	local ok,err = red:set(cachekey,"11111111")
	
	if not ok then
		ngx.say("failed to redis:",err)
		return
	end
ngx.say("bb")
	ngx.say(red:get(cachekey))

end

function indexCtrl:redis1()
	local redisCache = require("lib.redisCache")
	local red = redisCache:Instance(RedisConfig.default)
	local ok,err = red:set("tc","33333")
	ngx.say(red:get("tc"))
end

function indexCtrl:template()
	ngx.say(TemplateConfig['root'])
	ngx.say(ngx.var.template_root)
	local template = require "template"
	local view = template.new "view.html"
	--view.message = "Hello,World!"
	--view:render()
	--template.render("view.html",{message = "Hello,World!"})
	template.render("view.html",{message = "Hello,World!"})
	--ngx.say(TemplateConfig.root)
end

return indexCtrl

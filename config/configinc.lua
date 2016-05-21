--资源地址设置
local resource = {
	"/Users/eddietian/workspace/gcapi_lua/?.lua",
	"/Users/eddietian/workspace/gcapi_lua/config/?.lua",
	"/Users/eddietian/workspace/gcapi_lua/controller/?.lua",
	"/Users/eddietian/workspace/gcapi_lua/core/?.lua",
	"/Users/eddietian/workspace/gcapi_lua/core/module/?.lua",
	"/Users/eddietian/workspace/gcapi_lua/core/util/?.lua",
	"/Users/eddietian/workspace/gcapi_lua/lib/?.lua",
	"/Users/eddietian/workspace/gcapi_lua/model/?.lua",
	package.path
};
package.path = table.concat(resource,";");

-- aliyun机
--       "/home/www/gcapi_lua/?.lua",
--       "/home/www/gcapi_lua/config/?.lua",
--      "/home/www/gcapi_lua/controller/?.lua",
--      "/home/www/gcapi_lua/core/?.lua",
--      "/home/www/gcapi_lua/core/module/?.lua",
--      "/home/www/gcapi_lua/core/util/?.lua",
--      "/home/www/gcapi_lua/lib/?.lua",
--      "/home/www/gcapi_lua/modules/?.lua",

--DB配置
DBConfig = {
	DB_stats = {"127.0.0.1","27017","test","",""}
}

--redis配置
RedisConfig = {
	default = {"127.0.0.1","6379"}
}

--memcache配置
MemConfig = {
	default = {"127.0.0.1","11211"}
}

--模板文件配置
TemplateConfig = {
	dir = "/templates",
	root = "/Users/eddietian/workspace/gcapi_lua/templates"
}
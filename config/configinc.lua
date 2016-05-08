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

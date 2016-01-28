local resource = {
	"/home/www/gcapi_lua/controller/?.lua",
	"/home/www/gcapi_lua/core/?.lua",
	"/home/www/gcapi_lua/core/lib/?.lua",
	"/home/www/gcapi_lua/core/module/?.lua",
	"/home/www/gcapi_lua/core/util/?.lua",
	"/home/www/gcapi_lua/lib/?.lua",
	"/home/www/gcapi_lua/modules/?.lua",
	package.path
};
package.path = table.concat(resource,";");
package.path = "/home/www/gcapi_lua/config/?.lua;" .. package.path
require "configinc"
ngx.say(package.path)
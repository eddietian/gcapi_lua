module (..., package.seeall)

function getParams()
   local args = ngx.req.get_uri_args()
   return args
end

function getUri()
	return ngx.var.request_uri
end

function getRoute()
	return require "routeinc"
end

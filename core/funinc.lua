module (..., package.seeall)

function getParams()
    --ngx.req.read_body()
   -- local args = ngx.req.get_uri_args()+ngx.req.get_post_args();
   local args = ngx.req.get_uri_args()
   
    --local args = ngx.req.get_post_args()
    return args
end

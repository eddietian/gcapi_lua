local Response = Class("core.Response")

function Response:init()
    ngx.log(ngx.DEBUG, "[Response:init] start.")
    self._output = {}
end

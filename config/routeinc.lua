local Route = {}
Route.conf = {
	{reg = "/test.html",cmd = 1001,controller = "index",method = "test"},
        {reg = "/test1%.html%?(name)=(%d+)&(p)=(%d+)",cmd = 1002,controller = "index",method = "test1"}
}
return Route

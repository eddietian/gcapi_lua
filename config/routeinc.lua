local Route = {}
Route.conf = {
	{reg = "/test.html",controller = "index",method = "test"},
    {reg = "/test1%.html%?(name)=(%d+)&(p)=(%d+)",controller = "index",method = "test1"},
    {reg = "/stats/userBehavior.",controller = "stats.userBehavior",method = "index"}
}
return Route

local Route = {}
Route.conf = {
	{reg = "/test.html",controller = "index",method = "test"},
    {reg = "/test1%.html%?(name)=(%d+)&(p)=(%d+)",controller = "index",method = "test1"},
    {reg = "/stats/userBehavior.",controller = "stats.userBehavior",method = "index"},
    {reg = "/test/redis.html",controller = "index",method = "redis1"},
    --{reg = "/test/redis",controller = "index",method = "redis"},
    
}
return Route

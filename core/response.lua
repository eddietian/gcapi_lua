local Response = {}

function Response:write(rs)
    self.output = rs
end

return Response

local init = function(req, res, next)
    req.res = res
    req.next = next
    res.req = req

    --        if app and app:getconf("x-powered-by") then
    --            if app.version then
    --                res:setHeader('X-Powered-By', 'Lor Framework ' .. app.version)
    --            else
    --
    --            end
    --        end

    --ngx.say(req.query.name)

    res:setHeader('X-Powered-By', 'Lor Framework')
    res.locals = res.locals or {}
    -- setmetatable(req, {__index = app.request})
    -- setmetatable(res, {__index = app.response})
    next()
end

return init
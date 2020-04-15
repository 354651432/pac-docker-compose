local queryStrings,err = ngx.req.get_uri_args()

local proxy = "SOCKS5 127.0.0.1"
if queryStrings.proxy then
    proxy = queryStrings.proxy
end

ngx.arg[1] = string.gsub(ngx.arg[1],'__PROXY__',proxy)

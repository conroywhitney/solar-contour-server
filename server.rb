require "sinatra"
require "rack/reverse_proxy"

use Rack::ReverseProxy do
  reverse_proxy /^\/dev\/sites\/\?short=T$/, 'https://ukwpiuisi9.execute-api.us-west-2.amazonaws.com/dev/sites/?short=T'
end

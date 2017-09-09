require "sinatra"
require "rack/reverse_proxy"

use Rack::ReverseProxy do
  reverse_proxy /^\/(.+)$/, 'https://ukwpiuisi9.execute-api.us-west-2.amazonaws.com/$1'
end

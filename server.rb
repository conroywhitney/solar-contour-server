require "rack/cors"
require "rack/reverse_proxy"
require "sinatra"

use Rack::Cors do
  allow do
    origins "*"
    resource "*", headers: :any, methods: :get
  end
end

use Rack::ReverseProxy do
  reverse_proxy /^\/(.+)$/, 'https://ukwpiuisi9.execute-api.us-west-2.amazonaws.com/$1'
end

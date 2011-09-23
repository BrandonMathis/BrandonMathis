require 'vendor/ruby/1.8/gems/sinatra-1.0/lib/sinatra'
require 'haml'

get '/' do
  haml :brandon
end

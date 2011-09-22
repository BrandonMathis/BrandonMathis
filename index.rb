require 'sinatra'
require 'haml'

get '/' do
  haml :ellen
end

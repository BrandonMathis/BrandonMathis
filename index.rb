require 'sinatra'
require 'haml'

get '/' do
  File.read(File.join('public', 'blackout.html'))
end

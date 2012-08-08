require 'rubygems'
require 'bundler'

class BrandonMathis < Sinatra::Base
  set :root, File.dirname(__FILE__)
  set :public, 'public'

  get '/' do
    haml :brandon
  end
end

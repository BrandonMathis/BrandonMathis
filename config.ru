require 'rubygems'
require 'index.rb'

set :run, false
set :environment, :production
set :views, "views"

log = File.new("log/sinatra.log", "w")
STDOUT.reopen(log)
STDERR.reopen(log)

run Sinatra::Application

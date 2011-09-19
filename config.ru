require 'rubygems'
require 'sinatra'

set :run, false
set :environment, :production
set :views, "views"

log = File.new("log/sinatra.log", "w")
STDOUT.reopen(log)
STDERR.reopen(log)

require 'index.rb'
run Sinatra.application

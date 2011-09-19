require 'rubygems'
require 'vendor/sinatra/lib/sinatra.rb'

Sinatra::Application.default_options.merge!(
  :run => false,
  :env => :production
)

log = File.new("log/sinatra.log", "w")
STDOUT.reopen(log)
STDERR.reopen(log)

require 'index.rb'
run Sinatra.application

require 'rubygems'
require 'sinatra'

Sinatra::Application.default_options.merge!(
  :run => false,
  :env => :production
)

require 'index.rb'
run Sinatra.application

log = File.new("log/sinatra.log", "w")
STDOUT.reopen(log)
STDERR.reopen(log)

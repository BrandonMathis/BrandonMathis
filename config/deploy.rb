# require 'bundler/capistrano'

set :application, "ellenmathis.me"
set :user, "bemathis"

set :repository,  "."
set :scm, :git
set :deploy_to, "/home/#{user}/#{application}"
set :deploy_via, :copy

role :web, "keysetts.com"                            # Your HTTP server, Apache/etc


set :use_sudo, false

namespace :deploy do
  task :restart do
    run "touch #{current_path}/tmp/restart.txt" 
  end
end

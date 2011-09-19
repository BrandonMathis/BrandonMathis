require 'bundler/capistrano'

set :application, "ellenmathis.me"

set :repository,  "."
set :scm, :git
set :deploy_to, application
set :deploy_via, :copy

role :web, "keysetts.com"                            # Your HTTP server, Apache/etc

set :user, "bemathis"

set :use_sudo, false

namespace :deploy do
  task :restart do
    run "touch #{current_path}/tmp/restart.txt" 
  end
end

load 'deploy' if respond_to?(:namespace) # cap2 differentiator

default_run_options[:pty] = true

# be sure to change these
set :user, 'bemathis'
set :domain, 'keysetts.com'
set :application, 'ellenmathis.me'

# the rest should be good
set :repository,  "." 
set :deploy_to, "/home/#{user}/#{application}"
set :deploy_via, :copy
set :scm, 'git'
set :branch, 'master'
set :git_shallow_clone, 1
set :scm_verbose, true
set :use_sudo, false

server domain, :app, :web

namespace :deploy do
  task :restart do
    run "touch #{current_path}/tmp/restart.txt" 
  end
end

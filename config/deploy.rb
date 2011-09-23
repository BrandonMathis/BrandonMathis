require "bundler/capistrano"

load 'deploy' if respond_to?(:namespace) # cap2 differentiator

set :default_environment, {'PATH' => '/home/bemathis/.gems:/usr/lib/ruby/gems/1.8:/home/bemathis/bin:/home/bemathis/.gems/bin:/home/bemathis/.gems/bin:/usr/lib/ruby/gems/1.8/bin/:/usr/local/bin:/usr/bin:/bin:/usr/bin/X11:/usr/games'}

default_run_options[:pty] = true

# be sure to change these
set :user, 'bemathis'
set :domain, 'keysetts.com'
set :application, 'brandonmathis.me'

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

  task :symlink do
    run "ln -nfs #{shared_path}/bundle/ruby #{current_path}/vendor/ruby"
  end
end

set :application, "Ellen"

set :repository,  "."
set :scm, :git
set :deploy_to, application
set :deploy_via, :copy

role :web, "ellenmathis.me"                          # Your HTTP server, Apache/etc
role :app, "ellenmathis.me"                          # This may be the same as your `Web` server

set :user, "mathiswe"

set :use_sudo, false

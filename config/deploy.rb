set :application, "node-ex-photo"
set :repository,  "https://github.com/psyfear/node-ex-photo.git"

set :deploy_to, "/home/psyfear/apps/nodeapps/#{application}"

set :branch, "master"
set :user, 'psyfear'

set :scm, :git
set :scm_user, 'psyfear'

server "psyfear.com", :app, :web, :db, :primary => true

# if you want to clean up old releases on each deploy uncomment this:
# after "deploy:restart", "deploy:cleanup"

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
namespace :deploy do
  task :start do
    #run "thin -p 9393 -d start"
  end
  task :stop do ; end
  task :restart, :roles => :app, :except => { :no_release => true } do
    #run "thin -p 9393 -d restart"
  end
end
set :user, "danbooru"
set :rails_env, "production"
set :delayed_job_workers, 12
append :linked_files, ".env.production"

server "pcbooru", :roles => %w(web app cron worker), :primary => true

set :newrelic_appname, "Danbooru"
after "deploy:finished", "newrelic:notice_deployment"

namespace :db do
  desc 'Re-create the database (drop/create/migrate/seed)'
  task recreate: :environment do
    system('bundle exec rake db:drop', out: $stdout, err: :out)
    system('bundle exec rake db:create', out: $stdout, err: :out)
    system('bundle exec rake db:migrate', out: $stdout, err: :out)
    system('bundle exec rake db:seed', out: $stdout, err: :out)
  end
end

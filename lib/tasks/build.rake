namespace :build do
  LIST_VIEW = "rails g faalis:js:list_view lib/scaffolds/"
  desc "Clean database for fresh generation"
  task :fresh => :environment do
    system "rm #{Rails.root}/db/development.sqlite3"
    system "rake db:migrate --trace"
    system "rake db:seed --trace"
  end

  desc "Clean unneccessary files"
  task :remove => :environment do
    system "rm -rv `find #{Rails.root} -iname \"*~\"`"
  end

end

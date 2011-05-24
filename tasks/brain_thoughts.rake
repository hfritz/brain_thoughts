namespace :db do 
  namespace :migrate do 
    description = "Migrate the database through scripts in vendor/plugins/brain_thoughts/lib/db/migrate" 
    
    desc description 
    task :brain_thoughts => :environment do 
      ActiveRecord::Migration.verbose = ENV["VERBOSE"] ? ENV["VERBOSE"] == "true" : true 
      ActiveRecord::Migrator.migrate("vendor/plugins/brain_thoughts/lib/db/migrate/", ENV["VERSION"] ? ENV["VERSION"].to_i : nil) 
      Rake::Task["db:schema:dump"].invoke if ActiveRecord::Base.schema_format == :ruby 
    end 
  end 
end
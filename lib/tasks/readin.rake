#lib/tasks/readin.rake
require 'csv'
namespace :readin do
  desc "Imports a CSV file into an ActiveRecord table"
    task :importcards, [:filename] => :environment do  
      CSV.foreach('db/cards.csv', :headers => true) do |row|
        Card.create!(row.to_hash)
      end
  end

end
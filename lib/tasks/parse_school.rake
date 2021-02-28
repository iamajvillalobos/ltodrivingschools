require "csv"
require "pry-byebug"

namespace :parse_school do
  desc "TODO"
  task run: :environment do
    CSV.foreach(ENV["CSV_FILE"]).with_index do |row, index|
      next if index == 0 || index == 1

      params = {
       region: row[0],
       province: row[1],
       name: row[2],
       address: row[3],
       contact_number: row[4],
       category: row[5]
      }

      school = School.create!(params)
    end
  end
end

require "csv"
require "pry-byebug"

namespace :parse_school do
  desc "TODO"
  task run: :environment do
    School.delete_all

    CSV.foreach(ENV["CSV_FILE"]).with_index do |row, index|
      next if index == 0 || index == 1

      params = {
       province: row[0],
       name: row[1],
       address: row[2],
       contact_number: row[3],
       category: row[4]
      }

      school = School.create!(params)

      puts "Added #{school.name}..."
    end
  end
end

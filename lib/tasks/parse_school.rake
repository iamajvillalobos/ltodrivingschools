require "csv"
require "open-uri"
require "pry-byebug"

namespace :parse_school do
  desc "TODO"
  task run: :environment do
    School.delete_all

    csv_file = open(ENV["CSV_FILE"])

    CSV.foreach(csv_file).with_index do |row, index|
      next if index == 0 || index == 1

      params = {
       province: row[0],
       name: row[1],
       address: row[2],
       contact_number: row[3],
       motorcycle: ParseCategory.(row[4], "motorcycle"),
       light: ParseCategory.(row[4], "light"),
       heavy: ParseCategory.(row[4], "heavy")
      }

      school = School.create!(params)

      puts "Added #{school.name}..."
    end
  end
end

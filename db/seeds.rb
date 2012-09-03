# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts 'acum sterg greseli'
Pacient.delete_all
puts 'acum incarc fostu ambulator'
require "csv"
CSV.foreach("#{Rails.root}/db/data.csv", :headers => :first_row) do |row|
  Pacient.create!(:nume => row[0], :prenume => row[1], :debut_diabet => row[3], :cnp => row[4])
end

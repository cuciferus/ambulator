# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#popularea pacientilor merge si o dezactivez deocamdata
#TODO reactivarea pacientii seed
#puts 'acum sterg greseli'
#Pacient.delete_all
#puts 'acum incarc fostu ambulator'
#require "csv"
#CSV.foreach("#{Rails.root}/db/data.csv", :headers => :first_row) do |row|
  #Pacient.create!(:nume => row[0], :prenume => row[1], :debut_diabet => row[3], :cnp => row[4])
#end

puts 'acum sterg tip de analize in vigoare'
FelAnaliza.delete_all
puts 'acum introduc cateva analize paraclinice de baza'
FelAnaliza.create!(:nume => 'creatinina', :unitate_masura => 'md/dL', :valori_normale => '5-9', :standard => true)
FelAnaliza.create!(:nume => 'hemoglobina glicozilata',:unitate_masura => '%',:valori_normale => '5-6.5', :standard => true)


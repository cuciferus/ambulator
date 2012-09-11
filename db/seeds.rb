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
#puts 'acum introduc cateva analize paraclinice de baza'
#FelAnaliza.create!(:nume => 'creatinina', :unitate_masura => 'md/dL', :valori_normale => '5-9', :standard => true)
#FelAnaliza.create!(:nume => 'hemoglobina glicozilata',:unitate_masura => '%',:valori_normale => '5-6.5', :standard => true)
#
puts 'acum le incarc pe cele din ambulator'
puts 'categoria de analize'
analize = [['acid uric','mg/dL',3.6, 8.3,true] ,['albumina','g/dL',3.4, 5.4,true],['calciu total','mg/dL',9,10.5,true] ,['creatinina','mg/dL',0.5, 1,true],['fosfor','mg/dL',2.4, 4.1,true],['fosfataza alcalina','UI/L',20,140,true],['tgo','UI/L', 8,40,true],['tgp','UI/L', 5, 50,true],['hemoglobina glicozilata','%', 6.5,12,true],['uree','mg/dL', 17,53,true],['trigliceride','mg/dL', 50,200,true],['colesterol','mg/dL',110, 190,true],['leucocite','mii/uL',4.5,11,true],['hemoglobina','g/dL',12,16,true],['hematocrit','%',39,50,true],['trombocite','mii/uL',150,350,true],['bicarbonat','mmol/L',18,23,true],['leucocite pipi','/ul',0,2,true],['hematii pipi','uL',0,5,true],['microalbuminurie','mg/24h',0,300,true],['raport a/c','mg/g',0,200,true]]
analize.each do |analiza|
  FelAnaliza.create!(:nume => analiza[0], :unitate_masura => analiza[1], :valoare_minima => analiza[2], :valoare_maxima => analiza[3], :standard => analiza[4])
end


#require 'sqlite3'
#pizda masii de encoding
#db = SQLite3::Database.open "#{Rails.root}/data-18-06-2012.db"
#stm = db.prepare "pragma table_info(analize)"
#rs = stm.execute
#while (row =rs.next) do
  #puts row[1]
#end

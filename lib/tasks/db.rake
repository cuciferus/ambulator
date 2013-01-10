namespace :db do
  namespace :seed  do
      task :medici => :environment do
        desc "Sterg medicii si spitalele "
        Medic.delete_all
        desc "Adaug medici in baza de date"
        Medic.create!(:nume => "Serafinceanu", :prenume => "Cristian", :cod_parafa => "282828", 
                      :hospital_attributes => {:nume =>"I.D.N.M.B. Paulescu", :strada => "Ion Movila nr 5-7", :sector => "sector 2", :oras => "MB", :contract => "U3"})
        Medic.create!(:nume => "Craciun", :prenume =>"Anne-Marie", :cod_parafa =>"999")
      end
      task :pacienti => :environment do
        desc "Sterg ce mai ramasese din pacienti"
        Pacient.delete_all
        desc 'acum incarc pacientii din fostu ambulator'
        require "csv"
        CSV.foreach("#{Rails.root}/db/data.csv", :headers => :first_row) do |row|
        Pacient.create!(:nume => row[0], :prenume => row[1], :debut_diabet => row[3], :cnp => row[4])
        end
      end
      task :paraclinice => :environment do
        desc 'acum sterg tip de analize in vigoare'
        FelAnaliza.delete_all
        desc 'acum le incarc pe cele din ambulator'
        desc  'categoria de analize'
        analize = [['acid uric','mg/dL',3.6, 8.3,'standard'] ,['albumina','g/dL',3.4, 5.4,'standard'],['calciu total','mg/dL',9,10.5,'standard'] ,['creatinina','mg/dL',0.5, 1,'standard'],['fosfor','mg/dL',2.4, 4.1,'standard'],['fosfataza alcalina','UI/L',20,140,'standard'],['tgo','UI/L', 8,40,'standard'],['tgp','UI/L', 5, 50,'standard'],['hemoglobina glicozilata','%', 6.5,12,'standard'],['uree','mg/dL', 17,53,'standard'],['trigliceride','mg/dL', 50,200,'standard'],['colesterol','mg/dL',110, 190,'standard'],['leucocite','mii/uL',4.5,11,'standard'],['hemoglobina','g/dL',12,16,'standard'],['hematocrit','%',39,50,'standard'],['trombocite','mii/uL',150,350,'standard'],['bicarbonat','mmol/L',18,23,'standard'],['leucocite pipi','/ul',0,2,'standard'],['hematii pipi','uL',0,5,'standard'],['microalbuminurie','mg/24h',0,300,'standard'],['raport a/c','mg/g',0,200,'standard']]
        analize.each do |analiza|
        FelAnaliza.create!(:nume => analiza[0], :unitate_masura => analiza[1], :valoare_minima => analiza[2], :valoare_maxima => analiza[3], :set_grup => analiza[4])
        end
      end
      task :analize => :environment do
        desc "acum sterg analizele"
        Paraclinic.delete_all
        desc "acum adaug paraclinicele vechi"
        require "csv"
        def adauga_analiza(evaluare, valoare, index)
          analize = {0=>"acid uric", 1=>"albumina", 2=>"calciu total", 3=>"creatinina", 4=>"fosfor", 5=> "fosfataza alcalina", 6=> "tgop", 7=>"hemoglobina glicozilata", 8=> "uree", 9=>"trigliceride", 10=>"colesterol", 11=>"leucocite", 12=>"hemoglobina", 13 =>"hematocrit", 14=>"trombocite", 15=>"bicarbonat", 16=> "leucocite pipi", 17=>"hematii pipi", 18=>"microalbuminurie", 19=>"raport a/c"}
          if index == 6 
          tgo, tgp = valoare.split('/')
          fel_analiza = FelAnaliza.where(:nume => 'tgo').first
          puts 'am adaugat tgo'
          evaluare.paraclinics.create!(:valoare => tgo, :fel_analiza_id => fel_analiza.id)
          fel_analiza = FelAnaliza.where(:nume => 'tgp').first
          evaluare.paraclinics.create!(:valoare =>tgp, :fel_analiza_id => fel_analiza.id)
          else
            fel_analiza = FelAnaliza.where(:nume => analize[index]).first
            evaluare.paraclinics.create!(:valoare => valoare, :fel_analiza_id => fel_analiza.id)
          end
        end
        CSV.foreach("#{Rails.root}/db/analize.csv") do |row|
          pacient = Pacient.where(:cnp => row[-2]).first
          evaluare = pacient.evaluares.create!(:data => row[-1], :diagnostice => row[-4], :recomandari => row[-3])
          for coloana in (0..19).to_a
            adauga_analiza(evaluare, row[coloana], coloana) unless row[coloana].nil?
          end
          puts pacient.nume
        end
      end
        task :medicamente =>:environment  do
          desc "acum sterg medicamentele"
          Drug.delete_all
          desc "le adaug pe cele pa care le stiu io"
          Drug.create!(:dci => "Metformin", :cod => "PN5C2 242", :diagnostic => "Diabet zaharat tip 2", :brand_names_attributes => [{:name => "Siofor"},{:name => "Metfogamma"}, {:name => "Glucophage"}],
                      :concentrations_attributes =>[{:concentration => "1000mg"}, {:concentration => "500mg"},{:concentration => "850mg"}])
          Drug.create!(:dci => "Gliclazid", :cod => "PN5C2 242", :diagnostic => "Diabet zaharat tip 2", :brand_names_attributes =>{:name => "Diaprel MR"}, :concentrations_attributes =>
                       [{:concetration => "30mg"}, {:concentration => "60mg"}])
          
        end
      end
end

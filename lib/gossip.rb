require 'bundler'
Bundler.require

class Gossip

    attr_accessor :author, :content

    def initialize(author, content)
        @author = author
        @content = content
    end

# # Avec les connaissances acquises la semaine passée, tu devrais savoir comment 
# # faire pour que gossip.rb puisse écrire sur un CSV via la méthode #save.

    def save
        CSV.open("./db/gossip.csv", "ab") do |csv|
            csv << [author, content]
        end
    end


    # Une méthode #all. Cela me sort tous les potins au format array, et donc proprement rangés


    def self.all
        all_gossips = []
        CSV.read("./db/gossip.csv").each do |csv_line|
        all_gossips << Gossip.new(csv_line[0], csv_line[1])
        end
        return all_gossips
    end






end

#binding.pry


# 1) Nous ouvrons le CSV en mode écriture (ab)
#    le CSV a le path db/gossip.csv

# 2) Nous insérons dedans une ligne avec deux colonnes. 
# La première colonne a pour entrée le string "Mon super auteur" 
# et la seconde colonne a le string "Ma super description"
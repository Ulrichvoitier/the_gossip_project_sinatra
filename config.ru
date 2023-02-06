require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
require 'controller'
run ApplicationController


 # Nous avons créer un fichier config.ru qui contient les informations 
 # nécessaires au lancement de notre serveur. 
 # Promis, son extension russe ne cache rien de louche : un fichier .ru est 
 # juste un fichier rack up, qui est un fichier Ruby.

 # Les lignes sont plutôt explicites : on demande simplement au serveur d'exécuter 
 # le contenu de la classe ApplicationController.

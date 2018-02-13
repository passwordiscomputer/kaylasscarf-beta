# require ('sinatra')
# require('sinatra/reloader')
# also_reload('lib/**/*.rb')
require('pry')
require('./lib/kaylascarf')
require('./lib/person')

guess = ""
game = Kaylas_scarf.new
game.create_players
game.list_persons
game.scarf_pick

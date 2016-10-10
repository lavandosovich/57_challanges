require_relative 'tic_tac.rb'


Player = Struct.new(:name,:mark)
player = Player.new("Joshua","X")

Board.new(player).display

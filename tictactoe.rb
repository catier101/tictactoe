class PlayerOne
  attr_accessor :move1
  def initialize
    @move1 = gets.chomp
  end
  def update
#     if @move1 == "A1".upcase
#       @A1 = "X"
#       puts @A1
#     end
  end
end

class PlayerTwo
  attr_accessor :move2
  def initialize
    @move2 = move2
  end
end

class Board
  attr_accessor :topright, :topmid # :a_two, # :a3, #:B1, :B2, :B3, :C1, :C2, :C3
  def initialize
    @topright = ". "
    @topmid = ". "
    @topleft = ". "
    @midright = ". "
    @midmid = ". "
    @midleft = ". "
    @= ". "
    @botright = ". "
    @bot
  end
  def putboard
    print @topright
    print @topmid
    print @topleft
    puts nil
    print "."
  end
end

new = Board.new
puts new.putboard
# puts "Player One: make a move"
# first = PlayerOne.new
# first.update
# second = PlayerTwo.new
# puts "Player Two: make a move"
# second = PlayerTwo.new
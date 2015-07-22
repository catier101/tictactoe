class Board
  attr_accessor :topright, :topmid, :topleft, :midright, :midmid, :midleft, :botright, :botmid, :botleft, :move1, :move2
  def initialize
    @topright = ". "
    @topmid = ". "
    @topleft = ". "
    @midright = ". "
    @midmid = ". "
    @midleft = ". "
    @botright = ". "
    @botmid = ". "
    @botleft = ". "
  end
  def getplayer1
    @move1 = gets.chomp
  end
  def getplayer2
    @move2 = gets.chomp
  end
  def putboard
    print @topright
    print @topmid
    print @topleft
    puts nil
    print @midright
    print @midmid
    print @midleft
    puts nil
    print @botright
    print @botmid
    print @botleft
  end
  def update
    if @move1.upcase == "A1"
      @topright = "X"
    elsif @move1.upcase == "A2"
      @topmid = "X"
    elsif @move1.upcase == "A3"
      @topleft = "X"
    elsif @move2.upcase == "A1"
      @topright = "O"
    end
  end
  def update2
    if @move2.upcase == "A1"
      @topleft = "O"
    end
  end
end

def game
  count = 0
  until count > 9 do
    new = Board.new
    puts "
  |A1|A2|A3|
  |B1|B2|B3|
  |C1|C2|C3|"
    if count.even? == true
      puts "Player One: make a move (choose from display above)"
      new.getplayer1
    else
      puts "Player Two: make a move (choose from display above)"
      new.getplayer2
    end
    new.update
    new.putboard
    count = count + 1
    puts count
  end
end

game
# puts "Player One: make a move"
# first = PlayerOne.new
# first.update
# second = PlayerTwo.new
# puts "Player Two: make a move"
# second = PlayerTwo.new
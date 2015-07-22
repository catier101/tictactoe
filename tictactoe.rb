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
  def update1
    if @move1 == "A1"
      @topright = "X"
    elsif @move1 == "A2"
      @topmid = "X"
    elsif @move1 == "A3"
      @topleft = "X"
    elsif @move1 == "B1"
      @midright = "X"
    elsif @move1 == "B2"
      @midmid = "X"
    elsif @move1 == "B3"
      @midleft == "X"
     elsif @move1 == "C1"
      @botright = "X"
    elsif @move1 == "C2"
      @botmid = "X"
    elsif @move1 == "C3"
      @botleft = "X"
    end
  end
  def update2
    if @move2.upcase == "A1"
      @topright = "O"
      elsif @move2 == "A2"
      @topmid = "O"
    elsif @move2 == "A3"
      @topleft = "O"
    elsif @move2 == "B1"
      @midright = "O"
    elsif @move2 == "B2"
      @midmid = "O"
    elsif @move2 == "B3"
      @midleft == "O"
    elsif @move2 == "C1"
      @botright = "O"
    elsif @move2 == "C2"
      @botmid = "O"
    elsif @move3 == "C3"
      @botleft = "O"
    end
  end
end

def game
  count = 0
  new = Board.new
  until count > 9 do
    puts "
  |A1|A2|A3|
  |B1|B2|B3|
  |C1|C2|C3|"
    if count.even? == true
      puts "Player One: make a move (choose from display above)"
      new.getplayer1
      new.update1
    else
      puts "Player Two: make a move (choose from display above)"
      new.getplayer2
      new.update2
    end
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
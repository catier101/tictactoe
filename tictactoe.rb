class Board
  attr_reader :count
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
    @count = 0
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
    else
      @move1 = "ERROR"
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
    elsif @move2 == "C3"
      @botleft = "O"
    else
      @move2 = "error"
    end
  end
  def checkinput
    if @move1 == "error" || @move2 == "error"
      return "Please enter valid input!"
    end
  end
  def checkboard
    #if @topright == "X" && @topmid == "X" && @topleft == "X" || @topright == "O" && @topmid == "O" && @topleft == "O" || @midright == "X" && @midmid == "X" && @midleft == "X" || @botright == "X" && @botmid == "X" && @botleft == "X" || @midright == "O" && @midmid == "O" && @midleft == "O" || @botright == "O" && @botmid == "O" && @botleft == "O"
    tophorz = [@topright, @topmid, @topleft]
    midhorz = [@midright, @midmid, @midleft]
    master = [". ", ". ", ". "]
    if tophorz.uniq.length == 1 && tophorz != master
      puts "GAME OVER"
      exit
    elsif midhorz.uniq.length == 1 && midhorz != master #|| [@botright, @botmid, @botleft].uniq.length == 1 || [@topright, @midright, @botright].uniq.length == 1 || [@topmid, @midmid, @botmid].uniq.length == 1 || [@topleft, @midleft, @botleft].uniq.length == 1 || [@topright, @midmid, @botleft].uniq.length == 1 || [@topleft, @midmid, @botright].uniq.length == 1 && @count != 0
      puts "GAME OVER"
      exit
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
      new.checkinput
      new.update1
      count = count + 1
    else
      puts "Player Two: make a move (choose from display above)"
      new.getplayer2
      new.checkinput
      new.update2
      count = count + 1
    end
    new.putboard
    new.checkboard
  end
end

game
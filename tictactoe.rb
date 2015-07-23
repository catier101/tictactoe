#this code is long and messy and redundant and also I mixed up left and right thROUGH THE ENTIRE THING LOL

class Board
  attr_reader :count
  attr_accessor :topright, :topmid, :topleft, :midright, :midmid, :midleft, :botright, :botmid, :botleft, :move1err, :move2err
  def initialize
    @topright = "."
    @topmid = "."
    @topleft = "."
    @midright = "."
    @midmid = "."
    @midleft = "."
    @botright = "."
    @botmid = "."
    @botleft = "."
    @count = 0
    @move1err = false
    @move2err = false
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
      @midleft = "X"
     elsif @move1 == "C1"
      @botright = "X"
    elsif @move1 == "C2"
      @botmid = "X"
    elsif @move1 == "C3"
      @botleft = "X"
    else
      @move1err = true
      puts "Please enter valid input!"
      getplayer1
      update1
      putboard
      return
    end
  end
  def update2
    if @move2 == "A1"
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
      @midleft = "O"
    elsif @move2 == "C1"
      @botright = "O"
    elsif @move2 == "C2"
      @botmid = "O"
    elsif @move2 == "C3"
      @botleft = "O"
    else
      @move2err = true
      puts "Please enter valid input!"
      getplayer2
      update2
      putboard
      return
    end
  end
  def checkinput
    if @move1err == true || @move2err == true
      puts "Please enter valid input!"
      return getplayer1
    end
  end
  def checkboard
    tophorz = [@topright, @topmid, @topleft]
    midhorz = [@midright, @midmid, @midleft]
    bothorz = [@botright, @botmid, @botleft]
    rightvert = [@topright, @midright, @botright]
    midvert = [@topmid, @midmid, @botmid]
    leftvert = [@topleft, @midleft, @botleft]
    rldiag = [@topright, @midmid, @botleft]
    lrdiag = [@topleft, @midmid, @botright]
    master = [".", ".", "."]
    if tophorz.uniq.length == 1 && tophorz != master || midhorz.uniq.length == 1 && midhorz != master || bothorz.uniq.length == 1 && bothorz != master || rightvert.uniq.length == 1 && rightvert != master || midvert.uniq.length == 1 && midvert != master || leftvert.uniq.length == 1 && leftvert != master || rldiag.uniq.length == 1 && rldiag != master || lrdiag.uniq.length == 1 && lrdiag != master
      puts "GAME OVER"
      putboard
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
      new.update1
      count = count + 1
      new.putboard
    else
      puts "Player Two: make a move (choose from display above)"
      new.getplayer2
      new.update2
      count = count + 1
      new.putboard
    end
    new.checkboard
  end
end

game
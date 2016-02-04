class Car < Vehicle
  def initialize
    @color = :magenta # overwrtten by line 37
  end

  def move
    puts 'movement: Drive'
  end
end

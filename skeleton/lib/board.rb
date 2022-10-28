require_relative 'player'
class Board < Player
  attr_accessor :cups

  def initialize(name1, name2)
    four_stone_cup =  [:stone, :stone, :stone, :stone]
    @cups = Array.new(14){Array.new(four_stone_cup)}
    @cups[6] = []
    @cups[13] = []
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
  end

  def valid_move?(start_pos)
    if start_pos > 12 || start_pos < 0
      raise 'Invalid starting cup'
    elsif @cups[start_pos].length == 0
      raise 'Starting cup is empty'
    end
  end

  def make_move(start_pos, current_player_name)

    k = @cups[start_pos].length
    @cups[start_pos] = []
    (start_pos+1..start_pos+k).each do |i|
      if @current_player_name == @name2 && i == 13
        @cups[13] << :stone
      elsif @current_player_name == @name1 && i == 6
        @cups[6] << :stone
      else
        @cups[i] << :stone
      end
    end
    render
    return next_turn(start_pos+k)
  end

  def next_turn(ending_cup_idx)
    if @cups[ending_cup_idx].length == 1
      return :switch
    elsif ending_cup_idx == 6 || ending_cup_idx == 13
      return :prompt
    else
      return @cups[ending_cup_idx]
    end
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    return true if @cups[0..5].all?{|ele| ele.length == 0} || @cups[7..12].all?{|ele| ele.length == 0}
    false
  end

  def winner
    return :draw if @cups[6].length == 6 && @cups[13].length == 6
  end
end

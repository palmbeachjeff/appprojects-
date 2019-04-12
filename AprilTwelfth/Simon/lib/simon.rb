class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    take_turn until @game_over == true
    if @game_over == true
      game_over_message
      reset_game
    end
  end

  def take_turn
    show_sequence
    require_sequence
    if @game_over == false
      round_success_message
      @sequence_length += 1
    else game_over_message
      @game_over = true
    end
  end

  def show_sequence
    add_random_color
  end

  def require_sequence
    @require_sequence
  end

  def add_random_color
    random_color = COLORS[rand(COLORS.length)]
    @seq << random_color
  end

  def round_success_message

  end

  def game_over_message

  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq = []
  end
end

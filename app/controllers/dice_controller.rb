class DiceController < ApplicationController

  $win = "You win!"
  $lose = "You lose!"
  $again = "Roll again"

  def dice
  end

  def play
    @roll1 = (1..6).to_a.sample
    @roll2 = (1..6).to_a.sample
    @score = @roll1 + @roll2

    if @score == 7 ||  @score == 11
      @reply = $win
      @action = "dice"
      @button_caption = 'Start over'
    elsif
      @score == 2 ||  @score == 3 ||  @score == 12
      @reply = $lose
      @action = "dice"
      @button_caption = 'Start over'
    else
      @reply = $again
      @action = "alive"
      @button_caption = $again
    end

  end

  def alive
    @points = params[:id]
    @roll1 = (1..6).to_a.sample
    @roll2 = (1..6).to_a.sample
    @score = @roll1 + @roll2

    if @score == 7
       @reply = $lose
       @action = "dice"
       @button_caption = 'Start over'
    elsif @score == @points
       @reply = $win
       @action = "dice"
       @button_caption = 'Start over'
    else
      @reply = $again
      @action = "alive"
      @button_caption = $again
    end

  end

end

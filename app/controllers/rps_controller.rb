class RpsController < ApplicationController

  def rps
    @paper = 'paper.png'
    @rock = 'rock.jpg'
    @scissors = 'scissors.jpg'
  end

  def roll
    @user = params[:user_choice]
    @paper = 'paper.png'
    @rock = 'rock.jpg'
    @scissors = 'scissors.jpg'
    @option = ['paper.png', 'rock.jpg', 'scissors.jpg']
    @computer = @option.sample

    if @user.eql?(@computer)
      @result = "It's a tie."
    elsif
      @user.eql?(@paper) & @computer.eql?(@rock)
      @result = "You win!"
    elsif
      @user.eql?(@paper) & @computer.eql?(@scissors)
      @result = "You lose!"
    elsif
      @user.eql?(@rock) & @computer.eql?(@paper)
      @result = "You lose!"
    elsif
      @user.eql?(@rock) & @computer.eql?(@scissors)
      @result = "You win!"
    elsif
      @user.eql?(@scissors) & @computer.eql?(@paper)
      @result = "You win!"
    elsif
      @user.eql?(@scissors) & @computer.eql?(@rock)
      @result = "You lose!"
    end

  end

end

class PokerController < ApplicationController

  def poker
    # create an array with 53 elements with fixnum values 0 to 52
    i = 0
    @cards = Array.new
    while i <= 52 do
      @cards << i
      i = i + 1
    end
    # create a 5-element hand array that will hold the five different cards for view
    @hand = [0,0,0,0,0]
    i = 0
    # for each of the 5 cards in array hand, pick a sample from
    # @cards, check to see if the sample element is 0 and if not,
    # add that element to the hand. an element with value 0
    # indicates that the index number already in the hand. after
    # putting an element in the hand, set it to zero in cards array.
    while i < 5 do
      random = @cards.to_a.sample
      while random == 0
        random = @cards.to_a.sample
      end
      @hand[i] = random
      @cards[random] = 0
      i = i + 1
     end
  end
end

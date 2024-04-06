class GamesController < ApplicationController
  def new
    @letters = ("A".."Z").to_a.sample(10)
    @word = params[:word]
  end

  def score
    # 1- get input
    # 2- validate if letters and included in array
    # 3- validate if english word
    # 4- if invalid or not in array score 0
    # 5-
    raise
  end

  def included?
    characters = @word.chars
    characters.each do |letter|
      unless @word.count(letter) <= @letters.count(letter)
        return false
      end
    end
  end
end

class GamesController < ApplicationController
  def new 
   @letters = Array.new(10){("A".."Z").to_a.sample}.join(" ")
  
  end 


  def score
    
    @word = params[:word].split(" ")
    @letters = params[:letters]
    uniqletter = params[:word].split("").uniq
    @valideword = true 
    @word.each do |letter|
      unless  @letters.count(letter) >= @word.count(letter)
        @valideword = false
      end
    end
    
    
    


  end 
end

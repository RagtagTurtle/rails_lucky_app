class Api::PagesController < ApplicationController
  def random_fortune_action 
    @random_fortune = [
                      "You win a million dollars", 
                      "You win coal", 
                      "You win 3 wishes",
                      "You win a house", 
                      "You win a car"
                      ].sample

    render 'random_fortune_view.json.jbuilder'
  end

  def lotto_fortune_action
    @random_lotto = [rand(1..60), rand(1..60), rand(1..60), rand(1..60), rand(1..60), rand(1..60)]
    @random_lotto = @random_lotto.join(", ")
    render 'lotto_fortune_view.json.jbuilder'
  end  

  def lotto_action #class demo (same thing as lotto fortune)
    possible_numbers = (1..60).to_a #this will add all numbers 1-60 to array
    @magic_numbers = []
    6.times { @magic_numbers << possible_numbers.shuffle!.pop } #shuffle! pop will remove the randomized number from array

    @magic_numbers = @magic_numbers.join(", ")

    render 'lotto_view.json.jbuilder'
  end





  def bottles_of_beer_action
      beers = 99

      98. times do
        puts "#{beers} bottles of beer on the wall, #{beers} bottles of beer"
        beers = beers - 1
        puts "Take one down and pass it around, #{beers} bottles of beer on the wall"
      end 

    puts "Take one down and pass it around, no more bottles of beer on the wall."
    puts "No more bottles of beer on the wall, no more bottles of beer."
    puts "Go to the store and buy some more, 99 bottles of beer on the wall."

    render 'bottles_of_beer_view.json.jbuilder'
  end

  def page_count_action
    @count = 0
    @count += 1 # this will not work
    render 'page_count_view.json.jbuilder'
  end


end

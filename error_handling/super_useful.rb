# PHASE 2
require 'byebug'
def convert_to_int(str)
  Integer(str)
  
  rescue ArgumentError => e
    puts 'enter an integer ( ex: 1, 2, 3, 4, 5...)'
    return nil

end

# PHASE 3
FRUITS = ["apple", "banana", "orange"]

def reaction(maybe_fruit)
  if FRUITS.include? maybe_fruit
    puts "OMG, thanks so much for the #{maybe_fruit}!"
  else 
    raise StandardError 
  end 
end

def feed_me_a_fruit
  puts "Hello, I am a friendly monster. :)"

  puts "Feed me a fruit! (Enter the name of a fruit:)"
  begin
    maybe_fruit = gets.chomp
    reaction(maybe_fruit) 
  rescue StandardError
    puts "I don't like #{maybe_fruit}! Can I have something different?"
    retry
  end
end  

# PHASE 4
class BestFriend

  def initialize(name, yrs_known, fav_pastime)
    raise "Friendships, like a fine wine, need as least five years to mature." if yrs_known < 5
    @name = name
    @yrs_known = yrs_known
    @fav_pastime = fav_pastime
  end

  def talk_about_friendship
    puts "Wowza, we've been friends for #{@yrs_known}. Let's be friends for another #{1000 * @yrs_known}."
  end

  def do_friendstuff
    puts "Hey bestie, let's go #{@fav_pastime}. Wait, why don't you choose. 😄"
  end

  def give_friendship_bracelet
    puts "Hey bestie, I made you a friendship bracelet. It says my name, #{@name}, so you never forget me." 
  end
end



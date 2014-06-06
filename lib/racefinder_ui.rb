require './lib/racefinder'

class RaceFinderUI

  def start
    puts welcome_message
    location = get_user_input
    race = get_user_input
    racefinder = RaceFinder.new
    racefinder.input_race(location, race)
    puts racefinder.search(location)
  end

  def welcome_message
    "Welcome to RaceFinder!"
  end

  def get_user_input
    gets.chomp
  end

end
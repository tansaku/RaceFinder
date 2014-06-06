class RaceFinder

  def initialize
    @races = {}
  end

  def search(country)
    @races[country]
  end

  def input_race(location, race)
    @races[location] = race
  end

end
RACES = {"France" => :race, "Germany" => :another_race}

def search(country)
  @races[country]
end

def input_race(location, race)
  @races ||= {}
  @races[location] = race
end

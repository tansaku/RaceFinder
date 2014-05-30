require 'racefinder'

describe 'RaceFinder' do
    it 'should search for races in France and Germany' do
      # Q: are there any races in France?
      # A: yes, in Paris    
      race = double(:race)  
      another_race = double(:another_race)
      input_race("France", race)
      input_race("Germany", another_race)
      expect(search("France")).to eq race
      expect(search("Germany")).to eq another_race
    end

    xit 'should search for races in Italy' do
      expect(search("Italy")).to eq "Rome"
    end
end
require 'racefinder'

describe 'RaceFinder' do
    it 'should search for races in France' do
      # Q: are there any races in France?
      # A: yes, in Paris
      expect(search("France")).to eq 'Paris'
    end

    it 'should search for races in Germany' do
      expect(search("Germany")).to eq "Berlin"
    end

    it 'should search for races in Italy' do
      expect(search("Italy")).to eq "Rome"
    end
end
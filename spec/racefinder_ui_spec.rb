require 'racefinder_ui'

describe RaceFinderUI do

  let(:racefinderui) { RaceFinderUI.new }

  it 'when initialized, the welcome message should be displayed' do 
    expect(STDOUT).to receive(:puts).with(racefinderui.welcome_message)
    racefinderui.start
  end

  it 'welcome message' do
    expect(racefinderui.welcome_message).to eq "Welcome to RaceFinder!"
  end



end
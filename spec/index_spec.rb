require 'spec_helper'

feature 'show the home page' do
  scenario 'home page has races' do
    Event.create(name: 'Marathon', location: 'Paris', year: '2015')
    Event.create(name: 'Marathon', location: 'London', year: '2015')
    Event.create(name: 'Marathon', location: 'Berlin', year: '2015')
    visit '/'
    expect(page).to have_content "Paris Marathon 2015"
    expect(page).to have_content "Berlin Marathon 2015"
    expect(page).to have_content "London Marathon 2015"
  end
end
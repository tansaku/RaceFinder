env = ENV["RACK_ENV"] || "development"

require 'data_mapper'

# we're telling datamapper to use a postgres database on localhost. The name will be "bookmark_manager_test" or "bookmark_manager_development" depending on the environment
DataMapper.setup(:default, "postgres://localhost/race_finder_#{env}")

require './lib/event'

# After declaring your models, you should finalise them
DataMapper.finalize

# However, the database tables don't exist yet. Let's tell datamapper to create them
DataMapper.auto_upgrade!

require 'sinatra'

get '/' do
  @events = Event.all
  erb :index
end

get '/search' do
  erb :search
end

get '/events/:location' do
  @location = params[:location]
  erb :event
end

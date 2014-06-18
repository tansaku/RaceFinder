require 'data_mapper'

class Event
  include DataMapper::Resource

  property :id,           Serial 
  property :name,         String
  property :location,     String
  property :year,         String

end
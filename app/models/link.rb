require 'data_mapper'

class Link

  include DataMapper::Resource
  property :id, Serial
  property :url, Text, required: true
  property :title, String, length: 50, required: true
  property :description, Text, length: 200

  has n, :category, through: Resource

end

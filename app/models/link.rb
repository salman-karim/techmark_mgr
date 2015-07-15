require 'data_mapper'

class Link

  include DataMapper::Resource
  property :id, Serial
  property :URL, String, :required => true
  property :title, String, :length => 50, :required => true
  # property :category, String, :length => 30,:required => true
  property :description, String, :length => 200

  has n, :categories, through: Resource

end

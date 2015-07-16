require 'data_mapper'

class Subcategory

  include DataMapper::Resource

  property :id, Serial
  property :name, String, required: true

  has n, :links, through: Resource
  belongs_to :category

end

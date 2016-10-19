
require 'data_mapper'
require 'dm-postgres-adapter'


class Link
  include DataMapper::Resource

  property :id, Serial
  property :title, String
  property :url, String, length: 250

  has n, :tags, through: Resource

end

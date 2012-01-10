class Person < CouchRest::Model::Base
  
  property :name, String
  property :age, Integer
  property :addresses, [String]
  timestamps!

  view_by :name
  
  validates :name, :age, :presence => true
end

class Person < CouchRest::Model::Base
  
  property :name, String
  property :age, Integer
  property :addresses, [String]
  timestamps!

  view_by :name
  
  validates :name, :age, :presence => true
  validates :age, :numericality => {:greater_than => 0}
end

class Person < CouchRest::Model::Base
  
  property :name, String
  property :age, Integer
  property :tags, [String]
  timestamps!

  # view_by :name
  
  validates :name, :age, :presence => true
  validates :age, :numericality => {:greater_than => 0}

  def tags
    read_attribute(:tags).join(', ')
  end
  
  def tags=(str)
    str = str.split(',').map(&:strip) unless str.is_a? Array
    write_attribute(:tags, str)
  end
end

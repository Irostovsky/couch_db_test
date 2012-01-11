def clean_data
  Person.all.each{|o| o.destroy} #need to rewrite in couchdb style
end

def insert_data
  tags = Array.new(10) { Faker::Company.name }
  
  35.times do |i|
    Person.create :name => Faker::Name.name, :age => rand(100), :tags => tags.shuffle[0..rand(4)]
  end
end


desc "Insert test data"
task :insert_test_data => "environment" do
  clean_data
  insert_data
end
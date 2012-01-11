require 'spec_helper'

describe Person do
  
  describe "validation" do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:age) }
    it { should validate_numericality_of(:age) }
  end
  
  describe "tags=" do
    it "should write nil" do
      Person.new.tags.should be_empty
    end
    
    it "should write string with ," do
      Person.new(:tags => "tag1, tag2")["tags"].should == ["tag1", "tag2"] 
    end
  end
end

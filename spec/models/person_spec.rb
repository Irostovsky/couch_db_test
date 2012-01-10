require 'spec_helper'

describe Person do
  
  describe "validation" do
    let(:person){ Person.new}
    it "should be valid" do
      person.stub :valid, true
      person.should be_valid
    end
  end
end

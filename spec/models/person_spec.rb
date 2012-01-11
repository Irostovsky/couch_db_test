require 'spec_helper'

describe Person do
  
  describe "validation" do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:age) }
    it { should validate_numericality_of(:age) }
    
  end
end

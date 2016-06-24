require 'test_helper'

class TagTest < ActiveSupport::TestCase
  
  def setup

    @tag = Tag.new(name: "sports")
  
  end
  test "name should be unique" do
  
    @tag.save
    
    tag2 = Tag.new(name: "sports")
    
    assert_not tag2.valid?
  
  end
end

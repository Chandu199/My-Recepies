require 'test_helper'

class RecipeTest < ActiveSupport::TestCase
    def setup
        @recipe=Recipe.new(name:"Palov",summary:"This is best palov",description:"prepare masala and add boild rice")
        
    end
    test"recipe should be valid"do
        assert @recipe.valid?
        
    end
    test"name shoud be present"do
        @recipe.name=""
        assert_not  @recipe.valid?
    end
    
    test"name length should not be too long"do
        @recipe.name="a"*101
        assert_not @recipe.valid?
        
    end
    
    test"name length should not be too short"do
        @recipe.name="aaaa"
        assert_not @recipe.valid?
    end
    
    test"summary should present"do
        @recipe.summary=""
        assert_not @recipe.valid?
        
    end
    
    test"summary lenght should not be too long"do
        @recipe.summary="a"*151
        assert_not @recipe.valid?
    end
    test"summary should not be too short"do
        @recipe.summary="a"*9
        assert_not @recipe.valid?
    end
    
    test"Description must be present"do
        @recipe.description=""
        assert_not @recipe.valid?
        
    end
    
    test"Description should not be too long"do
        @recipe.description="a"*501
        assert_not @recipe.valid?
        
    end
    test"Description should not be too short"do
        @recipe.description="a"*19
        assert_not @recipe.valid?
    end
end

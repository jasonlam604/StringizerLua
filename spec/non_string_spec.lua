require "busted.runner"()

local Stringizer = require "stringizer"

describe("Stringizer", function()
  describe("Non String Test", function()
    
    it("should accept empty string and test is empty", function() 
        assert.equal(Stringizer.is_empty(""),true)
    end)
    
    it("should accept nil and test is empty", function() 
        assert.equal(Stringizer.is_empty(nil),true)
    end)    
    
    it("should accept numeric value test is NOT string", function() 
        assert.equal(Stringizer.is_string(1),false)
    end)
    
    it("should accept string with whitespace", function()  
        assert.equal(Stringizer.is_blank(" "),true)
    end)   
    
    it("should accept string with whitespace", function() 
        assert.equal(Stringizer.is_blank(""),true)
    end)  
    
    it("should accept string with whitespace", function() 
        assert.equal(Stringizer.is_blank("x"),false)
    end) 

  end)
end)

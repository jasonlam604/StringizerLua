require "busted.runner"()

local Stringizer = require "stringizer"

describe("Stringizer", function()
  describe("Non String Test", function()
    
    it("should accept empty string and test is empty", function()
        local stringizer = Stringizer.new("")   
        assert.equal(stringizer:is_empty(),true)
    end)
    
    it("should accept nil and test is empty", function()
        local stringizer = Stringizer.new(nil)   
        assert.equal(stringizer:is_empty(),true)
    end)    
    
    it("should accept numeric value test is NOT string", function()
        local stringizer = Stringizer.new(1)   
        assert.equal(stringizer:is_string(),false)
    end)
    
    it("should accept string with whitespace", function()
        local stringizer = Stringizer.new(" ")   
        assert.equal(stringizer:is_blank(),true)
    end)   

  end)
end)

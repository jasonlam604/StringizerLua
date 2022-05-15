require "busted.runner"()

local Stringizer = require "stringizer"

describe("Stringizer", function()

  describe("End With Tests", function()
   
    it("Fizz Buzz should end with Buzz", function()
        local stringizer = Stringizer.new("Fizz Buzz")   
        assert.equal(stringizer.ends_with("Buzz"),true)
    end)
    
    it("文字列のそれ should end with れ", function()
        local stringizer = Stringizer.new("文字列のそれ")   
        assert.equal(stringizer.ends_with("れ"),true)
    end)
    
    it("Fizz Buzz should not end with Buzzz", function()
        local stringizer = Stringizer.new("Fizz Buzz")   
        assert.equal(stringizer.ends_with("Buzzz"),false)
    end)
    
    it("Fizz Buzz should not end with BUZZ", function()
        local stringizer = Stringizer.new("Fizz Buzz")   
        assert.equal(stringizer.ends_with("BUZZ"),false)
    end)  
    
    it("Fizz Buzz should end with BUZZ when case insensitive", function()
        local stringizer = Stringizer.new("Fizz Buzz")   
        assert.equal(stringizer.ends_with("BUZZ",true),true)
    end)  

    it("nil should not end with Buzz", function()
        local stringizer = Stringizer.new(nil)   
        assert.equal(stringizer.ends_with("Buzz"),false)
    end)
    
    it("empty string should not end with Buzz", function()
        local stringizer = Stringizer.new("")   
        assert.equal(stringizer.ends_with("Buzz"),false)
    end)

    it("Fizz Buzz should not end with nil", function()
        local stringizer = Stringizer.new("Fizz Buzz")   
        assert.equal(stringizer.ends_with(nil),false)
    end)

    it("Fizz Buzz should not end with empty string", function()
        local stringizer = Stringizer.new("Fizz Buzz")   
        assert.equal(stringizer.ends_with(""),false)
    end)

  end)
  
  describe("Starts With Tests", function()
   
    it("Fizz Buzz should start with Buzz", function()
        local stringizer = Stringizer.new("Fizz Buzz")   
        assert.equal(stringizer.starts_with("Fizz"),true)
    end)
    
    it("文字列のそれ should start with 文字", function()
        local stringizer = Stringizer.new("文字列のそれ")   
        assert.equal(stringizer.starts_with("文字"),true)
    end)
    
    it("Fizz Buzz should not start with FiZZ", function()
        local stringizer = Stringizer.new("Fizz Buzz")   
        assert.equal(stringizer.starts_with("FiZZ"),false)
    end)
   
    it("Fizz Buzz should not start with fizz", function()
        local stringizer = Stringizer.new("Fizz Buzz")   
        assert.equal(stringizer.starts_with("fizz"),false)
    end)
    
    it("Fizz Buzz should start with fizz when case insensitive", function()
        local stringizer = Stringizer.new("Fizz Buzz")   
        assert.equal(stringizer.starts_with("fizz",true),true)
    end)
    
    it("nil should not start with Fizz", function()
        local stringizer = Stringizer.new(nil)   
        assert.equal(stringizer.starts_with("Fizz"),false)
    end)    
    
    it("empty string should not start with Fizz", function()
        local stringizer = Stringizer.new(nil)   
        assert.equal(stringizer.starts_with("Fizz"),false)
    end)    

  end)
end)

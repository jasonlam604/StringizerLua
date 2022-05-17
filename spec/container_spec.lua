require "busted.runner"()

local Stringizer = require "stringizer"

describe("Stringizer", function()

  describe("End With Tests", function()
   
    it("Fizz Buzz should end with Buzz", function() 
        assert.equal(Stringizer.ends_with("Fizz Buzz", "Buzz"),true)
    end)
    
    it("文字列のそれ should end with れ", function() 
        assert.equal(Stringizer.ends_with("文字列のそれ", "れ"),true)
    end)
    
    it("Fizz Buzz should not end with Buzzz", function()
        assert.equal(Stringizer.ends_with("Fizz Buzz", "Buzzz"),false)
    end)
    
    it("Fizz Buzz should not end with BUZZ", function()  
        assert.equal(Stringizer.ends_with("Fizz Buzz", "BUZZ"),false)
    end)  
    
    it("Fizz Buzz should end with BUZZ when case insensitive", function() 
        assert.equal(Stringizer.ends_with("Fizz Buzz", "BUZZ",true),true)
    end)  

    it("nil should not end with Buzz", function()  
        assert.equal(Stringizer.ends_with(nil, "Buzz"),false)
    end)
    
    it("empty string should not end with Buzz", function()  
        assert.equal(Stringizer.ends_with("", "Buzz"),false)
    end)

    it("Fizz Buzz should not end with nil", function() 
        assert.equal(Stringizer.ends_with("Fizz Buzz", nil),false)
    end)

    it("Fizz Buzz should not end with empty string", function()  
        assert.equal(Stringizer.ends_with("Fizz Buzz", ""),false)
    end)

  end)
  
  describe("Starts With Tests", function()
   
    it("Fizz Buzz should start with Buzz", function()
        assert.equal(Stringizer.starts_with("Fizz Buzz", "Fizz"),true)
    end)
    
    it("文字列のそれ should start with 文字", function()  
        assert.equal(Stringizer.starts_with("文字列のそれ", "文字"),true)
    end)
    
    it("Fizz Buzz should not start with FiZZ", function() 
        assert.equal(Stringizer.starts_with("Fizz Buzz", "FiZZ"),false)
    end)
   
    it("Fizz Buzz should not start with fizz", function()  
        assert.equal(Stringizer.starts_with("Fizz Buzz", "fizz"),false)
    end)
    
    it("Fizz Buzz should start with fizz when case insensitive", function()  
        assert.equal(Stringizer.starts_with("Fizz Buzz", "fizz",true),true)
    end)
    
    it("nil should not start with Fizz", function()  
        assert.equal(Stringizer.starts_with(nil, "Fizz"),false)
    end)    
    
    it("empty string should not start with Fizz", function()  
        assert.equal(Stringizer.starts_with(nil, "Fizz"),false)
    end)    

  end)
end)

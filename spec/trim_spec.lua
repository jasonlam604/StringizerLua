require "busted.runner"()

local Stringizer = require "stringizer"

describe("Stringizer", function()
  describe("Test Trim", function()
  
    it("should trim left of '  Fizz Buzz  ' will result in 'Fizz Buzz  '", function()
      assert.equal(Stringizer.ltrim("  Fizz Buzz  "),"Fizz Buzz  ")
    end)
    
    
    it("should trim right of '  Fizz Buzz  ' will result in '  Fizz Buzz'", function()
      assert.equal(Stringizer.rtrim("  Fizz Buzz  "),"  Fizz Buzz")
    end)
    
    it("should trim left and right of '  Fizz Buzz  ' will result in 'Fizz Buzz'", function()
      assert.equal(Stringizer.trim("  Fizz Buzz  "),"Fizz Buzz")
    end)
 
  end)
end)
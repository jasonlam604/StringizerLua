require "busted.runner"()

local Stringizer = require "stringizer"

describe("Stringizer", function()
  describe("Test split", function()
  
    it("should split be given Fizz:Buzz:stringizer with delimiter : then a list with 3 indexes will result", function()
      local values = Stringizer.split("Fizz:Buzz:stringizer",":")
      assert.equal(#values,3)
      assert.equal(values[1],"Fizz")
      assert.equal(values[2],"Buzz")
      assert.equal(values[3],"stringizer")
    end)
 
  end)
end)
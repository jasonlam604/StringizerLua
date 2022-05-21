require "busted.runner"()

local Stringizer = require "stringizer"

describe("Stringizer", function()
  describe("Pad Test", function()
    
    it("when left pad 'FizzBuzz' by 15 with - it should be '------Fizz Buzz'", function()
       assert.equal(Stringizer.lpad("Fizz Buzz", 15, "-"),"------Fizz Buzz")
    end)

    it("when right pad 'FizzBuzz' by 15 with - it should be 'Fizz Buzz------'", function()
       assert.equal(Stringizer.rpad("Fizz Buzz", 15, "-"),"Fizz Buzz------")
    end)

    it("should encode ȘŦŗÍñĝìzĕŕߓ to yJjFpsWXw43DscSdw6x6xJXFld+T", function()
       assert.equal(Stringizer.pad("FizzBuzz", 15, "-"),"---FizzBuzz----")
    end)
 
  end)
end)
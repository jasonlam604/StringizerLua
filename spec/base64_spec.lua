require "busted.runner"()

local Stringizer = require "stringizer"

describe("Stringizer", function()
  describe("Test Base64", function()
    
    it("should encode and decode ȘŦŗÍñĝìzĕŕߓ", function()
       local stringizer = Stringizer.new("ȘŦŗÍñĝìzĕŕߓ")
       assert.equal(stringizer:base64_encode():base64_decode():get_value(),"ȘŦŗÍñĝìzĕŕߓ")
    end)
 
  end)
end)
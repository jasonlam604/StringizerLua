require "busted.runner"()

local Stringizer = require "stringizer"

describe("Stringizer", function()
  describe("Base64 Test", function()
    
    it("should encode ȘŦŗÍñĝìzĕŕߓ to yJjFpsWXw43DscSdw6x6xJXFld+T", function()
       assert.equal(Stringizer.base64_encode("ȘŦŗÍñĝìzĕŕߓ"),"yJjFpsWXw43DscSdw6x6xJXFld+T")
    end)
    
    it("should decode yJjFpsWXw43DscSdw6x6xJXFld+T to ȘŦŗÍñĝìzĕŕ", function()
       assert.equal(Stringizer.base64_decode("yJjFpsWXw43DscSdw6x6xJXFld+T"),"ȘŦŗÍñĝìzĕŕߓ")
    end)
 
  end)
end)
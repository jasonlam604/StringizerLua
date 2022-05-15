require "busted.runner"()

local Stringizer = require "stringizer"

describe("Stringizer", function()
  describe("Instantiate Test", function()
    
    it("should accept a string", function()
        local stringizer = Stringizer.new("my-test-value")   
        assert.equal(stringizer:get_value(),"my-test-value")
        assert.equal(stringizer:get_original_value(),"my-test-value")
    end)
    
    it("should accept a multi-byte string", function()
        local stringizer = Stringizer.new("ȘŦŗÍñĝìzĕŕߓ")   
        assert.equal(stringizer:get_value(),"ȘŦŗÍñĝìzĕŕߓ")
        assert.equal(stringizer:get_original_value(),"ȘŦŗÍñĝìzĕŕߓ")
    end)
    
    it("should not use non string value when strict is enabled", function()
       assert.has_error(function() Stringizer.new(1,true) end, "Given value not a string")
    end)
    
    it("should not use empty string value when strict is enabled", function()
       assert.has_error(function() Stringizer.new("",true) end, "Given value is empty")
    end)
    
    it("should not use nil when strick is enabled", function()
       assert.has_error(function() Stringizer.new("",true) end, "Given value is empty")
    end)

  end)
end)

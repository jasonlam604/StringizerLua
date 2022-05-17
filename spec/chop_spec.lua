require "busted.runner"()

local Stringizer = require "stringizer"

describe("Stringizer", function()

  describe("Chop Tests", function()
   
    it("should ȘŦŗÍñĝìzĕŕ be left chopped with ȘŦŗÍñĝ it will result in end with ìzĕŕ", function()  
        assert.equal(Stringizer.chop_left("ȘŦŗÍñĝìzĕŕ", "ȘŦŗÍñĝ"), "ìzĕŕ")
    end)
    
    it("should ȘŦŗÍñĝìzĕŕ be right chopped with ìzĕŕ it will result in end with ȘŦŗÍñĝ", function() 
        assert.equal(Stringizer.chop_right("ȘŦŗÍñĝìzĕŕ", "ìzĕŕ"), "ȘŦŗÍñĝ")
    end)
    
    it("should ȘŦŗÍñĝìzĕŕ be left chopped with ȘŦŗÍñĝz it will result in end with error", function() 
        assert.has_error(function() Stringizer.chop_left("ȘŦŗÍñĝìzĕŕ", "ȘŦŗÍñĝz") end, "Left value not found")
    end)
    
    it("should ȘŦŗÍñĝìzĕŕ be right chopped with ìzĕŕXXX it will result in end with error", function()
        assert.has_error(function() Stringizer.chop_right("ȘŦŗÍñĝìzĕŕ", "ìzĕŕXXX") end, "Right value not found")
    end)
    
  end)
end)

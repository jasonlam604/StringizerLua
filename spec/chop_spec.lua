require "busted.runner"()

local Stringizer = require "stringizer"

describe("Stringizer", function()

  describe("Chop Tests", function()
   
    it("should ȘŦŗÍñĝìzĕŕ be left chopped with ȘŦŗÍñĝ it will result in end with ìzĕŕ", function()
        local stringizer = Stringizer.new("ȘŦŗÍñĝìzĕŕ")   
        assert.equal(stringizer.chop_left("ȘŦŗÍñĝ"),"ìzĕŕ")
    end)
    
    it("should ȘŦŗÍñĝìzĕŕ be right chopped with ìzĕŕ it will result in end with ȘŦŗÍñĝ", function()
        local stringizer = Stringizer.new("ȘŦŗÍñĝìzĕŕ")   
        assert.equal(stringizer.chop_right("ìzĕŕ"),"ȘŦŗÍñĝ")
    end)
    
    it("should ȘŦŗÍñĝìzĕŕ be left chopped with ȘŦŗÍñĝz it will result in end with error", function()
        local stringizer = Stringizer.new("ȘŦŗÍñĝìzĕŕ")   
        assert.has_error(function() stringizer.chop_left("ȘŦŗÍñĝz") end, "Left value not found")
    end)
    
    it("should ȘŦŗÍñĝìzĕŕ be right chopped with ìzĕŕXXX it will result in end with error", function()
        local stringizer = Stringizer.new("ȘŦŗÍñĝìzĕŕ")
        assert.has_error(function() stringizer.chop_right("ìzĕŕXXX") end, "Right value not found")
    end)
    
  end)
end)

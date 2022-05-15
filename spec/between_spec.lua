require "busted.runner"()

local Stringizer = require "stringizer"

describe("Stringizer", function()

  describe("Between Tests", function()
   
    it("should <div>ȘŦŗÍñĝìzĕŕ</div> be successful the resulting string is ȘŦŗÍñĝìzĕŕ", function()
        local stringizer = Stringizer.new("<div>ȘŦŗÍñĝìzĕŕ</div>")   
        assert.equal(stringizer.between("<div>","</div>"),"ȘŦŗÍñĝìzĕŕ")
    end)
    
    it("should be error when left is not found", function()
        local stringizer = Stringizer.new("<div>ȘŦŗÍñĝìzĕŕ</div>")   
        assert.has_error(function() stringizer.between("<divv>","</div>") end, "Left value not found")
    end)
    
    it("should be error when right is not found", function()
        local stringizer = Stringizer.new("<div>ȘŦŗÍñĝìzĕŕ</div>")   
        assert.has_error(function() stringizer.between("<div>","</divv>") end, "Right value not found")
    end)
        
  end)
end)

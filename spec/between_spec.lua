require "busted.runner"()

local Stringizer = require "stringizer"

describe("Stringizer", function()

  describe("Between Tests", function()
   
    it("should <div>ȘŦŗÍñĝìzĕŕ</div> be successful the resulting string is ȘŦŗÍñĝìzĕŕ", function() 
        assert.equal(Stringizer.between("<div>ȘŦŗÍñĝìzĕŕ</div>", "<div>", "</div>"),"ȘŦŗÍñĝìzĕŕ")
    end)
    
    it("should be error when left is not found", function()
        assert.has_error(function() Stringizer.between("<div>ȘŦŗÍñĝìzĕŕ</div>", "<divv>", "</div>") end, "Left value not found")
    end)
    
    it("should be error when right is not found", function() 
        assert.has_error(function() Stringizer.between("<div>ȘŦŗÍñĝìzĕŕ</div>", "<div>", "</divv>") end, "Right value not found")
    end)
        
  end)
end)

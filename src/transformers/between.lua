local Container = require ("checkers.container")
local Chop = require ("transformers.chop")

------
-- Between - Extracts a string between left and right strings.
--- @module transformers.between
local Between = {}

function Between.new()
   local self = {}
   
   self.container = Container.new()
   self.chop = Chop.new()

   -----
   -- Between - Extracts a string between left and right strings.
   -- @return string
   -- @error message   
   function self.between(value, left, right)
      if (value == nil or value == '' or left == nil or left == ''  or right == nil or right == '') then
        error("Given source value, left value or right value is not a string") 
      end
      
      local result = value
      
      if (self.container.starts_with(value, left)) then
        result = self.chop.chop_left(value, left)
      else
        error("Left value not found")
      end
      
      if (self.container.ends_with(value, right)) then
        result = self.chop.chop_right(result, right)
      else
        error("Right value not found")
      end
      
      return result
   end

  
   
   return self   
end

return Between

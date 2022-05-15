local Container = require ("checkers.container")

------
-- Chop - Removes string from left or right respective of given action
--- @module transformers.chop
local Chop = {}

function Chop.new()
   local self = {}
   
   self.container = Container.new()
  
   -----
   -- Remove the given prefix string
   -- @return string
   -- @error message   
   function self.chop_left(value, left)
      if (value == nil or value == '' or left == nil or left == '') then
        error("Given source value or left value is not a string") 
      end

      if (self.container.starts_with(value, left)) then
        return string.sub(value,string.len(left)+1,string.len(value))
      else
        error("Left value not found")
      end
   end

   -----
   -- Remove the given suffix string
   -- @return string
   -- @error message   
   function self.chop_right(value, right)
      if (value == nil or value == '' or right == nil or right == '') then
        error("Given source value or left value is not a string") 
      end

      if (self.container.ends_with(value, right)) then
        return string.sub(value,1,string.len(value) - string.len(right))

      else
        error("Right value not found")
      end
   end
   
   return self   
end

return Chop

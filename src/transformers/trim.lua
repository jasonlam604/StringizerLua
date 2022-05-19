------
-- Trim - Trim whitespace from both sides, left side or right side
--- @module transformers.chop
local Trim = {}

function Trim.new()
   local self = {}
  
   -----
   -- Remove whitespace left of string
   -- @return string 
   function self.left(value)
      return value:match'^%s*(.*)'
   end
   
   -----
   -- Remove whitespace right of string
   -- @return string 
   function self.right(value)
      local n = #value
      while n > 0 and value:find("^%s", n) do 
         n = n - 1 
      end
      return value:sub(1, n)
   end

   -----
   -- Remove whitespace both left and right of string
   -- @return string 
   function self.both(value)
      return value:match'^()%s*$' and '' or value:match'^%s*(.*%S)'
   end
     
   return self   
end

return Trim

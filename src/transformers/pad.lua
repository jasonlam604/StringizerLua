------
-- Pad - Add indicated string padding to value left, right or both sides
--- @module transformers.between
local Pad = {}

function Pad.new()
   local self = {}

   -----
   -- Left - Pad left of value the given char and given number of times
   -- @return string  
   function self.left(s, l, c)
     local res = string.rep(c or ' ', l - #s) .. s
     return res, res ~= s
   end

   -----
   -- Right - Pad right of value the given char and given number of times
   -- @return string  
   function self.right(s, l, c)
      local res = s .. string.rep(c or ' ', l - #s)
      return res, res ~= s
   end
  
   -----
   -- Both - Pad right & left of value the given char and given number of times
   -- @return string  
   function self.both(s, l, c)
      if( l > string.len(s)) then 
         c = c or ' '
         local pad_len = l - string.len(s)
         local target_len = pad_len / 2 
         local repeat_len = string.len(c)
         local repeat_times = math.ceil(target_len / repeat_len)
         local repeated_string = string.rep(c, math.max(0, repeat_times))
         local before = string.sub(repeated_string, 0, math.floor(target_len))
         local after = string.sub(repeated_string, 0, math.ceil(target_len))
         return before .. s .. after
      else
         return s   
      end
   end
   
   return self   
end

return Pad

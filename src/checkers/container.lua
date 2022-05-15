------
-- Container - checks if string contains/has a value with respect to the invoked rule
--- @module encoders.container
local Container = {}

function Container.new()
   local self = {}

   -----
   -- Checks if a string ends with the specified suffix.
   -- @return boolean
   -- @error message   
   function self.ends_with(value, needle, is_case_insensitive)
      if (value == nil or value == '' or needle == nil or needle == '') then
        return false
      end
      
      if(is_case_insensitive) then
         value = value:lower()
         needle = needle:lower()
      end
      
      return string.sub(value,string.len(value) - (string.len(needle)-1),string.len(value)) == needle
   end

   -----
   -- Checks if a string starts with the specified prefix.
   -- @return boolean
   -- @error message   
   function self.starts_with(value, needle, is_case_insensitive)
      if (value == nil or value == '' or needle == nil or needle == '') then
        return false
      end
      
      if(is_case_insensitive) then
         value = value:lower()
         needle = needle:lower()
      end

      return (string.sub(value,0,string.len(needle)) == needle)
   end
   
   return self   
end

return Container

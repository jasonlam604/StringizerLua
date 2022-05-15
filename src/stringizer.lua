-----
-- Modules
local Base64 = require ("encoders.base64")
local Container = require ("checkers.container")

------
-- Main Class Stringizer, function are chainable
local Stringizer = {
   -- Override __tostring
   -- @return  current string contain in self.value
   __tostring = function(self)
      return self.value or ""
   end
}

function Stringizer.new(value,is_strict)
   local self = setmetatable({}, Stringizer)
   
   if ( is_strict == true) then
     if (value == nil or value == '') then
        error("Given value is empty") 
     end
     
     if type(value) ~= 'string' then
        error("Given value not a string") 
     end
   end
   
   self.value = value
   self.value_original = value
  
   -----
   -- Getter
   -- @return return the current state of the value
   function self.get_value()
      return self.value
   end
   
   -----
   -- Getter
   -- @return original given string value
   function self.get_original_value()
      return self.value_original
   end
   
   -----
   -- Check if value is string
   -- @return boolean
   function self.is_string()
      if type(self.value) ~= 'string' then
         return false
      else
         return true
      end
   end
   
   -----
   --- Checks if value is blank / has whitespace
   -- @return boolean
   function self:is_blank()
      return self.value:match("^%s*$") ~= nil
   end
   
   -----
   -- Check if value is empty, where nil or string with 0 length is considered empty
   -- @return boolean
   function self.is_empty()
      if (self.value == nil or self.value == '')  then
         return true
      else
         return false
      end
   end
   
   -----
   -- Base64 Encode
   -- @return self
   function self.base64_encode()
      self.value = (Base64.new()).encode(self.value)
      return self
   end
   
   -----
   -- Base64 Decode
   -- @return self
   function self.base64_decode()
      self.value = (Base64.new()).decode(self.value)
      return self
   end
   
   -----
   -- Check if string Ends With given Suffix
   -- @return self
   function self.ends_with(suffix, is_case_insensitive)
   
      if(is_case_insensitive == nil) then
         is_case_insensitive = false
      end
   
      return (Container.new()).ends_with(self.value, suffix, is_case_insensitive)
   end
   
   -----
   -- Check if string Starts With given Suffix
   -- @return self
   function self.starts_with(suffix, is_case_insensitive)
   
      if(is_case_insensitive == nil) then
         is_case_insensitive = false
      end
   
      return (Container.new()).starts_with(self.value, suffix, is_case_insensitive)
   end
   
   return self   
end


return Stringizer




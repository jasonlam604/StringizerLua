-----
-- Modules
local Base64 = require ("encoders.base64")
local Container = require ("checkers.container")
local Between = require ("transformers.between")
local Chop = require ("transformers.chop")
local Parts = require ("transformers.parts")

------
-- Create the table for the class definition
local Stringizer = {
   -- Override __tostring
   -- @return  current string contain in self.value
   __tostring = function(self)
      return self.value or ""
   end
}

-- Define the new() function
Stringizer.new = function()
    local self = {}
    return self
end

------
-- Below are static functions

-----
-- Check if value is string
-- @return boolean
function Stringizer.is_string(value)
   if type(value) ~= 'string' then
      return false
   else
      return true
   end
end
   
-----
--- Checks if value is blank / has whitespace
-- @return boolean
function Stringizer.is_blank(value)
   return value:match("^%s*$") ~= nil
end
   
-----
-- Check if value is empty, where nil or string with 0 length is considered empty
-- @return boolean
function Stringizer.is_empty(value)
   if (value == nil or value == '')  then
     return true
   else
     return false
   end
end

-----
-- Check if string Ends With given Suffix
-- @return self
function Stringizer.ends_with(value, suffix, is_case_insensitive)
   if(is_case_insensitive == nil) then
      is_case_insensitive = false
   end
   return (Container.new()).ends_with(value, suffix, is_case_insensitive)
end
   
-----
-- Check if string Starts With given Suffix
-- @return self
function Stringizer.starts_with(value, suffix, is_case_insensitive)
   if(is_case_insensitive == nil) then
      is_case_insensitive = false
   end
   return (Container.new()).starts_with(value, suffix, is_case_insensitive)
end

-----
-- Extracts a string between left and right strings.
-- @return string
function Stringizer.between(value, left, right)
   return (Between.new()).between(value, left, right)
end

-----
-- Remove given prefix
-- @return string
function Stringizer.chop_left(value, prefix)
   return (Chop.new()).chop_left(value, prefix)
end
   
-----
-- Remove given suffix
-- @return string
function Stringizer.chop_right(value, suffix)
   return (Chop.new()).chop_right(value, suffix)
end

-----
-- Base64 Encode
-- @return self
function Stringizer.base64_encode(value)
   return (Base64.new()).encode(value)
end
   
-----
-- Base64 Decode
-- @return self
function Stringizer.base64_decode(value)
   return (Base64.new()).decode(value)
end

-----
-- Split string to a list
-- @return string
function Stringizer.split(value,delimiter)
  return (Parts.new()).split(value, delimiter)
end

return Stringizer

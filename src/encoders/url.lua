------
-- Url encoder and decoder
--- @module encoders.url
local Url = {}

function Url.new()
   local self = {}

   -----
   -- Encode given string 
   -- @return  encoded value
   function self.encode(value)      
      if (value) then
        value = string.gsub (value, "\n", "\r\n")
        value = string.gsub (value, "([^%w %-%_%.%~])",
            function (c) return string.format ("%%%02X", string.byte(c)) end)
        value = string.gsub (value, " ", "+")
      end
    return value 
   end
   
   -----
   -- Decode encoded string
   -- @return string
   function self.decode(value)
      value = string.gsub (value, "+", " ")
      value = string.gsub (value, "%%(%x%x)",
      function(h) return string.char(tonumber(h,16)) end)
      value = string.gsub (value, "\r\n", "\n")
      return value   
   end

   return self   
end

return Url

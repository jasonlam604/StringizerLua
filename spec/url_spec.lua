require "busted.runner"()

local Stringizer = require "stringizer"

describe("Stringizer", function()
  describe("Url Test", function()
    
    it("should encode !@#$%^&*()-=_+[]\\{}|;':\",./<>?`~", function()
       assert.equal(Stringizer.url_encode("!@#$%^&*()-=_+[]\\{}|;':\",./<>?`~"),"%21%40%23%24%25%5E%26%2A%28%29-%3D_%2B%5B%5D%5C%7B%7D%7C%3B%27%3A%22%2C.%2F%3C%3E%3F%60~")
    end)
    
    it("should decode %21%40%23%24%25%5E%26%2A%28%29-%3D_%2B%5B%5D%5C%7B%7D%7C%3B%27%3A%22%2C.%2F%3C%3E%3F%60~", function()
       assert.equal(Stringizer.url_decode("%21%40%23%24%25%5E%26%2A%28%29-%3D_%2B%5B%5D%5C%7B%7D%7C%3B%27%3A%22%2C.%2F%3C%3E%3F%60~"),"!@#$%^&*()-=_+[]\\{}|;':\",./<>?`~")
    end)
 
  end)
end)

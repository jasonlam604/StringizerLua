# StringizerLua

[![License](https://img.shields.io/github/license/jasonlam604/StringizerLua)](LICENSE.md)

Lua String Manipulation Library

---
Table of Contents
* [Overview](#overview)
* [Version](#version)
* [Installation](#installation)
* [Tests and Code Coverage](#tests-and-code-coverage)
* [License](#license)

---

## Overview

StringizerLua is a string library is general port of Stringizer for PHP, a utility string library for Lua

PSR Compliance and Code Quality:
* Follows [LuaRocks Style Guide](https://github.com/luarocks/lua-style-guide)
* [Semver](http://semver.org/) Versioning


### Version
Unstable in development as May 15th, 2022

Release 0.1.0

## Installation
// Coming soon using LuaRocks

## License
The StringizerLua is licensed under the MIT license

---

## Developer Guide

<table>
    <tr>
        <td><a href="#get-value">get_value</a></td>
        <td><a href="#get-original-value">get_orignal_value</a></td>
        <td><a href="#is-string">is_string</a></td>
        <td><a href="#is-empty">is_empty</a></td>
        <td><a href="#is-blank">is_blank</a></td>
        <td><a href="#base64-encode">base64_encode</a></td>
        <td><a href="#base64-decode">base64_decode</a></td>
        <td><a href="#between">between</a></td>
    </tr>
      <tr>
        <td><a href="#starts-with">starts_with</a></td>
        <td><a href="#ends-with">ends_with</a></td>
        <td><a href="#chop-left">chop-left</a></td>
        <td><a href="#chop-right">chop-right</a></td>
        <td><a href="#"></a></td>
        <td><a href="#"></a></td>
        <td><a href="#"></a></td>
        <td><a href="#b"></a></td>
    </tr>
</table>  

### Get Value
This retrieves string value in it's current state this would include any applied string manipulations

Usage
```
local stringizer = Stringizer.new("my-test-value") 
stringizer:get_value() 
```
Output
```
my-test-value
```
### Get Original Value
This retrieves the original given string value prior to any manipulation

Usage
```
local stringizer = Stringizer.new("my-test-value") 
stringizer:get_value() 
```
Output
```
my-test-value
```

### Is String
This retrieves the original given string value prior to any manipulation

Usage
```
local stringizer = Stringizer.new(42) 
stringizer:is_string()
```
Output
```
false
```

Usage
```
local stringizer = Stringizer.new("valid-string") 
stringizer:is_string()
```
Output
```
true
```

### Is Empty
Check is string empty including no whitespace

Usage (has whitespace)
```
local stringizer = Stringizer.new(" ") 
stringizer:is_empty()
```
Output
```
false
```

Usage (no whitespace)
```
local stringizer = Stringizer.new("") 
stringizer:is_empty()
```
Output
```
true
```

Usage (nil)
```
local stringizer = Stringizer.new(nil) 
stringizer:is_empty()
```
Output
```
true
```

### Is Blank
Check is string blank contains whitespace

Usage (has whitespace)
```
local stringizer = Stringizer.new(" ") 
stringizer:is_blank()
```
Output
```
true
```

Usage (has no whitespace)
```
local stringizer = Stringizer.new(" ") 
stringizer:is_blank()
```
Output
```
true
```

Usage (has as non whitespace characters)
```
local stringizer = Stringizer.new("test") 
stringizer:is_blank()
```
Output
```
false
```

### Base64 Encode
Base64 Encode given string

Usage (has whitespace)
```
local stringizer = Stringizer.new("ȘŦŗÍñĝìzĕŕ")
stringizer:base64_encode():get_value()
```
Output
```
yJjFpsWXw43DscSdw6x6xJXFld+T
```

### Base64 Decode
Base64 Decode given string

Usage (has whitespace)
```
local stringizer = Stringizer.new("yJjFpsWXw43DscSdw6x6xJXFld+T")
stringizer:base64_encode():get_value()
```
Output
```
ȘŦŗÍñĝìzĕŕ
```

### Between
Extracts the a string from a larger string where both left and right side are identified

Usage
```
local stringizer = Stringizer.new("<div>ȘŦŗÍñĝìzĕŕ</div>")   
stringizer.between("<div>","</div>")
```
Output
```
ȘŦŗÍñĝìzĕŕ
```

### Starts With
Checks if string begins with the supplied prefix

Usage
```
local stringizer = Stringizer.new("Fizz Buzz")   
stringizer.starts_with("Fizz")
```
Output
```
true
```

### Ends With
Checks if string ends with the supplied suffix

Usage
```
local stringizer = Stringizer.new("Fizz Buzz")   
stringizer.ends_with("Buzz")
```
Output
```
true
```

### Chop Left
Modify string by dropping off the supplied prefix

Usage
```
local stringizer = Stringizer.new("Fizz Buzz")   
stringizer.chop_left("Fizz ")
```
Output
```
Buzz
```

### Chop Right
Modify string by dropping off the supplied suffix

Usage
```
local stringizer = Stringizer.new("Fizz Buzz")   
stringizer.chop_left(" Buzz")
```
Output
```
Fizz
```

---

## Tests and Code Coverage

### Requirements

All tests are written using [busted](http://olivinelabs.com/busted/ "Busted home page").

Install `busted`:

	$ luarocks install busted

Run All Tests:

	$ busted --coverage ./spec

### Code Coverage

Code coverage is done using [luacov](http://luacov.luaforge.net/).

Install `luacov`:

	$ luarocks install luacov

Run All Tests and check code coverage:

	$ busted --coverage ./spec
	$ luacov luacov.stats.out
	$ cat luacov.report.out
    
You use the **run_coverage** bash script, friendly reminder you may need to make it executuable first
```
chomd +x run_coverage
```

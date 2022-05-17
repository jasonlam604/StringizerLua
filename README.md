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

## Change Log

- May 15, 2022 Initial Release 0.1.0
- May 16, 2002 Remove the use of instantiating Stringizer instead string manipulation is exposed via static functions only. Added **split**

## License
The StringizerLua is licensed under the MIT license

---

## Developer Guide

<table>
    <tr>
        <td><a href="#is-string">is_string</a></td>
        <td><a href="#is-empty">is_empty</a></td>
        <td><a href="#is-blank">is_blank</a></td>
        <td><a href="#base64-encode">base64_encode</a></td>
	<td><a href="#base64-decode">base64_decode</a></td>
    </tr>
    <tr>
	<td><a href="#between">between</a></td>      
        <td><a href="#starts-with">starts_with</a></td>
        <td><a href="#ends-with">ends_with</a></td>
        <td><a href="#chop-left">chop-left</a></td>
        <td><a href="#chop-right">chop-right</a></td>
    </tr>
    <tr>
	<td><a href="#split">split</a></td>      
        <td><a href="#"></a></td>
        <td><a href="#"></a></td>
        <td><a href="#"></a></td>
        <td><a href="#"></a></td>
    </tr>
</table>  

### Is String
This retrieves the original given string value prior to any manipulation

Usage
```
print(Stringizer.is_string(42))
```
Output
```
false
```

Usage
```
print(Stringizer.is_string("valid-string"))
```
Output
```
true
```

### Is Empty
Check is string empty including no whitespace

Usage (has whitespace)
```
print(Stringizer.is_empty(" "))
```
Output
```
false
```

Usage (no whitespace)
```
print(Stringizer.is_empty(""))
```
Output
```
true
```

Usage (nil)
```
print(Stringizer.is_empty(nil))
```
Output
```
true
```

### Is Blank
Check is string blank contains whitespace

Usage (has whitespace)
```
print(Stringizer.is_blank(" "))
```
Output
```
true
```

Usage (has no whitespace)
```
print(Stringizer.is_blank(" "))
```
Output
```
true
```

Usage (has as non whitespace characters)
```
print(Stringizer.is_blank("test"))
```
Output
```
false
```

### Base64 Encode
Base64 Encode given string

Usage (has whitespace)
```
print(Stringizer.base64_encode("ȘŦŗÍñĝìzĕŕ"))
```
Output
```
yJjFpsWXw43DscSdw6x6xJXFld+T
```

### Base64 Decode
Base64 Decode given string

Usage (has whitespace)
```
print(Stringizer.base64_decode("yJjFpsWXw43DscSdw6x6xJXFld+T"))
```
Output
```
ȘŦŗÍñĝìzĕŕ
```

### Between
Extracts the a string from a larger string where both left and right side are identified

Usage
``` 
print(Stringizer.between("<div>ȘŦŗÍñĝìzĕŕ</div>", "<div>","</div>"))
```
Output
```
ȘŦŗÍñĝìzĕŕ
```

### Starts With
Checks if string begins with the supplied prefix

Usage
```
print(Stringizer.starts_with("Fizz Buzz", "Fizz"))
```
Output
```
true
```

### Ends With
Checks if string ends with the supplied suffix

Usage
```
print(Stringizer.ends_with("Fizz Buzz", "Buzz"))
```
Output
```
true
```

### Chop Left
Modify string by dropping off the supplied prefix

Usage
```
print(Stringizer.chop_left("Fizz Buzz", "Fizz "))
```
Output
```
Buzz
```

### Chop Right
Modify string by dropping off the supplied suffix

Usage
```
print(Stringizer.chop_left("Fizz Buzz", " Buzz"))
```
Output
```
Fizz
```

### Split
Split string into a list of words, split based on the given delimiter

Usage
```
local values = Stringizer.split("Fizz:Buzz:stringizer",":")
```
values of type list will contain 3 values:  Fizz, Buzz, stringizer

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

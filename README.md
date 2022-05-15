# StringizerLua

[![License](http://img.shields.io/badge/License-MIT-brightgreen.svg)](LICENSE.md)

Lua String Manipulation Library

---

## Overview

StringizerLua is a string library is general port of Stringizer for PHP, a utility string library for Lua

PSR Compliance and Code Quality:
* Follows [LuaRocks Style Guide](https://github.com/luarocks/lua-style-guide)
* [Semver](http://semver.org/) Versioning


### Version
Unstable in development as May 15th, 2022

## Installation
Coming soon, to be release using LuaRocks

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

### Get Original Value

### Is String

### Is Empty

### Is Blank

### Base64 Encode

### Base64 Decode

### Between

### Starts With

### Ends With

### Chop Left

### Chop Right

---

## Tests and Code Coverage

### Requirements

All tests are written using [busted](http://olivinelabs.com/busted/ "Busted home page").

Install `busted`:

	$ luarocks install busted

Run All Tests:

	$ busted --coverage /spec

### Code Coverage

Code coverage is done using [luacov](http://luacov.luaforge.net/).

Install `luacov`:

	$ luarocks install luacov

Run All Tests and check code coverage:

	$ busted --coverage /spec
	$ luacov luacov.stats.out
	$ cat luacov.report.out
    
You use the **run_coverage** bash script, friendly reminder you may need to make it executuable first
```
chomd +x run_coverage
```

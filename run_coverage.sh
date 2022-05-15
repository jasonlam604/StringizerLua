#!/bin/sh

# See https://github.com/jasonlam604/StringizerLua for required software to run tests and test coverage
busted --coverage ./spec
luacov
cat luacov.report.out

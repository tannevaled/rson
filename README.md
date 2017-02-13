
Ruby Simple Object's Notation
=============================

[![Build Status](https://travis-ci.org/tannevaled/rson.svg?branch=master)](https://travis-ci.org/tannevaled/rson)
[![Gem Version](https://badge.fury.io/rb/rson.svg)](https://badge.fury.io/rb/rson)
[![Code Climate](https://codeclimate.com/github/tannevaled/rson/badges/gpa.svg)](https://codeclimate.com/github/tannevaled/rson)

  RSON convert a string representation of Ruby simple objects to Ruby objects.
  It does not use eval() but the parser gem to really parse strings.

## Supported Types :
  - Integer
  - Float
  - Symbol
  - String (multi-line)
  - Nil
  - TrueClass
  - FalseClass
  - Array
  - Hash

## Examples

### Loading from a string
```ruby
require 'rson'

buffer = %q({ a: 1, 2 => true, 'c' => :d })
Serializer::RSON.load(buffer:buffer) # => { a: 1, 2 => true, 'c' => :d }
```
### Loading from a file
```ruby
require 'rson'

Serializer::RSON.load(
  file_name:'config.rson',
  file_path:'/etc/some_application'
) # => { a: 1, 2 => true, 'c' => :d }
```

## Installation

```bash
gem install rson
```

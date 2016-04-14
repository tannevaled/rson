Ruby Simple Object's Notation
=============================

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
buffer = %q({ a: 1, 2 => true, 'c' => :d })
Serializer::RSON.load(buffer:buffer) # => { a: 1, 2 => true, 'c' => :d }
```
### Loading from a file
```ruby
Serializer::RSON.load(file_name:'config.rson', file_path:'/etc/some_application')
```

## Installation

```bash
gem install rson
```

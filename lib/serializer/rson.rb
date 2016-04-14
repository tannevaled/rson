require_relative 'rson/class'
require_relative 'rson/instance'

module Serializer
  class RSON
    extend  ::Serializer::RSON::Class
    include ::Serializer::RSON::Instance
  end
end

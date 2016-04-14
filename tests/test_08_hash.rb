module Tests
  class RSON
    def test_08_hash
      wanted_object = { a:1, b:2, c:3 }
      buffer = %Q{{ a:1, b:2, c:3 }}
      parsed_object = ::Serializer::RSON.load(buffer:buffer)
      ap wanted_object:wanted_object, parsed_object:parsed_object
      assert_equal(parsed_object,wanted_object)
    end
  end
end

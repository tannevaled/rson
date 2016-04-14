module Tests
  class RSON
    def test_04_false
      wanted_object = false
      buffer = 'false'
      parsed_object = ::Serializer::RSON.load(buffer:buffer)
      ap wanted_object:wanted_object, parsed_object:parsed_object
      assert_equal(parsed_object,wanted_object)
    end
  end
end

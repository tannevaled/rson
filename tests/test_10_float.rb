module Tests
  class RSON
    def test_10_float
      wanted_object = 0.10
      buffer = '0.10'
      parsed_object = ::Serializer::RSON.load(buffer:buffer)
      ap wanted_object:wanted_object, parsed_object:parsed_object
      assert_equal(parsed_object,wanted_object)
    end
  end
end

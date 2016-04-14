module Tests
  class RSON
    def test_03_true
      wanted_object = true
      buffer = 'true'
      parsed_object = ::Serializer::RSON.load(buffer:buffer)
      ap wanted_object:wanted_object, parsed_object:parsed_object
      assert_equal(parsed_object,wanted_object)
    end
  end
end

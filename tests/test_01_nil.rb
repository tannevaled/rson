module Tests
  class RSON
    def test_01_nil
      wanted_object = nil
      buffer = 'nil'
      parsed_object = ::Serializer::RSON.load(buffer:buffer)
      ap wanted_object:wanted_object, parsed_object:parsed_object
      assert_equal(parsed_object,wanted_object)
    end
  end
end

module Tests
  class RSON
    def test_02_symbol
      wanted_object = :symbol
      buffer = ':symbol'
      parsed_object = ::Serializer::RSON.load(buffer:buffer)
      ap wanted_object:wanted_object, parsed_object:parsed_object
      assert_equal(parsed_object,wanted_object)
    end
  end
end

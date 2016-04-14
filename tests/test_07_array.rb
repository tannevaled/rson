module Test
  class RSON
    def test_07_array
      wanted_object = [1,2,3]
      buffer = %Q{[ 1, 2, 3]}
      parsed_object = ::Serializer::RSON.load(buffer:buffer)
      ap wanted_object:wanted_object, parsed_object:parsed_object
      assert_equal(parsed_object,wanted_object)
    end
  end
end

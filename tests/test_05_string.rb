module Tests
  class RSON
    def test_05_string
      wanted_object = 'lorem ipsum'
      buffer = %Q{'lorem ipsum'}
      parsed_object = ::Serializer::RSON.load(buffer:buffer)
      ap wanted_object:wanted_object, parsed_object:parsed_object
      assert_equal(parsed_object,wanted_object)
    end
  end
end

module Tests
  class RSON
    def test_06_string_multiline
      wanted_object = "lorem\n ipsum"
      buffer = %Q{"lorem\n ipsum"}
      parsed_object = ::Serializer::RSON.load(buffer:buffer)
      ap wanted_object:wanted_object, parsed_object:parsed_object
      assert_equal(parsed_object,wanted_object)
    end
  end
end

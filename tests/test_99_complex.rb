module Tests
  class RSON
    def test_99_complex
      wanted_object = {
        a: [ 1, 2.2, :b ],
        b: %w[ aa bb ],
        c: %w[ cc ],
        d: nil,
        e: true,
        f: false,
        g: " a\nb \nc"
      }
      buffer = %Q{{
        a: [ 1, 2.2, :b ],
        b: %w[ aa bb ],
        c: %w[ cc ],
        d: nil,
        e: true,
        f: false,
        g: " a\nb \nc"
      }}
      parsed_object = ::Serializer::RSON.load(buffer:buffer)
      ap wanted_object:wanted_object, parsed_object:parsed_object
      assert_equal(parsed_object,wanted_object)
    end
  end
end

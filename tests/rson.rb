require 'awesome_print'

lib_path = File.expand_path(File.join(__dir__,'../lib'))
$LOAD_PATH.unshift lib_path unless $LOAD_PATH.include? lib_path

require 'serializer/rson'
require 'test/unit'

module Tests
  class RSON < Test::Unit::TestCase
    #self.test_order = :defined
    def setup
    end
  end
end

Dir.glob('tests/test_*').map{|file| require_relative File.basename(file,'.rb')}

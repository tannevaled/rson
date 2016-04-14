require 'parser/ruby23'

#############################################################################
#
#
#
#############################################################################
module Serializer
  ###########################################################################
  #
  #
  #
  ###########################################################################
  class RSON
    #########################################################################
    #
    #
    #
    #########################################################################
    module Instance
      #######################################################################
      #
      #
      #
      #######################################################################
      def initialize(buffer)
        @buffer = buffer
        @abstract_syntax_tree = Parser::Ruby23.parse(@buffer)
      end

      #######################################################################
      #
      #
      #
      #######################################################################
      def hydrate
        raise ArgumentError, {
          ast_class:@abstract_syntax_tree.class,
          ast:@abstract_syntax_tree
        } unless @abstract_syntax_tree.kind_of? Parser::AST::Node
        hydrate_abstract_syntax_tree(@abstract_syntax_tree)
      rescue Exception => e
        raise e
      end
    end
  end
end

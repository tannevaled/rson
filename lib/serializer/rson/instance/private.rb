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

      private

      #######################################################################
      #
      #
      #
      #######################################################################
      def hydrate_abstract_syntax_tree(abstract_syntax_tree)
        rb_object = case abstract_syntax_tree.type
        when :hash
          hydrate_hash(abstract_syntax_tree)
        when :array
          hydrate_array(abstract_syntax_tree)
        when :sym, :str, :int, :float
          hydrate_leaf(abstract_syntax_tree)
        when :dstr
          hydrate_dstr(abstract_syntax_tree)
        when :true
          true
        when :false
          false
        when :nil
          nil
        else
          raise Exception, abstract_syntax_tree
        end
      end

      #######################################################################
      #
      # hydrate_hash()
      # => Hash
      #
      #######################################################################
      def hydrate_hash(abstract_syntax_tree)
        rb_hash = Hash.new
        abstract_syntax_tree.children.each do |child|
          node_key, node_value = *child.to_a
          rb_hash.store(
            hydrate_abstract_syntax_tree(node_key),
            hydrate_abstract_syntax_tree(node_value)
          )
        end
        rb_hash
      end

      #######################################################################
      #
      #
      # => Array
      #
      #######################################################################
      def hydrate_array(abstract_syntax_tree)
        rb_array = Array.new
        abstract_syntax_tree.children.each do |child|
          rb_array.push(
            hydrate_abstract_syntax_tree(child)
          )
        end
        rb_array
      end

      #######################################################################
      #
      #
      #
      #######################################################################
      def hydrate_leaf(abstract_syntax_tree)
        abstract_syntax_tree.to_a.first
      end

      #######################################################################
      #
      #
      #
      #######################################################################
      def hydrate_dstr(abstract_syntax_tree)
        abstract_syntax_tree.children.map {|child| hydrate_leaf(child) }.join
      end

    end # module Instance
  end # class RSON
end # module Serializer

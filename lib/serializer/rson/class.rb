require 'classy_hash'
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
    module Class
      def load(params={})
        buffer = params.fetch(:buffer)
        if buffer.nil?
          file_path = params.fetch(:file_path)
          file_name = params.fetch(:file_name)
          file_path = File.join(
            File.expand_path(file_path),
            file_name
          )
          buffer = IO.read(file_path)
        end
        instance = new(buffer)
        instance.hydrate
      rescue Parser::SyntaxError => e
        puts 'in RSON file /etc/config.rson'
        puts file_path if buffer.nil?
        raise e
      end
    end
  end
end

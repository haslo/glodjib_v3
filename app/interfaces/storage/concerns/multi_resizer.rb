module Storage
  module Concerns
    module MultiResizer
      extend ActiveSupport::Concern
      included do

        def for_all_sizes(image)
          # TODO - GraphicsMagick, ready files
          yield nil
        end

      end
    end
  end
end

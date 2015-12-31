module Storage
  class AmazonInterface
    include ::Storage::Concerns::MultiResizer

    def initialize(image)
      @image = image
    end

    def store_data
      # TODO, with GraphicsMagick, what Amazon gem?
    end

    def retrieve_data
      # TODO, with GraphicsMagick, what Amazon gem?
    end

  end
end

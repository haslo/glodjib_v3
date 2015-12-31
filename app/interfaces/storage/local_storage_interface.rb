module Storage
  class LocalStorageInterface
    include ::Storage::Concerns::MultiResizer

    def initialize(image)
      @image = image
    end

    def store_data
      # TODO, with CarrierWave and GraphicsMagick
    end

    def retrieve_data
      # TODO, with CarrierWave and GraphicsMagick
    end

  end
end

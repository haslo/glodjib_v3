module V1
  class LocalStorageImageSize < ::V1::ImageSize

    mount_uploader :file, LocalStorageUploader

  end
end

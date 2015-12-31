module V1
  class AmazonImageSize < ::V1::ImageSize

    mount_uploader :file, AmazonUploader

  end
end

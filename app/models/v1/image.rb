module V1
  class Image < ActiveRecord::Base

    belongs_to :user, class_name: '::User'
    has_many :image_sizes, class_name: '::V1::ImageSize', dependent: :destroy

    def file=(file)
      image_size = LocalStorageImageSize.new(image: self, file: file)
      image_size.save!
      image = GraphicsMagick::Image.new(image_size.file.path)
      image_size.update_attribute(:longer_side, [image.width, image.height].max)
    end

  end
end

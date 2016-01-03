module V1
  class Image < ActiveRecord::Base

    belongs_to :user, class_name: '::User'
    has_many :image_sizes, class_name: '::V1::ImageSize', dependent: :destroy

    def file=(file)
      LocalStorageImageSize.new(image: self, file: file).save!
    end

  end
end

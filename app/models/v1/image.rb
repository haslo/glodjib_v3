module V1
  class Image < ActiveRecord::Base

    has_many :image_sizes, class_name: 'V1::ImageSize', dependent: :destroy

  end
end

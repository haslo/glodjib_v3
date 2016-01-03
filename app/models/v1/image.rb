module V1
  class Image < ActiveRecord::Base

    belongs_to :user, class_name: '::User'
    has_many :image_sizes, class_name: '::V1::ImageSize', dependent: :destroy

  end
end

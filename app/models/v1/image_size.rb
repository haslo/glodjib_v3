module V1
  class ImageSize < ActiveRecord::Base

    belongs_to :image, class_name: 'V1::Image'

  end
end

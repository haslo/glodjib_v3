class AmazonUploader < CarrierWave::Uploader::Base

  storage :file

  def store_dir
    raise 'TODO'
  end

end

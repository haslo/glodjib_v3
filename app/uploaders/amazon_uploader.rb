class AmazonUploader < CarrierWave::Uploader::Base

  storage :file

  def store_dir
    raise 'TODO'
  end

  def extension_white_list
    %w(jpg jpeg gif png)
  end

end

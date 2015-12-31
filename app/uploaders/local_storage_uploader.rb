class LocalStorageUploader < CarrierWave::Uploader::Base

  storage :file

  def store_dir
    "#{base_store_dir}/id_#{model.id}"
  end

  def extension_white_list
    %w(jpg jpeg gif png)
  end

  private

  def base_store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{File.join(model.id.to_s.chars.to_a.reverse)}"
  end

end

class PictureUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick

  if Rails.env.production?
    storage :fog
  else
    storage :file
  end

  def extension_whitelist
    %w(jpg jpeg gif png)
  end
end

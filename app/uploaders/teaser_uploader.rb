class TeaserUploader < CarrierWave::Uploader::Base
  storage :file
  
  def store_dir
    'teasers'
  end
  
  def extension_white_list
    %w(jpg gif png)
  end
  
end
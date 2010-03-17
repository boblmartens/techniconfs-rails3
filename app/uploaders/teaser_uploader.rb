class TeaserUploader < CarrierWave::Uploader.Base
  storage :file
  
  def store_dir
    'public/teasers'
  end
  
  def extension_white_list
    %w(jpg, gif, png)
  end
  
end
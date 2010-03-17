require 'chronic'
require 'carrierwave/orm/mongomapper'

class Conference
  include MongoMapper::Document
  
  before_save :run_chronic_on_dates
  mount_uploader :teaser, TeaserUploader

  key :key, String                  
  
  timestamps!
  
  # Validations :::::::::::::::::::::::::::::::::::::::::::::::::::::
  # validates_presence_of :attribute
 
  # Assocations :::::::::::::::::::::::::::::::::::::::::::::::::::::
  # belongs_to :model
  # many :model
  # one :model
  
  # Callbacks ::::::::::::::::::::::::::::::::::::::::::::::::::::::: 
  # before_craete :your_model_method
  # after_create :your_model_method
  # before_upate :your_model_method
  
  key :name, String
  key :homepage, String
  key :venue_name, String
  key :address, String
  key :start_date, String
  key :days, Integer
  key :price, Integer
  key :status, String
  key :teaser, String
  
  
  protected
  
  def run_chronic_on_dates
    self.start_date = Chronic.parse(self.start_date)
  end
  
  
end

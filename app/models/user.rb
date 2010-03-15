require 'chronic'

class User
  include MongoMapper::Document
  
  before_save :run_chronic_on_dates

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
  
  key :email, String
  key :homepage, String
  key :name, String
  key :birthday, String
  
  
  protected
  
  def run_chronic_on_dates
    self.birthday = Chronic.parse(self.birthday)
  end
  
  
end

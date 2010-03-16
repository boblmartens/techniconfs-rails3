require 'chronic'
require 'bcrypt'
require 'gravtastic'

class User
  include MongoMapper::Document
  include BCrypt
  include Gravtastic
  
  is_gravtastic!
  
  before_save :run_chronic_on_dates, :encrypt_password

  key :key, String                  
  
  timestamps!
  
  validates_presence_of :email
  validates_confirmation_of :password
  
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
  key :hashed_password, String
  
  attr_accessor :password
  
  def self.authenticated?(email, password)
    if @user = User.first(:email => email)
      if Password.new(@user.hashed_password) == password
        return @user
      else
        nil
      end
    else
      return nil
    end
  end
  
  protected
  
  def run_chronic_on_dates
    self.birthday = Chronic.parse(self.birthday)
  end
  
  def encrypt_password
    unless self.password.blank?
      self.hashed_password = Password.create(self.password.to_s)
      self.password = nil
    end
    return true
  end
  
end

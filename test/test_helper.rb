ENV["RAILS_ENV"] = "test"
require File.expand_path(File.dirname(__FILE__) + "/../config/environment")
require 'rails/test_help'
require 'shoulda'
require 'factory_girl'
require 'redgreen'

Factory.definition_file_paths = [ File.join(Rails.root, 'test', 'factories') ]
Factory.find_definitions

class ActiveSupport::TestCase
  # drop all collections after each test case
  def teardown
    MongoMapper.database.collections.each do |coll|
      coll.remove
    end
  end
  
  # make sure that each test case has a teardown method to clear the db after each test
  def inherited(base)
    base.define_method teardown do
      super
    end
  end
end

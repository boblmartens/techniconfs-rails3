# Edit this Gemfile to bundle your application's dependencies.
source 'http://gemcutter.org'

# gem "rails", "3.0.0.beta"
gem "mongo"
gem "mongo_ext"
gem "mongo_mapper"
gem "haml"
gem "rails3-generators"
gem "chronic"
gem "bcrypt-ruby"
gem "carrierwave", :git => "git://github.com/jnicklas/carrierwave.git"
gem "gravtastic"

## Bundle edge rails:
gem "rails", :git => "git://github.com/rails/rails.git"

# ActiveRecord requires a database adapter. By default,
# Rails has selected sqlite3.
# gem "sqlite3-ruby", :require => "sqlite3"

## Bundle the gems you use:
# gem "bj"
# gem "hpricot", "0.6"
# gem "sqlite3-ruby", :require => "sqlite3"
# gem "aws-s3", :require => "aws/s3"

## Bundle gems used only in certain environments:
# gem "rspec", :group => :test
group :test do
  gem 'factory_girl', :git => 'git://github.com/thoughtbot/factory_girl.git', :branch => 'rails3'
  # gem "shoulda", :git => 'git://github.com/thoughtbot/shoulda.git', :branch => 'rails3'
  gem 'mynyml-redgreen'
end

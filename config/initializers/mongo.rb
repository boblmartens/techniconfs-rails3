db_config = YAML::load(File.read(Rails.root + "config/database.yml"))
 
if db_config[Rails.env] && db_config[Rails.env]['adapter'] == 'mongodb'
  mongo = db_config[Rails.env]
  MongoMapper.connection = Mongo::Connection.new(mongo['hostname'], 28017)
  MongoMapper.database = mongo['database']
end

if defined?(PhusionPassenger)
  PhusionPassenger.on_event(:starting_working_process) do |forked|
    MongoMapper.connection.connect_to_master if forked
  end
end
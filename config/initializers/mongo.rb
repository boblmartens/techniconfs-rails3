MongoMapper.connection = Mongo::Connection.new('localhost', 27017)
MongoMapper.database = "techniconfs"

if defined?(PhusionPassenger)
  PhusionPassenger.on_event(:starting_working_process) do |forked|
    MongoMapper.connection.connect_to_master if forked
  end
end
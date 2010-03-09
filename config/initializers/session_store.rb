# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key    => '_techniconfs_session',
  :secret => 'b41fa7b40fd041f4a89305529547f5f5c5973c16f40d087c996ff5a8313b0f5eb31fe4f980981c51a0c9a73448bb90ad930ced5130af7057409bc61afae1f779'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store

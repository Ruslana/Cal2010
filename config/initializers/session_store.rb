# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_cal2010_session',
  :secret      => 'e1e6c2a5d72a15306f0cce5a969c4a4f781d0b61fd0a7aa336b91a4992b2020ef486a60d2695f97d8ec83abcc3d8a97adfe515da200ef050d1058687535f63a9'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store

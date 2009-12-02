# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_blogulator_session',
  :secret      => '0fbbb051b9c1e5933973a3855f5b9fcc1bee32ede43b5a3850e1c158fbbea616b5dff9bb25a0afcb2a9582f7b3bfd578d89c9324225a1c3dc78673f133be9ccd'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store

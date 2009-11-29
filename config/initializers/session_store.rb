# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_innboo_session',
  :secret      => '64348a1f165dadbb89474f1901a86ea34e3885bfd1bedff4b25ab263cddd15f1171acb25ea15ec6084431686c0f05c1ea0b25194a56e7b83d92b99fe28c2ac45'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store

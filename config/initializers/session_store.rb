# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_ecommerce_session',
  :secret      => '2e7a257d432c14304bfc71a21e1d9bd36995916147bc380f4c409f0868f1d880821d05fb3d2125510224cfac07f1d1dc2328d7e199c43a946426f2ce7a13b8af'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store

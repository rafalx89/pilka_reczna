# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_pilka_reczna_session',
  :secret      => '0390fa1360d69ca550c2429a4401ed887ef3e481069e7a2e9a12011b1159473e737042cdaa2b85548e16465efab1800e4f731f15f8db9b0c774298ed339daa77'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store

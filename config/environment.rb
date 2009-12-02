RAILS_GEM_VERSION = '2.3.5' unless defined? RAILS_GEM_VERSION

require File.join(File.dirname(__FILE__), 'boot')

Rails::Initializer.run do |config|
  config.gem 'clearance'
  config.gem 'inherited_resources'
  config.gem 'formtastic'
  config.gem 'title_estuary'
  config.gem 'subdomain-fu'
  config.time_zone = 'UTC'
end

DO_NOT_REPLY = "donotreply@blogulator.com"

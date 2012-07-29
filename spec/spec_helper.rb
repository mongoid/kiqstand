$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), "..", "lib"))

MODELS = File.join(File.dirname(__FILE__), "app/models")
$LOAD_PATH.unshift(MODELS)

require "kiqstand"
require "mongoid"
require "rspec"

Mongoid.configure do |config|
  config.connect_to("kiqstand_test")
  config.identity_map_enabled = true
end

RSpec.configure do |config|

  config.before(:each) do
    Mongoid::IdentityMap.clear
    Mongoid.purge!
  end
end

module Alphabeta
  class Engine < ::Rails::Engine
    isolate_namespace Alphabeta
    config.generators do |g|
      g.test_framework :rspec, :view_specs => false, :helper_specs => false
      g.integration_tool :rspec
    end
  end
end

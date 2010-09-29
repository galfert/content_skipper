module ContentSkipper
  require 'rails'

  class Railtie < Rails::Railtie
    initializer 'content_skipper.initialize' do
      ActiveSupport.on_load(:action_controller) do
        include ContentSkipper::ControllerMethods
      end
      ActiveSupport.on_load(:action_view) do
        include ContentSkipper::HelperMethods
      end
    end
  end
end
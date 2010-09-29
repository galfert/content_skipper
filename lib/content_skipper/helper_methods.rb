module ContentSkipper
  module HelperMethods
    extend ActiveSupport::Concern

    included do
      include ContentSkipper::CommonMethods
    end

    module InstanceMethods
      def skip_content?(name)
        return false unless skipped_content

        case skipped_content
        when Array
          skipped_content.include?(name.to_sym)
        else
          skipped_content == name.to_sym
        end
      end
    end
  end
end

ActiveSupport.on_load(:action_view) do
  include ContentSkipper::HelperMethods
end

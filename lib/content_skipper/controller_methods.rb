module ContentSkipper
  module ControllerMethods
    extend ActiveSupport::Concern

    included do
      include ContentSkipper::CommonMethods
    end

    module ClassMethods
      def skip_content(*args)
        options = args.extract_options!

        before_filter(options) do |controller|
          controller.skipped_content = args
        end
      end
    end

    module InstanceMethods
      def skip_content(content)
        self.skipped_content = content
      end
    end
  end
end

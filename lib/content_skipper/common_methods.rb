module ContentSkipper
  module CommonMethods
    def skipped_content
      @skipped_content
    end

    def skipped_content=(content)
      @skipped_content = case content
      when Array
        content.flatten.compact.map(&:to_sym).uniq
      else
        content.to_sym
      end
    end
  end
end

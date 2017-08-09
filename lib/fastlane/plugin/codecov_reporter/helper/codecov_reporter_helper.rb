module Fastlane
  module Helper
    class CodecovReporterHelper
      # class methods that you define here become available in your action
      # as `Helper::CodecovReporterHelper.your_method`
      #
      def self.show_message
        UI.message("Hello from the codecov_reporter plugin helper!")
      end
    end
  end
end

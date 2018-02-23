module Fastlane
  module Actions
    class CodecovReporterAction < Action
      def self.run(params)
        UI.message "I am Getting the latest bash script from Codecov.io"
        sh "curl -s -N https://Codecov.io/bash > #{ENV['PWD']}/codecov_reporter.sh"

        params[:token] ||= false

        if params[:token] != false
          UI.message "It looks like I'm working with a private repository"
          sh "bash #{ENV['PWD']}/codecov_reporter.sh -K -t #{params[:token]}"
        else
          UI.message "It looks like I'm working with a public repository"
          sh "bash #{ENV['PWD']}/codecov_reporter.sh -K "
        end

        UI.message "Removing the bash script I got from Codecov.io"
        sh "rm #{ENV['PWD']}/codecov_reporter.sh"
        UI.message "Removing the created coverage.txt files, if any."
        sh "rm -f *.coverage.txt"
        UI.message "All was well"
      end

      def self.description
        "Uploads coverage report to Codecov.io"
      end

      def self.authors
        ["BinaryBeard"]
      end

      def self.details
        # Optional:
        "Uploads coverage report, from a public or private repository, to Codecov.io"
      end

      def self.available_options
        [
          FastlaneCore::ConfigItem.new(key: :token,
                                       env_name: "CODECOV_TOKEN",
                                       description: "Codecov.io private repo token",
                                       is_string: true,
                                       default_value: false)
        ]
      end

      def self.is_supported?(platform)
        true
      end
    end
  end
end

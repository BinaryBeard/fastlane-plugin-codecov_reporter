describe Fastlane::Actions::CodecovReporterAction do
  describe '#run' do
    it 'prints a message' do
      expect(Fastlane::UI).to receive(:message).with("I am Getting the latest bash script from Codecov.io")
      expect(Fastlane::UI).to receive(:message).with("It looks like I'm working with a public repository")
      expect(Fastlane::UI).to receive(:message).with("Removing the bash script I got from Codecov.io")
      expect(Fastlane::UI).to receive(:message).with("Removing the created coverage.txt files")
      expect(Fastlane::UI).to receive(:message).with("All was well")

      Fastlane::Actions::CodecovReporterAction.run(nil)
    end
  end
end

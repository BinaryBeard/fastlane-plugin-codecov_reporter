describe Fastlane::Actions::CodecovReporterAction do
  describe '#run' do
    it 'prints all internal messages' do
      expect(Fastlane::UI).to receive(:message).with("I am Getting the latest bash script from Codecov.io")
      expect(Fastlane::UI).to receive(:message).with("It looks like I'm working with a public repository")
      expect(Fastlane::UI).to receive(:message).with("Removing the bash script I got from Codecov.io")
      expect(Fastlane::UI).to receive(:message).with("Removing the created coverage.txt files, if any.")
      expect(Fastlane::UI).to receive(:message).with("All was well")

      Fastlane::Actions::CodecovReporterAction.run({})
    end
  end
end

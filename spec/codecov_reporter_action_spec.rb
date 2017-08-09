describe Fastlane::Actions::CodecovReporterAction do
  describe '#run' do
    it 'prints a message' do
      expect(Fastlane::UI).to receive(:message).with("The codecov_reporter plugin is working!")

      Fastlane::Actions::CodecovReporterAction.run(nil)
    end
  end
end

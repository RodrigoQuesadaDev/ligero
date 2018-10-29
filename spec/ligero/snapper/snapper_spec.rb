# frozen_string_literal: true

include Ligero::Boundaries::Snapper

RSpec.describe Snapper do

  describe("#list") do
    it "list all snapshots for the configuration specified" do
      snapper = Snapper.new()
      snapperConfig = "exampleConfig"

      actualSnapshots = snapper.listSnapshotsFor(snapperConfig)

      expect(actualSnapshots).to_not be_nil
    end
  end
end
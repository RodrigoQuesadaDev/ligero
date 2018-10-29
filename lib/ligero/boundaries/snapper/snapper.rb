# frozen_string_literal: true

include Ligero::Common

module Ligero::Boundaries::Snapper
  class Snapper

    def listSnapshotsFor(configName)
      output, _ = ShellCommand.non_interactive_sudo('snapper', '-c', configName, 'ls')
      output.lines
    end
  end
end

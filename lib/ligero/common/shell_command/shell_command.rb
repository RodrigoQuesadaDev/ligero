# frozen_string_literal: true

require 'open3'

module Ligero::Common::ShellCommand

  def self.non_interactive_sudo(*args)
    Open3.capture2('sudo', '-n', *args)
  end
end

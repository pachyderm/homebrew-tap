require "formula"
require "language/go"
require 'erb'


class PachctlAT27 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.7.0-nightly.20230612"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.7.0-nightly.20230612/pachctl_2.7.0-nightly.20230612_darwin_amd64.zip"
    sha256 "99423de81ba8bfa376a347840a8d6c10787c0a3f5d29799161cbc4e9ced45b41"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.7.0-nightly.20230612/pachctl_2.7.0-nightly.20230612_darwin_arm64.zip"
    sha256 "7b63d2e914a5177617edcbc30e141a76f3d3e3c28ea8905f794e4ea98f847a57"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end

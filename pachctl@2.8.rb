require "formula"
require "language/go"
require 'erb'


class PachctlAT28 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.8.0-rc.4"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.8.0-rc.4/pachctl_2.8.0-rc.4_darwin_amd64.zip"
    sha256 "255606bbb412c9293de44a1800130200011656b12c4c9b0f46c342005d828a70"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.8.0-rc.4/pachctl_2.8.0-rc.4_darwin_arm64.zip"
    sha256 "5884cd5fadb2a2880c327e3c223fe5ee26763c1a789b955005b8fd1b2fbe93d5"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end

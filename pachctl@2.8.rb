require "formula"
require "language/go"
require 'erb'


class PachctlAT28 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.8.0-rc.1"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.8.0-rc.1/pachctl_2.8.0-rc.1_darwin_amd64.zip"
    sha256 "f02c3229abec26d44fd398edb407a5913c9327f3ee2eb35bff28f9cb0ae70cd0"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.8.0-rc.1/pachctl_2.8.0-rc.1_darwin_arm64.zip"
    sha256 "bf7aa4603c9eb7f201905f0748ec4261a45a5ee908dd9127452cd7e3db11604b"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end

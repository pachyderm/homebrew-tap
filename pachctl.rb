require "formula"
require "language/go"
require 'erb'


class PachctlAT26 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.6.9"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.6.9/pachctl_2.6.9_darwin_amd64.zip"
    sha256 "104021b7bcdfe10348d1775e052eada86cd5720c011768193641524fbc1b1ef1"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.6.9/pachctl_2.6.9_darwin_arm64.zip"
    sha256 "8bd234614bb0055004ed6c91458eea45e6283789a40a019d8cbe86a115823f4c"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end

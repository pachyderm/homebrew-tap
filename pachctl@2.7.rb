require "formula"
require "language/go"
require 'erb'


class PachctlAT27 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.7.0-alpha.5"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.7.0-alpha.5/pachctl_2.7.0-alpha.5_darwin_amd64.zip"
    sha256 "6fa06fcee673d058e4b60bbb79d12c81004cdd697fcc0b816678774a0f23b9f7"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.7.0-alpha.5/pachctl_2.7.0-alpha.5_darwin_arm64.zip"
    sha256 "305dafc1a29c9526f74931323cfe0b510de3614073f7d7ab3acbfb77fda39d13"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end

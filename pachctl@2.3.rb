require "formula"
require "language/go"
require 'erb'


class PachctlAT23 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.3.0-alpha.5"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.3.0-alpha.5/pachctl_2.3.0-alpha.5_darwin_amd64.zip"
    sha256 "ae9b1720691681faa6a1003b48b0fa4ba7fed5ba5f1e1ee679a8975ab2d3f5dc"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.3.0-alpha.5/pachctl_2.3.0-alpha.5_darwin_arm64.zip"
    sha256 "cdad0c7069d438bddf79f7e3e5a9409fed570dc9257dddd86dcdab567b79fc5c"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end

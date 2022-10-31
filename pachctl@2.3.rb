require "formula"
require "language/go"
require 'erb'


class PachctlAT23 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.3.8"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.3.8/pachctl_2.3.8_darwin_amd64.zip"
    sha256 "7e1c9ebda18b71fab837d13e3ffd9ba326934094a8e18229b68eb9b50013cd5c"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.3.8/pachctl_2.3.8_darwin_arm64.zip"
    sha256 "418771a3b51ad0ead638ad6355b11d128e2495999ba6211a38f8ceb9d8d29762"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end

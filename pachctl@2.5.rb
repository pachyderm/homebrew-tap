require "formula"
require "language/go"
require 'erb'


class PachctlAT25 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.5.0-alpha.2"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.5.0-alpha.2/pachctl_2.5.0-alpha.2_darwin_amd64.zip"
    sha256 "d94a9e0853bcf9f04054f0e5265f36b61a202e3408bcf3af714367d4610dc87f"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.5.0-alpha.2/pachctl_2.5.0-alpha.2_darwin_arm64.zip"
    sha256 "b877fa324841c2e7b3f77d562b9ec03b58795eaf5facc897f748597717893728"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end

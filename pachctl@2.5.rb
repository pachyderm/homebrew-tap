require "formula"
require "language/go"
require 'erb'


class PachctlAT25 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.5.0-nightly.20221130"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.5.0-nightly.20221130/pachctl_2.5.0-nightly.20221130_darwin_amd64.zip"
    sha256 "359c4ce9e6d8b9b2ea331b2490f05448bc56d38a4c70590432cbad69ffb05b3a"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.5.0-nightly.20221130/pachctl_2.5.0-nightly.20221130_darwin_arm64.zip"
    sha256 "a98d3ce91388363e91049cfc78e9f8ec374f6ad9462eef4cdad53439ba0e4b81"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end

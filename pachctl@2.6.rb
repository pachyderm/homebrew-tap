require "formula"
require "language/go"
require 'erb'


class PachctlAT26 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.6.0-nightly.20230510"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.6.0-nightly.20230510/pachctl_2.6.0-nightly.20230510_darwin_amd64.zip"
    sha256 "c17face6c176e038d1f01d2899834bc233f70249d4232cd0ec88197b6102cf76"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.6.0-nightly.20230510/pachctl_2.6.0-nightly.20230510_darwin_arm64.zip"
    sha256 "5de746ffdd42d3c8476bbac49aa56ce77ab61295cd92fcaf90f66bfa9008c357"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end

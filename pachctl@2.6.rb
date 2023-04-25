require "formula"
require "language/go"
require 'erb'


class PachctlAT26 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.6.0-nightly.20230425"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.6.0-nightly.20230425/pachctl_2.6.0-nightly.20230425_darwin_amd64.zip"
    sha256 "c12201b32da7122a7d56498e9718dad187d085e2ff022841d7415ad973282b8b"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.6.0-nightly.20230425/pachctl_2.6.0-nightly.20230425_darwin_arm64.zip"
    sha256 "34309a53b2d67872cb50c7b04df012bb4482279c8a9585f6a1976d036921b36c"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end

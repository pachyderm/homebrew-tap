require "formula"
require "language/go"
require 'erb'


class PachctlAT27 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.7.0-nightly.20230601"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.7.0-nightly.20230601/pachctl_2.7.0-nightly.20230601_darwin_amd64.zip"
    sha256 "dabd75600adb92e949d104da89e16addbc4ad756175e78b025904f08afa50116"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.7.0-nightly.20230601/pachctl_2.7.0-nightly.20230601_darwin_arm64.zip"
    sha256 "36f72bc48ccf7e6568bd8a62fee22ed84b94086ceba92dfe1dede8341daa892b"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end

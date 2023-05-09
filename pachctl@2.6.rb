require "formula"
require "language/go"
require 'erb'


class PachctlAT26 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.6.0-nightly.20230509"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.6.0-nightly.20230509/pachctl_2.6.0-nightly.20230509_darwin_amd64.zip"
    sha256 "ba41d2aec1e140a3db86f51acb7661982ccab3334fb7d9d7b56018735cc5d155"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.6.0-nightly.20230509/pachctl_2.6.0-nightly.20230509_darwin_arm64.zip"
    sha256 "f806188d6771eaada885fab8735285d645bc5aa7d70ff33c1d91f1518af53b2d"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end

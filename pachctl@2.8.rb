require "formula"
require "language/go"
require 'erb'


class PachctlAT28 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.8.0-nightly.20231120"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.8.0-nightly.20231120/pachctl_2.8.0-nightly.20231120_darwin_amd64.zip"
    sha256 "e7350e966bb0331c5c86d63c1849cddbf8b4e3f94ed8106a525a788595753432"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.8.0-nightly.20231120/pachctl_2.8.0-nightly.20231120_darwin_arm64.zip"
    sha256 "5e53816b0528dd22021ef2120e0d986cb572f5adbaa383cb0ca622ea1fd8a266"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end

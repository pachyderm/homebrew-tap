require "formula"
require "language/go"
require 'erb'


class Pachctl < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.8.3"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.8.3/pachctl_2.8.3_darwin_amd64.zip"
    sha256 "b490957688c2057e26cfa06c801bb4ea7aefe691143823987455b2f6a109011d"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.8.3/pachctl_2.8.3_darwin_arm64.zip"
    sha256 "4810770d94b4755e81ef9931450b3041f11e4a1fecc23c832647f9b7d20ba316"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end

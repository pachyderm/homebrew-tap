require "formula"
require "language/go"
require 'erb'


class PachctlAT23 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.3.6"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.3.6/pachctl_2.3.6_darwin_amd64.zip"
    sha256 "37df87792a9cf2992a128c066805ae41857bf3c89f754b6ab7eb94ba7fc90361"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.3.6/pachctl_2.3.6_darwin_arm64.zip"
    sha256 "2ab8d55fdc0a99c7a928a96998095d0d7f146bc2d19cf71b919ed58711cf3600"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end

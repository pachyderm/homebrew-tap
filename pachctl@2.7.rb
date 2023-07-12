require "formula"
require "language/go"
require 'erb'


class PachctlAT27 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.7.0-nightly.20230712"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.7.0-nightly.20230712/pachctl_2.7.0-nightly.20230712_darwin_amd64.zip"
    sha256 "0a955f6307a117ce7bbbad13ed0657eb33732fb03bec548ab0457becbd86ed5f"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.7.0-nightly.20230712/pachctl_2.7.0-nightly.20230712_darwin_arm64.zip"
    sha256 "bdc4f0eb1229eac257bbcf44858ed4b51772f791c4e1adfa20412769d8986e96"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end

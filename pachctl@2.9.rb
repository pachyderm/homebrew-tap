require "formula"
require "language/go"
require 'erb'


class PachctlAT29 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.9.0-nightly.20231207"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.9.0-nightly.20231207/pachctl_2.9.0-nightly.20231207_darwin_amd64.zip"
    sha256 "4f05199e987b8e36e59537aaa01d29b501d0d5c1b51ced07cf19d2814057d5ba"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.9.0-nightly.20231207/pachctl_2.9.0-nightly.20231207_darwin_arm64.zip"
    sha256 "0f37f93c5f8cb3794dc86387b7f19e8f66e2bab1ef28933234ff074bc17ad2c2"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end

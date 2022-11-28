require "formula"
require "language/go"
require 'erb'


class PachctlAT24 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.4.1"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.4.1/pachctl_2.4.1_darwin_amd64.zip"
    sha256 "b4336bb47a1bca85c52dbd38e985e178d6dddc87e531f6094df7a76a0ac732d4"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.4.1/pachctl_2.4.1_darwin_arm64.zip"
    sha256 "1fe21627fda2589dbfedf260570282087aa1a39d79dbcd17e567482b89b245d4"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end

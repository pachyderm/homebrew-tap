require "formula"
require "language/go"
require 'erb'


class PachctlAT27 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.7.0-nightly.20230608"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.7.0-nightly.20230608/pachctl_2.7.0-nightly.20230608_darwin_amd64.zip"
    sha256 "627b7f4bc45b2409598c40b917c35f6deaed7cf249f5c4e33ec88c58c1e1a43d"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.7.0-nightly.20230608/pachctl_2.7.0-nightly.20230608_darwin_arm64.zip"
    sha256 "af334c64d80aa92783d41ee5a7fb778091cecd240aa261048bd69e4c25b5bf22"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end

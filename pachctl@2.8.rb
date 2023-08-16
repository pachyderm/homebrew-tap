require "formula"
require "language/go"
require 'erb'


class PachctlAT28 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.8.0-nightly.20230816"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.8.0-nightly.20230816/pachctl_2.8.0-nightly.20230816_darwin_amd64.zip"
    sha256 "2fe0a197076d07d3665b7b9bf019db3113be93559fc756882722a3b7ca92581c"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.8.0-nightly.20230816/pachctl_2.8.0-nightly.20230816_darwin_arm64.zip"
    sha256 "7cbb7db12e6da9bf7a0ce0eead03ba9c94bece062a907e5763365718d58853fe"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end

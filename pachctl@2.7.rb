require "formula"
require "language/go"
require 'erb'


class PachctlAT27 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.7.0-nightly.20230525"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.7.0-nightly.20230525/pachctl_2.7.0-nightly.20230525_darwin_amd64.zip"
    sha256 "219934c71cfd6da15a210faa1ceb6f02fa6551075f1d831adbabeda6c35516db"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.7.0-nightly.20230525/pachctl_2.7.0-nightly.20230525_darwin_arm64.zip"
    sha256 "84da8b68ceb82fb450dddfb44eee2ffb0352db258fb581656d0d7e5f3bbf666e"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end

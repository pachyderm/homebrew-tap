require "formula"
require "language/go"
require 'erb'


class PachctlAT27 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.7.0-nightly.20230526"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.7.0-nightly.20230526/pachctl_2.7.0-nightly.20230526_darwin_amd64.zip"
    sha256 "e4bb87f040b2d4970ee36e6ad8796e9ba4e9fa1e8cf67e3389883d0a884ee9d8"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.7.0-nightly.20230526/pachctl_2.7.0-nightly.20230526_darwin_arm64.zip"
    sha256 "fbfb63e945ba8fc0feaa7062ba343f64711423307d914d406b680b6138277ffd"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end

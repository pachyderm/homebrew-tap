require "formula"
require "language/go"
require 'erb'


class PachctlAT27 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.7.7"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.7.7/pachctl_2.7.7_darwin_amd64.zip"
    sha256 "f701af34b3bba763333f7593296217c5b1119ea784463fc1c1a5c14925679f5d"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.7.7/pachctl_2.7.7_darwin_arm64.zip"
    sha256 "ff661472c4ff071b8611dadbd51804a3a6c9f1edc41831761638d8d64f03a920"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end

require "formula"
require "language/go"
require 'erb'


class PachctlAT22 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.2.7"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.2.7/pachctl_2.2.7_darwin_amd64.zip"
    sha256 "94a5dc052160b203589a2d22e3239b58c73c4692b8d854c60c46ef91ff960751"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.2.7/pachctl_2.2.7_darwin_amd64.zip"
    sha256 "94a5dc052160b203589a2d22e3239b58c73c4692b8d854c60c46ef91ff960751"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end

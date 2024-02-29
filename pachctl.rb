require "formula"
require "language/go"
require 'erb'


class Pachctl < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.9.1"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.9.1/pachctl_2.9.1_darwin_amd64.zip"
    sha256 "f3e7ae31921852843cbf1c5a07092443a8dc9df3a8b1abb7b2901a45690c863d"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.9.1/pachctl_2.9.1_darwin_arm64.zip"
    sha256 "dddb429b10d2a0cf63023a6f184c9f63dbd85b0a31d1bd38cc02f6e8854415b1"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end

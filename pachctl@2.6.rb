require "formula"
require "language/go"
require 'erb'


class PachctlAT26 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.6.0-rc.2"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.6.0-rc.2/pachctl_2.6.0-rc.2_darwin_amd64.zip"
    sha256 "d8af90cbd4bff0981db07930d811c4afb065875d8296f415becb9848206d1b63"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.6.0-rc.2/pachctl_2.6.0-rc.2_darwin_arm64.zip"
    sha256 "2339ce2679d225c9cd57291301694669f3d33ef1eef6dc753c5d64916681346f"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end

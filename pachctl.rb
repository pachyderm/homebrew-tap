require "formula"
require "language/go"
require 'erb'


class PachctlAT25 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.5.9"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.5.9/pachctl_2.5.9_darwin_amd64.zip"
    sha256 "443a734e0742a0c5f93a2d4657998f0d8f66ba5c7a2ee230381710b97b643994"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.5.9/pachctl_2.5.9_darwin_arm64.zip"
    sha256 "86573f5b6ef249996817897e4bde1cf22638da2445e05988f7a97e7cfd6c3c1e"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end

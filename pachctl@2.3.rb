require "formula"
require "language/go"
require 'erb'


class PachctlAT23 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.3.0-rc.3"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.3.0-rc.3/pachctl_2.3.0-rc.3_darwin_amd64.zip"
    sha256 "afd50eb10f8cc12ad351c51284a9b52f49be1c5deab05f282a50aae586b8321f"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.3.0-rc.3/pachctl_2.3.0-rc.3_darwin_arm64.zip"
    sha256 "39fb897b5cf9be2e53dda48530d1e896ec102b9fe36d45b108d6349698dd969c"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end

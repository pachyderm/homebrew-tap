require "formula"
require "language/go"
require 'erb'


class PachctlAT24 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.4.0-rc.3"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.4.0-rc.3/pachctl_2.4.0-rc.3_darwin_amd64.zip"
    sha256 "aa17779af1b709640d638bddacd7cab4f247dacdc72a86aac00183caa2791965"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.4.0-rc.3/pachctl_2.4.0-rc.3_darwin_arm64.zip"
    sha256 "bd2ac499e87513afbc12f737218c6c8e33ecf271b2b4c686c1e315eaf76eb4b9"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end

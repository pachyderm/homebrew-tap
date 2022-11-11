require "formula"
require "language/go"
require 'erb'


class PachctlAT24 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.4.0-rc.2"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.4.0-rc.2/pachctl_2.4.0-rc.2_darwin_amd64.zip"
    sha256 "79e636b763e1a1398ce5ff035718049faa9975fedb44083e49d52248a3a72a3d"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.4.0-rc.2/pachctl_2.4.0-rc.2_darwin_arm64.zip"
    sha256 "3d1bd56c177e4db8779feebbb65edb3841fb6130a75d98e876c1082f0e9ea372"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end

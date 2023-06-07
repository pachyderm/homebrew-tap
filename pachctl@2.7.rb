require "formula"
require "language/go"
require 'erb'


class PachctlAT27 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.7.0-nightly.20230607"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.7.0-nightly.20230607/pachctl_2.7.0-nightly.20230607_darwin_amd64.zip"
    sha256 "6f74c0dcbc7715e0a81a5e895fccc7de081e1071424799e1aba396e44b06a201"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.7.0-nightly.20230607/pachctl_2.7.0-nightly.20230607_darwin_arm64.zip"
    sha256 "40dc8aa039e45b2584583a92b92ed6db464804b28743322a524a72df521fea7d"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end

require "formula"
require "language/go"
require 'erb'


class PachctlAT23 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.3.0"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.3.0/pachctl_2.3.0_darwin_amd64.zip"
    sha256 "d5c5e59d17df84f8dfb4f88f8b18fb23266ad191583c5031392308572827041c"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.3.0/pachctl_2.3.0_darwin_arm64.zip"
    sha256 "1bfe88f76ae22b75ba7283adcd08da81f98072f3512404e762201ecca71891ab"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end

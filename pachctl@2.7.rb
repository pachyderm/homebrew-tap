require "formula"
require "language/go"
require 'erb'


class PachctlAT27 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.7.0-nightly.20230725"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.7.0-nightly.20230725/pachctl_2.7.0-nightly.20230725_darwin_amd64.zip"
    sha256 "dd8a8608c6246225cc805921d1b2712c806e5275e7bd9a936ee71bb59862c0cd"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.7.0-nightly.20230725/pachctl_2.7.0-nightly.20230725_darwin_arm64.zip"
    sha256 "0300437c7157faa4c99a3228835a50c58610d142ea891fc377edfd3646d0b131"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end

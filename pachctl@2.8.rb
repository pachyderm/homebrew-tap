require "formula"
require "language/go"
require 'erb'


class PachctlAT28 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.8.0-nightly.20230814"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.8.0-nightly.20230814/pachctl_2.8.0-nightly.20230814_darwin_amd64.zip"
    sha256 "5e9fc8b71947e22dc13ca5cf06c5af3804e300aeda2b84ce20be12999a2be64b"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.8.0-nightly.20230814/pachctl_2.8.0-nightly.20230814_darwin_arm64.zip"
    sha256 "c1f5419050eabdb1a59c379cc8a5944eb5e0b10a37da15d2359a2673a44e0d6f"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end

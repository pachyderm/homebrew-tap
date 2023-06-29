require "formula"
require "language/go"
require 'erb'


class PachctlAT27 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.7.0-nightly.20230629"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.7.0-nightly.20230629/pachctl_2.7.0-nightly.20230629_darwin_amd64.zip"
    sha256 "35445d502f64cac4a8a2bdcb49a17060930056533fc0ed6335ad4fbc9952800e"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.7.0-nightly.20230629/pachctl_2.7.0-nightly.20230629_darwin_arm64.zip"
    sha256 "f4390f5ffea18c1caf676f8a5440b4c8d48e16f4970453f37f1d52bd2404d72f"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end

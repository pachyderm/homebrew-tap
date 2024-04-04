require "formula"
require "language/go"
require "erb"

class PachctlAT25 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.5.9"

  on_macos do
    on_arm do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.5.9/pachctl_2.5.9_darwin_arm64.zip"
      sha256 "86573f5b6ef249996817897e4bde1cf22638da2445e05988f7a97e7cfd6c3c1e"
    end

    on_intel do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.5.9/pachctl_2.5.9_darwin_amd64.zip"
      sha256 "443a734e0742a0c5f93a2d4657998f0d8f66ba5c7a2ee230381710b97b643994"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.5.9/pachctl_2.5.9_linux_arm64.tar.gz"
      sha256 "6d9f9243f8a8a342aaa3f65bb91fbc6fb30a16f3f8d3ab48ee53ae29b2330ad9"
    end

    on_intel do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.5.9/pachctl_2.5.9_linux_amd64.tar.gz"
      sha256 "3d483f67eb3c8f30eafe16086f73e1a58eb2d8053682122bbd75815227fffaf5"
    end
  end

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end
end

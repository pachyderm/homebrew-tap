require "formula"
require "language/go"
require "erb"

class PachctlAT27 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.7.7"

  on_macos do
    on_arm do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.7.7/pachctl_2.7.7_darwin_arm64.zip"
      sha256 "ff661472c4ff071b8611dadbd51804a3a6c9f1edc41831761638d8d64f03a920"
    end

    on_intel do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.7.7/pachctl_2.7.7_darwin_amd64.zip"
      sha256 "f701af34b3bba763333f7593296217c5b1119ea784463fc1c1a5c14925679f5d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.7.7/pachctl_2.7.7_linux_arm64.tar.gz"
      sha256 "70d1191264124ff0d615813d58897de4a7b7efb8e5a3ce8c3b19c4300d4e862f"
    end

    on_intel do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.7.7/pachctl_2.7.7_linux_amd64.tar.gz"
      sha256 "5b721ba88e1fc88c777ce34d9efa936cabbc132c24f9c00bcebd741797aee233"
    end
  end

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end
end

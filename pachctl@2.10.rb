require "formula"
require "language/go"
require "erb"

class PachctlAT210 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.10.0-alpha.5"

  on_macos do
    on_arm do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.10.0-alpha.5/pachctl_2.10.0-alpha.5_darwin_arm64.zip"
      sha256 "2aca4af4d002cadeaf6e4e41c5153685f6e23f0efd07defed60cc71761ddf74d"
    end

    on_intel do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.10.0-alpha.5/pachctl_2.10.0-alpha.5_darwin_amd64.zip"
      sha256 "f392d98163600449f4bb7e0237c117e1cf891ec721525f6cf1bb2997d89d903e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.10.0-alpha.5/pachctl_2.10.0-alpha.5_linux_arm64.tar.gz"
      sha256 "bf2b73941fab5554c1dd9866a43ae2252c21cd62771a69cfe148a80f3282f74c"
    end

    on_intel do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.10.0-alpha.5/pachctl_2.10.0-alpha.5_linux_amd64.tar.gz"
      sha256 "0675a455dfa5de8cde5935b72d8ef299da3b3399774e7c92972561311a077ea6"
    end
  end

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end
end

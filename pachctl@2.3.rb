require "formula"
require "language/go"
require "erb"

class PachctlAT23 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.3.9"

  on_macos do
    on_arm do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.3.9/pachctl_2.3.9_darwin_arm64.zip"
      sha256 "53b49ebda9168249975f3a433d35dc5405372fdcb6ec738ab5e8d2a1f4122c99"
    end

    on_intel do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.3.9/pachctl_2.3.9_darwin_amd64.zip"
      sha256 "921e1ddd733b74cc354e5be7e83c4589af817ab66ccafbd64de8eb36f144523b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.3.9/pachctl_2.3.9_linux_arm64.tar.gz"
      sha256 "95cd7d7a6b8a28ed85f0ddf0c73a3e387189730680913dc23253f4c78d3e0072"
    end

    on_intel do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.3.9/pachctl_2.3.9_linux_amd64.tar.gz"
      sha256 "5a0a93667fbcbb0063f4cc769585c5a46600731427149b1d285351ffa6c4bb0d"
    end
  end

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end
end

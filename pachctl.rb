require "formula"
require "language/go"
require "erb"

class Pachctl < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.10.6"

  on_macos do
    on_arm do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.10.6/pachctl_2.10.6_darwin_arm64.zip"
      sha256 "a7c5a44c6c031ff717ac38429698444b493ac046372167191a8d8969c2e9bd80"
    end

    on_intel do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.10.6/pachctl_2.10.6_darwin_amd64.zip"
      sha256 "0602715c6f771387b131dbc97da21d4eb84330841392375b012a968d8b6ed0fb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.10.6/pachctl_2.10.6_linux_arm64.tar.gz"
      sha256 "7ddb18775d26c0301ef9c8a58b6256307ee28810b3e9395cea7e7d4f44b9a300"
    end

    on_intel do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.10.6/pachctl_2.10.6_linux_amd64.tar.gz"
      sha256 "e4f7166967d60f6c76f6d44624ca3b5c4eca4fa362ba0895b35c4bd4664d72ae"
    end
  end

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end
end

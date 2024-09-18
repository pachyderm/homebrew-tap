require "formula"
require "language/go"
require "erb"

class PachctlAT212 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.12.0-alpha.2"

  on_macos do
    on_arm do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.12.0-alpha.2/pachctl_2.12.0-alpha.2_darwin_arm64.zip"
      sha256 "d3870574674c75db539c69e5df66cb4714fdb2e9633f995008637e10c8e477fe"
    end

    on_intel do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.12.0-alpha.2/pachctl_2.12.0-alpha.2_darwin_amd64.zip"
      sha256 "412799ba09ac97ca1e0ed01f69daad967db7b88ec15cb83c52926f6ac9457e17"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.12.0-alpha.2/pachctl_2.12.0-alpha.2_linux_arm64.tar.gz"
      sha256 "2ebdbbb226ff2ea71f45a56abfa858ee547b2c06abfc10c9f151f807ffc8788d"
    end

    on_intel do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.12.0-alpha.2/pachctl_2.12.0-alpha.2_linux_amd64.tar.gz"
      sha256 "c08c908de9bdc789372a3ee0d40b7949d9c8a4a9bbe805d45ef8952264c882e0"
    end
  end

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end
end

require "formula"
require "language/go"
require "erb"

class PachctlAT212 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.12.2"

  on_macos do
    on_arm do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.12.2/pachctl_2.12.2_darwin_arm64.zip"
      sha256 "0dffb18266b8b570d948603ad07d2ef52d372f1938eb5157768a76f072853f61"
    end

    on_intel do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.12.2/pachctl_2.12.2_darwin_amd64.zip"
      sha256 "1b41cadd49f577bb401f0d9592247939702d28afbc733314ec06df1828db2892"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.12.2/pachctl_2.12.2_linux_arm64.tar.gz"
      sha256 "6c65703940d05be35561b9e007cfe8a01e26208f7d2a6c158695eb5a4a8e8615"
    end

    on_intel do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.12.2/pachctl_2.12.2_linux_amd64.tar.gz"
      sha256 "843a4e18288225e94f72531a7037dc00c178a2288a29798fefe9b8f03e686e22"
    end
  end

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end
end

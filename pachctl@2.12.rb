require "formula"
require "language/go"
require "erb"

class PachctlAT212 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.12.0-rc.1"

  on_macos do
    on_arm do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.12.0-rc.1/pachctl_2.12.0-rc.1_darwin_arm64.zip"
      sha256 "d0fc7a69df1d7a3f99fa6a1d00e02306d09a13cb6beb918beefd73cf5a87ff8e"
    end

    on_intel do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.12.0-rc.1/pachctl_2.12.0-rc.1_darwin_amd64.zip"
      sha256 "668158260c2c33a9d0f8079a5e4b40c8f5f38c0eeda79c06a963b4c18e73e4f4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.12.0-rc.1/pachctl_2.12.0-rc.1_linux_arm64.tar.gz"
      sha256 "bd422850269bfe08b6665c2d28682220e227ceb693c9db2ba0734423d9f3225c"
    end

    on_intel do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.12.0-rc.1/pachctl_2.12.0-rc.1_linux_amd64.tar.gz"
      sha256 "4c909c15007ca69edcdf21a64eeb8de3a399f4d53a7e9643ce52285a47e3536a"
    end
  end

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end
end

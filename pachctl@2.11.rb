require "formula"
require "language/go"
require "erb"

class PachctlAT211 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.11.0-alpha.6"

  on_macos do
    on_arm do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.11.0-alpha.6/pachctl_2.11.0-alpha.6_darwin_arm64.zip"
      sha256 "adc0c54f997c915fbaf33b5c4123fe842b1490919e628528c76bd9ff77b7c784"
    end

    on_intel do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.11.0-alpha.6/pachctl_2.11.0-alpha.6_darwin_amd64.zip"
      sha256 "8972143cee6a9bb686d354458981d16dca08de67924f3fb63ae1b27b3e9d1465"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.11.0-alpha.6/pachctl_2.11.0-alpha.6_linux_arm64.tar.gz"
      sha256 "6b210a6fe7dd3ed42c815141d07d37644d8d1501d531d0f854b0b993b4a4dfcf"
    end

    on_intel do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.11.0-alpha.6/pachctl_2.11.0-alpha.6_linux_amd64.tar.gz"
      sha256 "44b89d8a5e96585ee293c721a437af956518467b7fd9bf92c5985d0ef320687d"
    end
  end

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end
end

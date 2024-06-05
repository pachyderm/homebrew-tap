require "formula"
require "language/go"
require "erb"

class PachctlAT29 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.9.7"

  on_macos do
    on_arm do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.9.7/pachctl_2.9.7_darwin_arm64.zip"
      sha256 "3423d785a87300c515bac4e87d7b02194f292ad2659f4079b9ff1d1883bf976f"
    end

    on_intel do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.9.7/pachctl_2.9.7_darwin_amd64.zip"
      sha256 "161796d5edf3e1968c2b61accde41fc97a91288466c848e1c60ee5538837520c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.9.7/pachctl_2.9.7_linux_arm64.tar.gz"
      sha256 "5879423639f12e0b44e40ae5b5450b523c4381ecdf77d2f0c66e5c59bf99c739"
    end

    on_intel do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.9.7/pachctl_2.9.7_linux_amd64.tar.gz"
      sha256 "86becafbb962a2b8bf80cc9436884b5634a5e9b8e5a23b4db8711de74379c302"
    end
  end

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end
end

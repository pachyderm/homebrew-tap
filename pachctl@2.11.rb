require "formula"
require "language/go"
require "erb"

class PachctlAT211 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.11.0-rc.2"

  on_macos do
    on_arm do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.11.0-rc.2/pachctl_2.11.0-rc.2_darwin_arm64.zip"
      sha256 "6972e8011e15db6b930f12cd300dddc6c6fab0e2ef8eddb45591df5ae8688d99"
    end

    on_intel do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.11.0-rc.2/pachctl_2.11.0-rc.2_darwin_amd64.zip"
      sha256 "82c386a5d184001d5ca4f35f05252a2525677fefa281d77b58bd5b4a6bcf02f7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.11.0-rc.2/pachctl_2.11.0-rc.2_linux_arm64.tar.gz"
      sha256 "4198934f93f4bc8f77fec0c28eee0570204328f5fa34fcd9b28355d8350b2c3d"
    end

    on_intel do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.11.0-rc.2/pachctl_2.11.0-rc.2_linux_amd64.tar.gz"
      sha256 "75d15163c5ebf84725c51991f2612ee2cf921756f99baeb1d520e390ab757c66"
    end
  end

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end
end

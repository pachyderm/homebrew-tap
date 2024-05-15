require "formula"
require "language/go"
require "erb"

class Pachctl < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.10.0"

  on_macos do
    on_arm do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.10.0/pachctl_2.10.0_darwin_arm64.zip"
      sha256 "91fff4b08d05e5c144d35003df4875356f6804bc06d6cc8e23f221e13db17131"
    end

    on_intel do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.10.0/pachctl_2.10.0_darwin_amd64.zip"
      sha256 "88842b070e3883d7e11164855533f227f42da4339ca514d8baf515c9ff8d42bd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.10.0/pachctl_2.10.0_linux_arm64.tar.gz"
      sha256 "dfb0b3896b739ebd9caab3ab46c25b58c89779afa146f0830f1bdc27cbaf5fa1"
    end

    on_intel do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.10.0/pachctl_2.10.0_linux_amd64.tar.gz"
      sha256 "7d5c34f774eb9ce3d746f50eb2407b3d5126947312e449777c00a06dee1ef70c"
    end
  end

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end
end

require "formula"
require "language/go"
require "erb"

class PachctlAT27 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.7.8"

  on_macos do
    on_arm do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.7.8/pachctl_2.7.8_darwin_arm64.zip"
      sha256 "162d1e689d5a7f50fc93368c4125da09178d82c36b3b5bf7896eecc87a979c63"
    end

    on_intel do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.7.8/pachctl_2.7.8_darwin_amd64.zip"
      sha256 "26efeca26602d304d9a21107b0175d307cf2eee2d9193e78e7f4f55b8dcc800d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.7.8/pachctl_2.7.8_linux_arm64.tar.gz"
      sha256 "de2e061d345fb9d93de7650be02eaf2b9c7ab549b86bc6d7ca0a4c9ba671c66d"
    end

    on_intel do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.7.8/pachctl_2.7.8_linux_amd64.tar.gz"
      sha256 "3b36190f08a2cac6baadef87eb6a6507b313b283d06380e0edf6f73168834379"
    end
  end

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end
end

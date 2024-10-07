require "formula"
require "language/go"
require "erb"

class PachctlAT212 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.12.0-alpha.3"

  on_macos do
    on_arm do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.12.0-alpha.3/pachctl_2.12.0-alpha.3_darwin_arm64.zip"
      sha256 "4c1354d82d895f0a085cd4b770260271b22b8455c54d9fdb19febb487584404b"
    end

    on_intel do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.12.0-alpha.3/pachctl_2.12.0-alpha.3_darwin_amd64.zip"
      sha256 "0342ac099649eb9e6d2ab2b1ac2f9cb8394ecde40a72bcd255f03576f722b0bf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.12.0-alpha.3/pachctl_2.12.0-alpha.3_linux_arm64.tar.gz"
      sha256 "7e6c57c018a9fec3c744f234ce97cda97415657f5b9dbfa55eac507df2685708"
    end

    on_intel do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.12.0-alpha.3/pachctl_2.12.0-alpha.3_linux_amd64.tar.gz"
      sha256 "a4372556480e03a5a43748c4188d365bdb1496af76b1d0b1e429b7b65495cf62"
    end
  end

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end
end

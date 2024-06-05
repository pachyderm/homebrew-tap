require "formula"
require "language/go"
require "erb"

class Pachctl < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.10.2"

  on_macos do
    on_arm do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.10.2/pachctl_2.10.2_darwin_arm64.zip"
      sha256 "e41bf69bfd1812ca22e7a4201f2ad24bb4bf69bff5245a15c178312ec73d63f2"
    end

    on_intel do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.10.2/pachctl_2.10.2_darwin_amd64.zip"
      sha256 "6ad4c4bae4c7a48494047f0672de1e72d05f8d5efec2e7a59a78f599130fccbb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.10.2/pachctl_2.10.2_linux_arm64.tar.gz"
      sha256 "b13109a6f0538a49b3701ddd10709ec1c9aa7c57a91ac0b59b6abb4a64d1fbda"
    end

    on_intel do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.10.2/pachctl_2.10.2_linux_amd64.tar.gz"
      sha256 "7ddfa145b167b59d7b9b677a59af45ab3d5bc89394e37f047198de5156707170"
    end
  end

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end
end

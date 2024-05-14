require "formula"
require "language/go"
require "erb"

class Pachctl < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.9.6"

  on_macos do
    on_arm do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.9.6/pachctl_2.9.6_darwin_arm64.zip"
      sha256 "b611ddf3784051444ea8c6e600e547b2d6006c7f612717671d6fc64fd6a5e420"
    end

    on_intel do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.9.6/pachctl_2.9.6_darwin_amd64.zip"
      sha256 "8fb87c292cb7022816030c56dd38bbfbe535c12a1604d227187147625cb9e7a8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.9.6/pachctl_2.9.6_linux_arm64.tar.gz"
      sha256 "55cb2402a9bce07613154961208d3c561f25315f428f292497632b7324784a53"
    end

    on_intel do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.9.6/pachctl_2.9.6_linux_amd64.tar.gz"
      sha256 "0d08efca9ce017f8c67152a322059ee713c57471070751340faa5a0baa64b585"
    end
  end

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end
end

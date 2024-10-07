require "formula"
require "language/go"
require "erb"

class Pachctl < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.11.4"

  on_macos do
    on_arm do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.11.4/pachctl_2.11.4_darwin_arm64.zip"
      sha256 "1860506caa6cf7fe334a0c8ee4398937a033fb38e9b39f7d0826862497286c99"
    end

    on_intel do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.11.4/pachctl_2.11.4_darwin_amd64.zip"
      sha256 "8ab375116ffbbee9f9c5425ed782b5a144f852f677bb185f504b64f5f5bf3431"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.11.4/pachctl_2.11.4_linux_arm64.tar.gz"
      sha256 "db464deedf1ce379b322ff01ff3d257f7d22041460213566f757cc7a1e1893ac"
    end

    on_intel do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.11.4/pachctl_2.11.4_linux_amd64.tar.gz"
      sha256 "be710c44cceec44e7560729c71d6e804db28642df166e5c4c039403f8648674b"
    end
  end

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end
end

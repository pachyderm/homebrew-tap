require "formula"
require "language/go"
require "erb"

class PachctlAT111 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v1.11.9"

  on_macos do
    url "https://github.com/pachyderm/pachyderm/releases/download/v1.11.9/pachctl_1.11.9_darwin_amd64.zip"
    sha256 "5b9ac2e7c57c53823e3343a3e486d95afc56c35df2a3169307845a658c6d53da"
  end

  on_linux do
    url "https://github.com/pachyderm/pachyderm/releases/download/v1.11.9/pachctl_1.11.9_linux_amd64.tar.gz"
    sha256 "19b95f34deccc3efb1dc9d84631b829203f3d012db114bea0ceaa8f33d2a70dc"
  end

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end
end

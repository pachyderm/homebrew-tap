require "formula"
require "language/go"
require "erb"

class PachctlAT16 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v1.6.10"

  on_macos do
    url "https://github.com/pachyderm/pachyderm/releases/download/v1.6.10/pachctl_1.6.10_darwin_amd64.zip"
    sha256 "38a329c1266a4d23a9a5efbbc53aabff3e889efed1e1037569b0e31486499648"
  end

  on_linux do
    url "https://github.com/pachyderm/pachyderm/releases/download/v1.6.10/pachctl_1.6.10_linux_amd64.tar.gz"
    sha256 "4c356f8b01e4b0d577e84c72dced9daed3e09380f64121302e0a9c6453fe88e9"
  end

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end
end

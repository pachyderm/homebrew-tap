require "formula"
require "language/go"
require 'erb'


class PachctlAT25 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.5.0-alpha.1"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.5.0-alpha.1/pachctl_2.5.0-alpha.1_darwin_amd64.zip"
    sha256 "3372429d09576f69685c70d8ecefdb32c058b76ebd1254430703460760a31f24"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.5.0-alpha.1/pachctl_2.5.0-alpha.1_darwin_arm64.zip"
    sha256 "b12afac2152064bc978efd02c2a646104a4ccef83c712e1aad5e4b8f442defba"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end

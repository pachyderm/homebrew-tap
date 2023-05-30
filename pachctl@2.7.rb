require "formula"
require "language/go"
require 'erb'


class PachctlAT27 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.7.0-nightly.20230530"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.7.0-nightly.20230530/pachctl_2.7.0-nightly.20230530_darwin_amd64.zip"
    sha256 "48a28ea2cdb64cd754bd012573cb657bd51d36d93b0fb5dcc848d2f743654171"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.7.0-nightly.20230530/pachctl_2.7.0-nightly.20230530_darwin_arm64.zip"
    sha256 "38b4d43e0374c2b9fa8dca4fe69d5e20817c3af862b924f95c30a229aaa82ff4"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end

require "formula"
require "language/go"
require 'erb'


class PachctlAT25 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.5.0-nightly.20221129"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.5.0-nightly.20221129/pachctl_2.5.0-nightly.20221129_darwin_amd64.zip"
    sha256 "aecf9dd97ed6be1059df15feaace4aa5ce36355d458edefa7224e1f15a793f37"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.5.0-nightly.20221129/pachctl_2.5.0-nightly.20221129_darwin_arm64.zip"
    sha256 "92746cdd32fd50ca5685cbeb25f817db2c3a3baddb7e9b199fd956115b459a04"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end

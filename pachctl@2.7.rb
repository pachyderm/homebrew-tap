require "formula"
require "language/go"
require 'erb'


class PachctlAT27 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.7.0-nightly.20230606"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.7.0-nightly.20230606/pachctl_2.7.0-nightly.20230606_darwin_amd64.zip"
    sha256 "20860afa96562c21f3008f4d6db9f03cdd187b1e90ba70630e10c7a59d4ddbdc"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.7.0-nightly.20230606/pachctl_2.7.0-nightly.20230606_darwin_arm64.zip"
    sha256 "539dffee2cab4ab38e18cd1ff1b071918708152d6d32b11d93df18c2ffc1ae54"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
